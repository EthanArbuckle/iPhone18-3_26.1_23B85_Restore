@interface SFManagedBookmarkCompletionMatch
- (SFManagedBookmarkCompletionMatch)initWithManagedBookmark:(id)a3 userInput:(id)a4 forQueryID:(int64_t)a5;
@end

@implementation SFManagedBookmarkCompletionMatch

- (SFManagedBookmarkCompletionMatch)initWithManagedBookmark:(id)a3 userInput:(id)a4 forQueryID:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [objc_alloc(MEMORY[0x1E69C90C8]) initWithString:v10];
  v12 = MEMORY[0x1E69C90C0];
  v13 = [v9 title];
  v14 = [v12 matchLocationForString:v11 inTitle:v13];

  if ((v14 > 2 || (v15 = MEMORY[0x1E69C90C0], [v9 urlString], v16 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v15, "matchLocationForString:inURLString:", v11, v16), v16, v14 >= 2)) && (v20.receiver = self, v20.super_class = SFManagedBookmarkCompletionMatch, v17 = -[SFManagedBookmarkCompletionMatch initWithMatchLocation:userInput:forQueryID:](&v20, sel_initWithMatchLocation_userInput_forQueryID_, v14, v10, a5), (self = v17) != 0))
  {
    objc_storeStrong(&v17->_managedBookmark, a3);
    self = self;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end