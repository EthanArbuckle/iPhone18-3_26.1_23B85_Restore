@interface SFManagedBookmarkCompletionMatch
- (SFManagedBookmarkCompletionMatch)initWithManagedBookmark:(id)bookmark userInput:(id)input forQueryID:(int64_t)d;
@end

@implementation SFManagedBookmarkCompletionMatch

- (SFManagedBookmarkCompletionMatch)initWithManagedBookmark:(id)bookmark userInput:(id)input forQueryID:(int64_t)d
{
  bookmarkCopy = bookmark;
  inputCopy = input;
  v11 = [objc_alloc(MEMORY[0x1E69C90C8]) initWithString:inputCopy];
  v12 = MEMORY[0x1E69C90C0];
  title = [bookmarkCopy title];
  v14 = [v12 matchLocationForString:v11 inTitle:title];

  if ((v14 > 2 || (v15 = MEMORY[0x1E69C90C0], [bookmarkCopy urlString], v16 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v15, "matchLocationForString:inURLString:", v11, v16), v16, v14 >= 2)) && (v20.receiver = self, v20.super_class = SFManagedBookmarkCompletionMatch, v17 = -[SFManagedBookmarkCompletionMatch initWithMatchLocation:userInput:forQueryID:](&v20, sel_initWithMatchLocation_userInput_forQueryID_, v14, inputCopy, d), (self = v17) != 0))
  {
    objc_storeStrong(&v17->_managedBookmark, bookmark);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end