@interface DiskImageCreatorFromFolder
+ (BOOL)allowParallelModeWithURL:(id)l outMode:(BOOL *)mode error:(id *)error;
- (BOOL)compactAndEjectWithCreateParams:(id)params error:(id *)error;
- (BOOL)createImageWithSrcFolder:(id)folder progress:(id)progress createParams:(id)params convertParams:(id *)convertParams error:(id *)error;
- (BOOL)resizeDataPartitionWithError:(id *)error;
- (BOOL)updatePartitionMapWithError:(id *)error;
- (DiskImageCreatorFromFolder)initWithURL:(id)l error:(id *)error;
- (id)createImageWithSrcFolder:(id)folder completionBlock:(id)block;
- (void)updateNumBlocksWithCopier:(id)copier;
@end

@implementation DiskImageCreatorFromFolder

- (DiskImageCreatorFromFolder)initWithURL:(id)l error:(id *)error
{
  v5.receiver = self;
  v5.super_class = DiskImageCreatorFromFolder;
  return [(BaseDiskImageCreator *)&v5 initWithURL:l defaultFormat:4 error:error];
}

- (void)updateNumBlocksWithCopier:(id)copier
{
  copierCopy = copier;
  v5 = 0xA00000 / [(BaseDiskImageCreator *)self blockSize];
  v6 = vcvtpd_u64_f64(4096.0 / [(BaseDiskImageCreator *)self blockSize]);
  blockSize = [(BaseDiskImageCreator *)self blockSize];
  v8 = 0x80000000 / [(BaseDiskImageCreator *)self blockSize];
  folderSize = [copierCopy folderSize];
  v10 = folderSize / [(BaseDiskImageCreator *)self blockSize];
  numFiles = [copierCopy numFiles];

  v12 = vcvtpd_u64_f64((v10 + numFiles * v6) * 1.1) + v5;
  if (v12 >= v8)
  {
    v13 = v12 + 0xC800000 / blockSize;
  }

  else
  {
    v13 = v12;
  }

  [(BaseDiskImageCreator *)self setNumBlocks:v13];
}

