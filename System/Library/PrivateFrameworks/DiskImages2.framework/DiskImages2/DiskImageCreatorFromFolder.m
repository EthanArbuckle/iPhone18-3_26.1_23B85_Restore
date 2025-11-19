@interface DiskImageCreatorFromFolder
+ (BOOL)allowParallelModeWithURL:(id)a3 outMode:(BOOL *)a4 error:(id *)a5;
- (BOOL)compactAndEjectWithCreateParams:(id)a3 error:(id *)a4;
- (BOOL)createImageWithSrcFolder:(id)a3 progress:(id)a4 createParams:(id)a5 convertParams:(id *)a6 error:(id *)a7;
- (BOOL)resizeDataPartitionWithError:(id *)a3;
- (BOOL)updatePartitionMapWithError:(id *)a3;
- (DiskImageCreatorFromFolder)initWithURL:(id)a3 error:(id *)a4;
- (id)createImageWithSrcFolder:(id)a3 completionBlock:(id)a4;
- (void)updateNumBlocksWithCopier:(id)a3;
@end

@implementation DiskImageCreatorFromFolder

- (DiskImageCreatorFromFolder)initWithURL:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = DiskImageCreatorFromFolder;
  return [(BaseDiskImageCreator *)&v5 initWithURL:a3 defaultFormat:4 error:a4];
}

- (void)updateNumBlocksWithCopier:(id)a3
{
  v4 = a3;
  v5 = 0xA00000 / [(BaseDiskImageCreator *)self blockSize];
  v6 = vcvtpd_u64_f64(4096.0 / [(BaseDiskImageCreator *)self blockSize]);
  v7 = [(BaseDiskImageCreator *)self blockSize];
  v8 = 0x80000000 / [(BaseDiskImageCreator *)self blockSize];
  v9 = [v4 folderSize];
  v10 = v9 / [(BaseDiskImageCreator *)self blockSize];
  v11 = [v4 numFiles];

  v12 = vcvtpd_u64_f64((v10 + v11 * v6) * 1.1) + v5;
  if (v12 >= v8)
  {
    v13 = v12 + 0xC800000 / v7;
  }

  else
  {
    v13 = v12;
  }

  [(BaseDiskImageCreator *)self setNumBlocks:v13];
}

