@interface LabPepperFile
- (LabPepperFile)initWithLabPepperURL:(id)a3;
- (id)nextEntry;
- (void)nextEntry;
@end

@implementation LabPepperFile

- (LabPepperFile)initWithLabPepperURL:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = LabPepperFile;
  v5 = [(LabPepperFile *)&v20 init];
  if (v5)
  {
    v6 = [v4 copy];
    url = v5->_url;
    v5->_url = v6;

    v8 = MTLoggingContinuousRecordingFilterManager();
    log = v5->_log;
    v5->_log = v8;

    v19 = 0;
    v10 = [NSFileHandle fileHandleForReadingFromURL:v4 error:&v19];
    v11 = v19;
    if (v11)
    {
      v12 = v11;
      v13 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v14 = [v10 readDataOfLength:2];
    if ([v14 length] == 2)
    {
      v5->_lpVersion = *[v14 bytes];
      v5->_fileOffset = 2;
      v18 = 0;
      v15 = [v10 closeAndReturnError:&v18];
      v12 = v18;
      if (v15)
      {
        v13 = v5;
LABEL_13:

        goto LABEL_14;
      }

      v16 = [(LabPepperFile *)v5 log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [LabPepperFile initWithLabPepperURL:];
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = 0;
    goto LABEL_13;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)nextEntry
{
  v3 = [(LabPepperFile *)self url];
  v23 = 0;
  v4 = [NSFileHandle fileHandleForReadingFromURL:v3 error:&v23];
  v5 = v23;

  if (v4)
  {
    v22 = 0;
    v6 = [v4 seekToOffset:-[LabPepperFile fileOffset](self error:{"fileOffset"), &v22}];
    v7 = v22;

    if (v6)
    {
      v8 = [v4 readDataOfLength:4];
      if ([v8 length]== 4)
      {
        v9 = v8;
        v10 = [v8 bytes];
        v11 = *v10;
        v12 = v10[1];
        [(LabPepperFile *)self setFileOffset:[(LabPepperFile *)self fileOffset]+ 4];
        [v4 seekToFileOffset:{-[LabPepperFile fileOffset](self, "fileOffset")}];
        v13 = [v4 readDataOfLength:v12];
        if ([v13 length] == v12)
        {
          v14 = [[LabPepperEntry alloc] initWithLPDataSource:v11 data:v13];
          [(LabPepperFile *)self setFileOffset:&v12[[(LabPepperFile *)self fileOffset]]];
          v5 = v7;
        }

        else
        {
          v20 = 0;
          v16 = [v4 closeAndReturnError:&v20];
          v5 = v20;

          if ((v16 & 1) == 0)
          {
            v17 = [(LabPepperFile *)self log];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [LabPepperFile nextEntry];
            }
          }

          v14 = 0;
        }
      }

      else
      {
        v21 = 0;
        [v4 closeAndReturnError:&v21];
        v5 = v21;
        v14 = 0;
        v13 = v7;
      }
    }

    else
    {
      v8 = [(LabPepperFile *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v19 = [(LabPepperFile *)self fileOffset];
        *buf = 134218498;
        v25 = v19;
        v26 = 2112;
        v27 = v4;
        v28 = 2112;
        v29 = v7;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error seeking to offset %lu for file %@ when getting next entry: %@", buf, 0x20u);
      }

      v14 = 0;
      v5 = v7;
    }
  }

  else
  {
    v8 = [(LabPepperFile *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = [(LabPepperFile *)self url];
      [(LabPepperFile *)v15 nextEntry:v5];
    }

    v14 = 0;
  }

  return v14;
}

- (void)nextEntry
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error opening file %@ before grabbing next LP entry: %@", buf, 0x16u);
}

@end