- (BOOL)updatePartitionMapWithError:(id *)error
{
  v4 = [(BaseDiskImageCreator *)self newMKDIDeviceWithError:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 updatePartitionMapWithError:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)resizeDataPartitionWithError:(id *)error
{
  v5 = [(BaseDiskImageCreator *)self newMKDIDeviceWithError:?];
  if (v5)
  {
    dataPartition = [(BaseDiskImageCreator *)self dataPartition];
    ioMediaUUID = [dataPartition ioMediaUUID];
    dataPartition2 = [(BaseDiskImageCreator *)self dataPartition];
    v9 = [v5 resizeDataPartitionWithPartitionUUID:ioMediaUUID partitionNumBlocks:objc_msgSend(dataPartition2 error:{"numBlocks"), error}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)compactAndEjectWithCreateParams:(id)params error:(id *)error
{
  paramsCopy = params;
  dataPartition = [(BaseDiskImageCreator *)self dataPartition];
  numBlocks = [dataPartition numBlocks];

  numBlocks2 = [(BaseDiskImageCreator *)self numBlocks];
  dataPartition2 = [(BaseDiskImageCreator *)self dataPartition];
  v11 = [dataPartition2 resizeFileSystemToMinimumWithError:error];

  if (!v11)
  {
    goto LABEL_7;
  }

  dataPartition3 = [(BaseDiskImageCreator *)self dataPartition];
  numBlocks3 = [dataPartition3 numBlocks];

  if (numBlocks == numBlocks3 || -[DiskImageCreatorFromFolder resizeDataPartitionWithError:](self, "resizeDataPartitionWithError:", error) && (v15 = numBlocks2 - numBlocks, -[BaseDiskImageCreator dataPartition](self, "dataPartition"), v16 = objc_claimAutoreleasedReturnValue(), -[BaseDiskImageCreator setNumBlocks:](self, "setNumBlocks:", v15 + [v16 numBlocks]), v16, objc_msgSend(paramsCopy, "resizeWithNumBlocks:error:", -[BaseDiskImageCreator numBlocks](self, "numBlocks"), error)) && (-[BaseDiskImageCreator setNumBlocks:](self, "setNumBlocks:", objc_msgSend(paramsCopy, "numBlocks")), -[DiskImageCreatorFromFolder updatePartitionMapWithError:](self, "updatePartitionMapWithError:", error)))
  {
    v14 = [(BaseDiskImageCreator *)self ejectWithError:error];
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  return v14;
}

+ (BOOL)allowParallelModeWithURL:(id)l outMode:(BOOL *)mode error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  lCopy = l;
  LOBYTE(v8) = 1;
  *mode = 1;
  if ([lCopy isFileURL])
  {
    memset(&v33, 0, 512);
    if (statfs([lCopy fileSystemRepresentation], &v33) < 0)
    {
      v8 = *__error();
      v18 = MEMORY[0x277CCACA8];
      path = [lCopy path];
      v12 = [v18 stringWithFormat:@"Failed to access folder: %@", path];
      LOBYTE(v8) = [DIError failWithPOSIXCode:v8 verboseInfo:v12 error:error];
    }

    else
    {
      v9 = [DIHelpers copyDevicePathWithStatfs:&v33];
      path = v9;
      if ((v33.f_flags & 0x1000) == 0 || ![v9 hasPrefix:@"/dev/disk"])
      {
        goto LABEL_25;
      }

      v11 = [[DIIOMedia alloc] initWithDevName:path error:error];
      v12 = v11;
      if (v11)
      {
        v13 = [(DIIOMedia *)v11 copyBlockDeviceWithError:error];
        v8 = v13;
        if (v13)
        {
          v14 = [v13 copyRootBlockDeviceWithError:error];

          if (v14)
          {
            v15 = *__error();
            if (DIForwardLogs())
            {
              v16 = getDIOSLog();
              os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
              [lCopy path];
              *buf = 68158466;
              v26 = 69;
              v27 = 2080;
              v28 = "+[DiskImageCreatorFromFolder allowParallelModeWithURL:outMode:error:]";
              v30 = v29 = 2112;
              v31 = 2112;
              v32 = v14;
              v17 = _os_log_send_and_compose_impl();

              if (v17)
              {
                fprintf(*MEMORY[0x277D85DF8], "%s\n", v17);
                free(v17);
              }
            }

            else
            {
              v19 = getDIOSLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                path2 = [lCopy path];
                *buf = 68158466;
                v26 = 69;
                v27 = 2080;
                v28 = "+[DiskImageCreatorFromFolder allowParallelModeWithURL:outMode:error:]";
                v29 = 2112;
                v30 = path2;
                v31 = 2112;
                v32 = v14;
                _os_log_impl(&dword_248DE0000, v19, OS_LOG_TYPE_DEFAULT, "%.*s: Block device class for %@: %@", buf, 0x26u);
              }
            }

            *__error() = v15;
            if (([v14 diskImageDevice] & 1) == 0)
            {
              mediumType = [v14 mediumType];
              v22 = mediumType;
              if (mediumType)
              {
                LOBYTE(mediumType) = [mediumType isEqual:@"Solid State"];
              }

              *mode = mediumType;
            }

            LOBYTE(v8) = 1;
          }

          else
          {
            LOBYTE(v8) = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

LABEL_25:
  }

  v23 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)createImageWithSrcFolder:(id)folder completionBlock:(id)block
{
  folderCopy = folder;
  blockCopy = block;
  v8 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:100];
  v9 = dispatch_queue_create("DiskImageCreatorFromFolder", 0);
  volumeName = [(BaseDiskImageCreator *)self volumeName];

  if (!volumeName)
  {
    lastPathComponent = [folderCopy lastPathComponent];
    [(BaseDiskImageCreator *)self setVolumeName:lastPathComponent];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__DiskImageCreatorFromFolder_createImageWithSrcFolder_completionBlock___block_invoke;
  v19[3] = &unk_278F812E0;
  v19[4] = self;
  v23 = blockCopy;
  v12 = v9;
  v20 = v12;
  v21 = folderCopy;
  v13 = v8;
  v22 = v13;
  v14 = folderCopy;
  v15 = blockCopy;
  v16 = MEMORY[0x24C1EE2F0](v19);
  if (hasTTY())
  {
    v16[2](v16);
  }

  else
  {
    dispatch_async(v12, v16);
  }

  v17 = v13;

  return v13;
}

void __71__DiskImageCreatorFromFolder_createImageWithSrcFolder_completionBlock___block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  v2 = *(a1 + 32);
  obj = 0;
  v3 = [v2 createEmptyImageWithError:&obj];
  objc_storeStrong(&v18, obj);
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__DiskImageCreatorFromFolder_createImageWithSrcFolder_completionBlock___block_invoke_13;
    block[3] = &unk_278F812B8;
    v4 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = v3;
    v11 = &v13;
    v10 = *(a1 + 64);
    dispatch_async(v4, block);
  }

  else
  {
    v5 = v14[5];
    (*(*(a1 + 64) + 16))();
  }

  _Block_object_dispose(&v13, 8);
}

void __71__DiskImageCreatorFromFolder_createImageWithSrcFolder_completionBlock___block_invoke_13(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 72) + 8);
  v14 = *(v6 + 40);
  v15 = 0;
  v7 = [v2 createImageWithSrcFolder:v3 progress:v4 createParams:v5 convertParams:&v15 error:&v14];
  v8 = v15;
  objc_storeStrong((v6 + 40), v14);
  if (v7 && v8)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__DiskImageCreatorFromFolder_createImageWithSrcFolder_completionBlock___block_invoke_2;
    v11[3] = &unk_278F81290;
    v11[4] = *(a1 + 32);
    v12 = *(a1 + 48);
    v13 = *(a1 + 64);
    v9 = [DiskImages2 convertWithParams:v8 completionBlock:v11];
    [*(a1 + 48) addChild:v9 withPendingUnitCount:20];
  }

  else
  {
    [*(a1 + 48) setCompletedUnitCount:100];
    v10 = *(*(*(a1 + 72) + 8) + 40);
    (*(*(a1 + 64) + 16))();
  }
}

void __71__DiskImageCreatorFromFolder_createImageWithSrcFolder_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a2;
    v5 = *__error();
    if (DIForwardLogs())
    {
      v6 = getDIOSLog();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      v7 = [*(a1 + 32) URL];
      [v7 path];
      *buf = 68158211;
      v18 = 84;
      v19 = 2080;
      v20 = "[DiskImageCreatorFromFolder createImageWithSrcFolder:completionBlock:]_block_invoke_2";
      v22 = v21 = 2113;
      v8 = _os_log_send_and_compose_impl();

      if (v8)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v8);
        free(v8);
      }
    }

    else
    {
      v11 = getDIOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 32) URL];
        v13 = [v12 path];
        *buf = 68158211;
        v18 = 84;
        v19 = 2080;
        v20 = "[DiskImageCreatorFromFolder createImageWithSrcFolder:completionBlock:]_block_invoke";
        v21 = 2113;
        v22 = v13;
        _os_log_impl(&dword_248DE0000, v11, OS_LOG_TYPE_DEFAULT, "%.*s: Convert in place failed, erasing %{private}@", buf, 0x1Cu);
      }
    }

    *__error() = v5;
    v14 = [MEMORY[0x277CCAA00] defaultManager];
    v15 = [*(a1 + 32) URL];
    [v14 removeItemAtURL:v15 error:0];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = 0;
    [v9 setCompletedUnitCount:100];
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), a2);

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)createImageWithSrcFolder:(id)folder progress:(id)progress createParams:(id)params convertParams:(id *)convertParams error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  progressCopy = progress;
  paramsCopy = params;
  v46 = 1;
  v45 = 1;
  if ([DiskImageCreatorFromFolder allowParallelModeWithURL:folderCopy outMode:&v46 error:error])
  {
    v15 = [(BaseDiskImageCreator *)self URL];
    isFileURL = [v15 isFileURL];

    if (!isFileURL || (-[BaseDiskImageCreator URL](self, "URL"), v17 = objc_claimAutoreleasedReturnValue(), [v17 URLByDeletingLastPathComponent], v18 = objc_claimAutoreleasedReturnValue(), v19 = +[DiskImageCreatorFromFolder allowParallelModeWithURL:outMode:error:](DiskImageCreatorFromFolder, "allowParallelModeWithURL:outMode:error:", v18, &v45, error), v18, v17, v19))
    {
      v20 = *__error();
      if (DIForwardLogs())
      {
        v21 = getDIOSLog();
        os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        *buf = 68158466;
        v48 = 97;
        v49 = 2080;
        v50 = "[DiskImageCreatorFromFolder createImageWithSrcFolder:progress:createParams:convertParams:error:]";
        v51 = 1024;
        v52 = v46;
        v53 = 1024;
        v54 = v45;
        LODWORD(v41) = 30;
        v40 = buf;
        v22 = _os_log_send_and_compose_impl();

        if (v22)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v22);
          free(v22);
        }
      }

      else
      {
        v24 = getDIOSLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68158466;
          v48 = 97;
          v49 = 2080;
          v50 = "[DiskImageCreatorFromFolder createImageWithSrcFolder:progress:createParams:convertParams:error:]";
          v51 = 1024;
          v52 = v46;
          v53 = 1024;
          v54 = v45;
          _os_log_impl(&dword_248DE0000, v24, OS_LOG_TYPE_DEFAULT, "%.*s: Allow parallel copy: Source=%d, Target=%d", buf, 0x1Eu);
        }
      }

      *__error() = v20;
      imageFormat = [(BaseDiskImageCreator *)self imageFormat];
      if ((imageFormat - 3) > 5)
      {
        v26 = 100;
      }

      else
      {
        v26 = qword_248FA7570[imageFormat - 3];
      }

      v27 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:100 parent:progressCopy pendingUnitCount:{v26, v40, v41}];
      v28 = [FastFolderCopierWrapper alloc];
      v29 = [(FastFolderCopierWrapper *)v28 initWithSrcFolder:folderCopy parallelMode:v46 & v45 & 1 progress:v27];
      v30 = v29;
      if (v29)
      {
        if ([(FastFolderCopierWrapper *)v29 traverseSrcFolderWithError:error])
        {
          [(DiskImageCreatorFromFolder *)self updateNumBlocksWithCopier:v30];
          if ([paramsCopy resizeWithNumBlocks:-[BaseDiskImageCreator numBlocks](self error:{"numBlocks"), error}])
          {
            v43 = [(BaseDiskImageCreator *)self formatImageWithCreateParams:paramsCopy error:error];
            if (v43)
            {
              v31 = [DIDiskArb diskArbWithError:error];
              v44 = v31;
              if (!v31)
              {
                v33 = 0;
                goto LABEL_33;
              }

              if ([v31 waitForDAIdleWithError:error])
              {
                dataPartition = [(BaseDiskImageCreator *)self dataPartition];
                v42 = [dataPartition newMountVolumeWithDiskArb:v44 error:error];

                v33 = v42;
                if (v42)
                {
                  if (![v30 copyWithDstFolder:v42 error:error])
                  {

                    [v44 unmountWithMountPoint:v42 error:0];
                    goto LABEL_34;
                  }

                  if ([v44 unmountWithMountPoint:v42 error:error] && -[DiskImageCreatorFromFolder compactAndEjectWithCreateParams:error:](self, "compactAndEjectWithCreateParams:error:", paramsCopy, error))
                  {
                    imageFormat2 = [(BaseDiskImageCreator *)self imageFormat];
                    if ((imageFormat2 - 3) >= 4 && imageFormat2 != 8)
                    {
                      v36 = 0;
LABEL_44:
                      v23 = 1;
                      goto LABEL_37;
                    }

                    v35 = [[DIConvertParams alloc] initForInplaceWithExistingParams:paramsCopy error:error];
                    if (v35)
                    {
                      v36 = v35;
                      [v35 setOutputFormat:-[BaseDiskImageCreator imageFormat](self, "imageFormat")];
                      if (convertParams)
                      {
                        v37 = v36;
                        *convertParams = v36;
                      }

                      goto LABEL_44;
                    }
                  }

                  v33 = v42;
                }

LABEL_33:

LABEL_34:
                [paramsCopy onErrorCleanup];
                v23 = 0;
                v36 = v44;
LABEL_38:

                v27 = v33;
                v30 = v36;
                goto LABEL_39;
              }

              v42 = 0;
            }

            else
            {
              v42 = 0;
              v44 = 0;
            }

            v36 = 0;
            v23 = 0;
LABEL_37:

            v33 = v44;
            v30 = v42;
            goto LABEL_38;
          }
        }

        v23 = 0;
      }

      else
      {
        v23 = [DIError failWithEnumValue:154 verboseInfo:@"Failed to initialize folder copier" error:error];
      }

LABEL_39:

      goto LABEL_40;
    }
  }

  v23 = 0;
LABEL_40:

  v38 = *MEMORY[0x277D85DE8];
  return v23;
}

@end