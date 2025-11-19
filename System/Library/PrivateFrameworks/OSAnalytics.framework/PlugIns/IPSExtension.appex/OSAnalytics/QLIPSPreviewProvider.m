@interface QLIPSPreviewProvider
+ (id)plainTextDataReplyWithFileURL:(id)a3 reportType:(id)a4;
- (void)providePreviewForFileRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation QLIPSPreviewProvider

- (void)providePreviewForFileRequest:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [a3 fileURL];
  v7 = getxattr([v6 fileSystemRepresentation], "bug_type", value, 0x3FFuLL, 0, 0);
  value[v7 & ~(v7 >> 63)] = 0;
  v8 = [NSString stringWithUTF8String:value];
  if (![v8 length])
  {
    v9 = [OSALog alloc];
    v10 = [v6 path];
    v11 = [v9 initWithPath:v10 forRouting:&stru_1000044A8 options:&off_100004568 error:0];

    if (v11 && ([v11 metaData], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      [v11 bugType];
      v8 = v13 = v8;
    }

    else
    {
      v14 = [NSInputStream inputStreamWithURL:v6];
      v13 = v14;
      if (v14)
      {
        [v14 open];
        v19 = 0;
        v15 = [NSJSONSerialization JSONObjectWithStream:v13 options:0 error:&v19];
        v16 = v19;
        if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v17 = [v15 objectForKeyedSubscript:@"bug_type"];

          v8 = v17;
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100002B44(v16);
        }

        [v13 close];
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100002BC4(v6);
      }
    }
  }

  v18 = [QLIPSPreviewProvider plainTextDataReplyWithFileURL:v6 reportType:v8];
  v5[2](v5, v18, 0);
}

+ (id)plainTextDataReplyWithFileURL:(id)a3 reportType:(id)a4
{
  v4 = *(*(sub_100002C94() - 8) + 64);
  (__chkstk_darwin)();
  v5 = sub_100002C54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v9 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  sub_100002C44();
  sub_100002048();
  sub_100002C84();
  (*(v6 + 16))(v9, v11, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v9, v5);
  v14 = sub_100002D34();
  (*(v6 + 8))(v11, v5);

  return v14;
}

@end