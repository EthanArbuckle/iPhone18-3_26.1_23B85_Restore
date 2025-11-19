@interface CKTranscriptLayoutMessageEditingContext
- (BOOL)isEqualToContext:(id)a3;
- (CKTranscriptLayoutMessageEditingContext)initWithEditedMessageGuid:(id)a3 editedMessageHeight:(double)a4;
@end

@implementation CKTranscriptLayoutMessageEditingContext

- (CKTranscriptLayoutMessageEditingContext)initWithEditedMessageGuid:(id)a3 editedMessageHeight:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CKTranscriptLayoutMessageEditingContext;
  v7 = [(CKTranscriptLayoutMessageEditingContext *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    editedMessageGuid = v7->_editedMessageGuid;
    v7->_editedMessageGuid = v8;

    v7->_editedMessageHeight = a4;
  }

  return v7;
}

- (BOOL)isEqualToContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (editedMessageGuid = self->_editedMessageGuid, [v4 editedMessageGuid], v7 = objc_claimAutoreleasedReturnValue(), LODWORD(editedMessageGuid) = -[NSString isEqualToString:](editedMessageGuid, "isEqualToString:", v7), v7, editedMessageGuid))
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