@interface CPLResetFeedbackMessage
- (CPLResetFeedbackMessage)initWithResetType:(id)type reason:(id)reason uuid:(id)uuid libraryIdentifier:(id)identifier;
- (id)serverMessage;
@end

@implementation CPLResetFeedbackMessage

- (id)serverMessage
{
  v9.receiver = self;
  v9.super_class = CPLResetFeedbackMessage;
  serverMessage = [(CPLFeedbackMessage *)&v9 serverMessage];
  v4 = objc_alloc_init(CPLServerFeedbackKeyAndValue);
  [(CPLServerFeedbackKeyAndValue *)v4 setKey:@"resetType"];
  [(CPLServerFeedbackKeyAndValue *)v4 setValue:self->_resetType];
  [serverMessage addKeysAndValues:v4];
  v5 = objc_alloc_init(CPLServerFeedbackKeyAndValue);

  [(CPLServerFeedbackKeyAndValue *)v5 setKey:@"reason"];
  [(CPLServerFeedbackKeyAndValue *)v5 setValue:self->_reason];
  [serverMessage addKeysAndValues:v5];
  v6 = objc_alloc_init(CPLServerFeedbackKeyAndValue);

  [(CPLServerFeedbackKeyAndValue *)v6 setKey:@"resetUUID"];
  if (self->_uuid)
  {
    uuid = self->_uuid;
  }

  else
  {
    uuid = @"none";
  }

  [(CPLServerFeedbackKeyAndValue *)v6 setValue:uuid];
  [serverMessage addKeysAndValues:v6];

  return serverMessage;
}

- (CPLResetFeedbackMessage)initWithResetType:(id)type reason:(id)reason uuid:(id)uuid libraryIdentifier:(id)identifier
{
  typeCopy = type;
  reasonCopy = reason;
  uuidCopy = uuid;
  v21.receiver = self;
  v21.super_class = CPLResetFeedbackMessage;
  v13 = [(CPLFeedbackMessage *)&v21 initWithLibraryIdentifier:identifier];
  if (v13)
  {
    v14 = [typeCopy copy];
    resetType = v13->_resetType;
    v13->_resetType = v14;

    v16 = [reasonCopy copy];
    reason = v13->_reason;
    v13->_reason = v16;

    v18 = [uuidCopy copy];
    uuid = v13->_uuid;
    v13->_uuid = v18;
  }

  return v13;
}

@end