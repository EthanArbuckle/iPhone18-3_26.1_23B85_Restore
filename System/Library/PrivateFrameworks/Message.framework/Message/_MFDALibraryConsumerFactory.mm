@interface _MFDALibraryConsumerFactory
- (id)dataConsumerForPart:(id)part;
@end

@implementation _MFDALibraryConsumerFactory

- (id)dataConsumerForPart:(id)part
{
  partCopy = part;
  library = [(_MFDALibraryConsumerFactory *)self library];
  message = [(_MFDALibraryConsumerFactory *)self message];
  v7 = [library dataConsumerForMessage:message part:partCopy];

  return v7;
}

@end