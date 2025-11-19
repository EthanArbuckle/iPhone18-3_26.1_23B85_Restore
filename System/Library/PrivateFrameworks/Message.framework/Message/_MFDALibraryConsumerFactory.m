@interface _MFDALibraryConsumerFactory
- (id)dataConsumerForPart:(id)a3;
@end

@implementation _MFDALibraryConsumerFactory

- (id)dataConsumerForPart:(id)a3
{
  v4 = a3;
  v5 = [(_MFDALibraryConsumerFactory *)self library];
  v6 = [(_MFDALibraryConsumerFactory *)self message];
  v7 = [v5 dataConsumerForMessage:v6 part:v4];

  return v7;
}

@end