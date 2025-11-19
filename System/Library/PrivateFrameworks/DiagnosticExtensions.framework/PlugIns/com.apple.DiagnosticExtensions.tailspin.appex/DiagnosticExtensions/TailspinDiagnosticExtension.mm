@interface TailspinDiagnosticExtension
- (id)attachmentsForParameters:(id)a3;
@end

@implementation TailspinDiagnosticExtension

- (id)attachmentsForParameters:(id)a3
{
  v3 = a3;
  if (!tailspin_config_create_with_current_state() || (v4 = tailspin_enabled_get(), tailspin_config_free(), !v4))
  {
    v8 = &__NSArray0__struct;
    goto LABEL_21;
  }

  v5 = [v3 objectForKeyedSubscript:UnsafePointer];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  v9 = [v3 objectForKeyedSubscript:UnsafePointer];
  v10 = v9;
  if (!v9)
  {
    v13 = objc_alloc_init(NSDateFormatter);
    [v13 setDateStyle:1];
    [v13 setDateFormat:@"yyyy-MM-dd-HHmmss"];
    v14 = +[NSDate date];
    v15 = [v13 stringFromDate:v14];
    v16 = [NSString stringWithFormat:@"tailspin-trace_%@.tailspin", v15];

    v11 = [@"/var/mobile/Library/Logs/CrashReporter" stringByAppendingPathComponent:v16];

    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    v17 = umask(0);
    v18 = open([v11 UTF8String], 2562, 432);
    umask(v17);
    if (v18 == -1)
    {
      v8 = &__NSArray0__struct;
    }

    else
    {
      v19 = v3;
      NSLog(@"Saving tailspin file with options = %@", v19);
      if (tailspin_dump_output_with_options_sync())
      {
        NSLog(@"Saved tailspin output to file '%@'", v11);
        v20 = [DEAttachmentItem attachmentWithPath:v11];
        [v20 setDeleteOnAttach:&__kCFBooleanTrue];
        v24 = v20;
        v21 = [NSArray arrayWithObjects:&v24 count:1];
      }

      else
      {
        NSLog(@"Unable to save tailspin data to file '%@'", v11);
        v21 = &__NSArray0__struct;
      }

      close(v18);
      v8 = v21;
    }

    goto LABEL_20;
  }

  v11 = v9;
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (access([v11 UTF8String], 0))
  {
    v12 = &__NSArray0__struct;
  }

  else
  {
    v22 = [DEAttachmentItem attachmentWithPath:v11];
    [v22 setDeleteOnAttach:&__kCFBooleanTrue];
    v25 = v22;
    v12 = [NSArray arrayWithObjects:&v25 count:1];
  }

  NSLog(@"Returned existing tailspin file '%@'", v11);
  v8 = v12;
LABEL_20:

LABEL_21:

  return v8;
}

@end