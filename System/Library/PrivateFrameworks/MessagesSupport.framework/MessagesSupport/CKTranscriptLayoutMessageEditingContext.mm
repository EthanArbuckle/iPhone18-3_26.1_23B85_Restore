@interface CKTranscriptLayoutMessageEditingContext
- (BOOL)isEqualToContext:(id)context;
- (CKTranscriptLayoutMessageEditingContext)initWithEditedMessageGuid:(id)guid editedMessageHeight:(double)height;
@end

@implementation CKTranscriptLayoutMessageEditingContext

- (CKTranscriptLayoutMessageEditingContext)initWithEditedMessageGuid:(id)guid editedMessageHeight:(double)height
{
  guidCopy = guid;
  v11.receiver = self;
  v11.super_class = CKTranscriptLayoutMessageEditingContext;
  v7 = [(CKTranscriptLayoutMessageEditingContext *)&v11 init];
  if (v7)
  {
    v8 = [guidCopy copy];
    editedMessageGuid = v7->_editedMessageGuid;
    v7->_editedMessageGuid = v8;

    v7->_editedMessageHeight = height;
  }

  return v7;
}

- (BOOL)isEqualToContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (contextCopy && (editedMessageGuid = self->_editedMessageGuid, [contextCopy editedMessageGuid], v7 = objc_claimAutoreleasedReturnValue(), LODWORD(editedMessageGuid) = -[NSString isEqualToString:](editedMessageGuid, "isEqualToString:", v7), v7, editedMessageGuid))
  {
    editedMessageHeight = self->_editedMessageHeight;
    [v5 editedMessageHeight];
    v10 = vabdd_f64(editedMessageHeight, v9) <= 0.001;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end