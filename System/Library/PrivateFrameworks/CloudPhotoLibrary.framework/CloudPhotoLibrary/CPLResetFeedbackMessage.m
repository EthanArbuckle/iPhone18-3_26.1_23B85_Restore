@interface CPLResetFeedbackMessage
- (CPLResetFeedbackMessage)initWithResetType:(id)a3 reason:(id)a4 uuid:(id)a5 libraryIdentifier:(id)a6;
- (id)serverMessage;
@end

@implementation CPLResetFeedbackMessage

- (id)serverMessage
{
  v9.receiver = self;
  v9.super_class = CPLResetFeedbackMessage;
  v3 = [(CPLFeedbackMessage *)&v9 serverMessage];
  v4 = objc_alloc_init(CPLServerFeedbackKeyAndValue);
  [(CPLServerFeedbackKeyAndValue *)v4 setKey:@"resetType"];
  [(CPLServerFeedbackKeyAndValue *)v4 setValue:self->_resetType];
  [v3 addKeysAndValues:v4];
  v5 = objc_alloc_init(CPLServerFeedbackKeyAndValue);

  [(CPLServerFeedbackKeyAndValue *)v5 setKey:@"reason"];
  [(CPLServerFeedbackKeyAndValue *)v5 setValue:self->_reason];
  [v3 addKeysAndValues:v5];
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
  [v3 addKeysAndValues:v6];

  return v3;
}

- (CPLResetFeedbackMessage)initWithResetType:(id)a3 reason:(id)a4 uuid:(id)a5 libraryIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = CPLResetFeedbackMessage;
  v13 = [(CPLFeedbackMessage *)&v21 initWithLibraryIdentifier:a6];
  if (v13)
  {
    v14 = [v10 copy];
    resetType = v13->_resetType;
    v13->_resetType = v14;

    v16 = [v11 copy];
    reason = v13->_reason;
    v13->_reason = v16;

    v18 = [v12 copy];
    uuid = v13->_uuid;
    v13->_uuid = v18;
  }

  return v13;
}

@end