- (BOOL)updatePartitionMapWithError:(id *)a3
{
  v4 = [(BaseDiskImageCreator *)self newMKDIDeviceWithError:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 updatePartitionMapWithError:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)resizeDataPartitionWithError:(id *)a3
{
  v5 = [(BaseDiskImageCreator *)self newMKDIDeviceWithError:?];
  if (v5)
  {
    v6 = [(BaseDiskImageCreator *)self dataPartition];
    v7 = [v6 ioMediaUUID];
    v8 = [(BaseDiskImageCreator *)self dataPartition];
    v9 = [v5 resizeDataPartitionWithPartitionUUID:v7 partitionNumBlocks:objc_msgSend(v8 error:{"numBlocks"), a3}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)compactAndEjectWithCreateParams:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(BaseDiskImageCreator *)self dataPartition];
  v8 = [v7 numBlocks];

  v9 = [(BaseDiskImageCreator *)self numBlocks];
  v10 = [(BaseDiskImageCreator *)self dataPartition];
  v11 = [v10 resizeFileSystemToMinimumWithError:a4];

  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = [(BaseDiskImageCreator *)self dataPartition];
  v13 = [v12 numBlocks];

  if (v8 == v13 || -[DiskImageCreatorFromFolder resizeDataPartitionWithError:](self, "resizeDataPartitionWithError:", a4) && (v15 = v9 - v8, -[BaseDiskImageCreator dataPartition](self, "dataPartition"), v16 = objc_claimAutoreleasedReturnValue(), -[BaseDiskImageCreator setNumBlocks:](self, "setNumBlocks:", v15 + [v16 numBlocks]), v16, objc_msgSend(v6, "resizeWithNumBlocks:error:", -[BaseDiskImageCreator numBlocks](self, "numBlocks"), a4)) && (-[BaseDiskImageCreator setNumBlocks:](self, "setNumBlocks:", objc_msgSend(v6, "numBlocks")), -[DiskImageCreatorFromFolder updatePartitionMapWithError:](self, "updatePartitionMapWithError:", a4)))
  {
    v14 = [(BaseDiskImageCreator *)self ejectWithError:a4];
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  return v14;
}

+ (BOOL)allowParallelModeWithURL:(id)a3 outMode:(BOOL *)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  LOBYTE(v8) = 1;
  *a4 = 1;
  if ([v7 isFileURL])
  {
    memset(&v33, 0, 512);
    if (statfs([v7 fileSystemRepresentation], &v33) < 0)
    {
      v8 = *__error();
      v18 = MEMORY[0x277CCACA8];
      v10 = [v7 path];
      v12 = [v18 stringWithFormat:@"Failed to access folder: %@", v10];
      LOBYTE(v8) = [DIError failWithPOSIXCode:v8 verboseInfo:v12 error:a5];
    }

    else
    {
      v9 = [DIHelpers copyDevicePathWithStatfs:&v33];
      v10 = v9;
      if ((v33.f_flags & 0x1000) == 0 || ![v9 hasPrefix:@"/dev/disk"])
      {
        goto LABEL_25;
      }

      v11 = [[DIIOMedia alloc] initWithDevName:v10 error:a5];
      v12 = v11;
      if (v11)
      {
        v13 = [(DIIOMedia *)v11 copyBlockDeviceWithError:a5];
        v8 = v13;
        if (v13)
        {
          v14 = [v13 copyRootBlockDeviceWithError:a5];

          if (v14)
          {
            v15 = *__error();
            if (DIForwardLogs())
            {
              v16 = getDIOSLog();
              os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
              [v7 path];
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
                v20 = [v7 path];
                *buf = 68158466;
                v26 = 69;
                v27 = 2080;
                v28 = "+[DiskImageCreatorFromFolder allowParallelModeWithURL:outMode:error:]";
                v29 = 2112;
                v30 = v20;
                v31 = 2112;
                v32 = v14;
                _os_log_impl(&dword_248DE0000, v19, OS_LOG_TYPE_DEFAULT, "%.*s: Block device class for %@: %@", buf, 0x26u);
              }
            }

            *__error() = v15;
            if (([v14 diskImageDevice] & 1) == 0)
            {
              v21 = [v14 mediumType];
              v22 = v21;
              if (v21)
              {
                LOBYTE(v21) = [v21 isEqual:@"Solid State"];
              }

              *a4 = v21;
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

- (id)createImageWithSrcFolder:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:100];
  v9 = dispatch_queue_create("DiskImageCreatorFromFolder", 0);
  v10 = [(BaseDiskImageCreator *)self volumeName];

  if (!v10)
  {
    v11 = [v6 lastPathComponent];
    [(BaseDiskImageCreator *)self setVolumeName:v11];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__DiskImageCreatorFromFolder_createImageWithSrcFolder_completionBlock___block_invoke;
  v19[3] = &unk_278F812E0;
  v19[4] = self;
  v23 = v7;
  v12 = v9;
  v20 = v12;
  v21 = v6;
  v13 = v8;
  v22 = v13;
  v14 = v6;
  v15 = v7;
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

- (BOOL)createImageWithSrcFolder:(id)a3 progress:(id)a4 createParams:(id)a5 convertParams:(id *)a6 error:(id *)a7
{
  v55 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v46 = 1;
  v45 = 1;
  if ([DiskImageCreatorFromFolder allowParallelModeWithURL:v12 outMode:&v46 error:a7])
  {
    v15 = [(BaseDiskImageCreator *)self URL];
    v16 = [v15 isFileURL];

    if (!v16 || (-[BaseDiskImageCreator URL](self, "URL"), v17 = objc_claimAutoreleasedReturnValue(), [v17 URLByDeletingLastPathComponent], v18 = objc_claimAutoreleasedReturnValue(), v19 = +[DiskImageCreatorFromFolder allowParallelModeWithURL:outMode:error:](DiskImageCreatorFromFolder, "allowParallelModeWithURL:outMode:error:", v18, &v45, a7), v18, v17, v19))
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
      v25 = [(BaseDiskImageCreator *)self imageFormat];
      if ((v25 - 3) > 5)
      {
        v26 = 100;
      }

      else
      {
        v26 = qword_248FA7570[v25 - 3];
      }

      v27 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:100 parent:v13 pendingUnitCount:{v26, v40, v41}];
      v28 = [FastFolderCopierWrapper alloc];
      v29 = [(FastFolderCopierWrapper *)v28 initWithSrcFolder:v12 parallelMode:v46 & v45 & 1 progress:v27];
      v30 = v29;
      if (v29)
      {
        if ([(FastFolderCopierWrapper *)v29 traverseSrcFolderWithError:a7])
        {
          [(DiskImageCreatorFromFolder *)self updateNumBlocksWithCopier:v30];
          if ([v14 resizeWithNumBlocks:-[BaseDiskImageCreator numBlocks](self error:{"numBlocks"), a7}])
          {
            v43 = [(BaseDiskImageCreator *)self formatImageWithCreateParams:v14 error:a7];
            if (v43)
            {
              v31 = [DIDiskArb diskArbWithError:a7];
              v44 = v31;
              if (!v31)
              {
                v33 = 0;
                goto LABEL_33;
              }

              if ([v31 waitForDAIdleWithError:a7])
              {
                v32 = [(BaseDiskImageCreator *)self dataPartition];
                v42 = [v32 newMountVolumeWithDiskArb:v44 error:a7];

                v33 = v42;
                if (v42)
                {
                  if (![v30 copyWithDstFolder:v42 error:a7])
                  {

                    [v44 unmountWithMountPoint:v42 error:0];
                    goto LABEL_34;
                  }

                  if ([v44 unmountWithMountPoint:v42 error:a7] && -[DiskImageCreatorFromFolder compactAndEjectWithCreateParams:error:](self, "compactAndEjectWithCreateParams:error:", v14, a7))
                  {
                    v34 = [(BaseDiskImageCreator *)self imageFormat];
                    if ((v34 - 3) >= 4 && v34 != 8)
                    {
                      v36 = 0;
LABEL_44:
                      v23 = 1;
                      goto LABEL_37;
                    }

                    v35 = [[DIConvertParams alloc] initForInplaceWithExistingParams:v14 error:a7];
                    if (v35)
                    {
                      v36 = v35;
                      [v35 setOutputFormat:-[BaseDiskImageCreator imageFormat](self, "imageFormat")];
                      if (a6)
                      {
                        v37 = v36;
                        *a6 = v36;
                      }

                      goto LABEL_44;
                    }
                  }

                  v33 = v42;
                }

LABEL_33:

LABEL_34:
                [v14 onErrorCleanup];
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
        v23 = [DIError failWithEnumValue:154 verboseInfo:@"Failed to initialize folder copier" error:a7];
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