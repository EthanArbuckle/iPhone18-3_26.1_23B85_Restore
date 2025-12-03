@interface HomeEnergyDiagnosticExtension
- (id)_attachments;
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation HomeEnergyDiagnosticExtension

- (id)attachmentsForParameters:(id)parameters
{
  v4 = os_log_create("com.apple.HomeEnergyDaemon", "DiagnosticExtension");
  log = self->_log;
  self->_log = v4;

  return [(HomeEnergyDiagnosticExtension *)self _attachments];
}

- (id)_attachments
{
  v3 = [NSURL fileURLWithPath:@"/var/mobile/Library/homeenergyd/com.apple.homeenergyd/" isDirectory:1 relativeToURL:0];
  if (v3)
  {
    v4 = [CoreDataStoreArchive copyCoreDataStoresWithUrl:v3];
    if (v4)
    {
      v5 = [NSMutableArray arrayWithCapacity:1];
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Looking for contents in %@.", &v13, 0xCu);
      }

      path = [v4 path];
      v8 = [DEAttachmentItem attachmentWithPath:path];

      [v5 addObject:v8];
      v9 = [v5 copy];
    }

    else
    {
      v11 = self->_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000036DC(v11);
      }

      v9 = &__NSArray0__struct;
    }
  }

  else
  {
    v10 = self->_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100003720(v10);
    }

    v9 = &__NSArray0__struct;
  }

  return v9;
}

@end