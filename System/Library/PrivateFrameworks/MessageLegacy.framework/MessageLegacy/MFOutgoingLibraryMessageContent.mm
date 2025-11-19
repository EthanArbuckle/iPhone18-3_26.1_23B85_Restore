@interface MFOutgoingLibraryMessageContent
- (id)copy;
- (id)headers;
- (void)dealloc;
@end

@implementation MFOutgoingLibraryMessageContent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFOutgoingLibraryMessageContent;
  [(MFOutgoingMessageContent *)&v3 dealloc];
}

- (id)copy
{
  v5.receiver = self;
  v5.super_class = MFOutgoingLibraryMessageContent;
  v3 = [(MFOutgoingMessageContent *)&v5 copy];
  [v3 setLibraryMessage:self->_libraryMessage];
  return v3;
}

- (id)headers
{
  v2 = [-[MFLibraryMessage headers](-[MFOutgoingLibraryMessageContent libraryMessage](self "libraryMessage")];

  return v2;
}

@end