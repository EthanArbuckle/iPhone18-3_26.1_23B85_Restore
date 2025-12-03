@interface SFManagedBookmarksController
+ (id)sharedController;
- (SFManagedBookmarkFolder)topLevelManagedBookmarkFolder;
- (SFManagedBookmarksController)init;
- (void)managedBookmarksDidChange;
@end

@implementation SFManagedBookmarksController

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[SFManagedBookmarksController sharedController];
  }

  v3 = sharedController_sharedController;

  return v3;
}

void __48__SFManagedBookmarksController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(SFManagedBookmarksController);
  v1 = sharedController_sharedController;
  sharedController_sharedController = v0;
}

- (SFManagedBookmarksController)init
{
  v8.receiver = self;
  v8.super_class = SFManagedBookmarksController;
  v2 = [(SFManagedBookmarksController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69C88C0]);
    managedBookmarksController = v2->_managedBookmarksController;
    v2->_managedBookmarksController = v3;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_managedBookmarksDidChange name:*MEMORY[0x1E69C8C18] object:0];

    v6 = v2;
  }

  return v2;
}

- (SFManagedBookmarkFolder)topLevelManagedBookmarkFolder
{
  topLevelManagedBookmarkFolder = self->_topLevelManagedBookmarkFolder;
  if (!topLevelManagedBookmarkFolder)
  {
    managedBookmarksController = [(SFManagedBookmarksController *)self managedBookmarksController];
    topLevelBookmarksFolderTitle = [managedBookmarksController topLevelBookmarksFolderTitle];
    managedBookmarksController2 = [(SFManagedBookmarksController *)self managedBookmarksController];
    managedBookmarks = [managedBookmarksController2 managedBookmarks];
    v8 = [SFManagedBookmarkFolder topLevelManagedBookmarkFolderWithTitle:topLevelBookmarksFolderTitle bookmarkDictionary:managedBookmarks];
    v9 = self->_topLevelManagedBookmarkFolder;
    self->_topLevelManagedBookmarkFolder = v8;

    topLevelManagedBookmarkFolder = self->_topLevelManagedBookmarkFolder;
  }

  v10 = topLevelManagedBookmarkFolder;

  return v10;
}

- (void)managedBookmarksDidChange
{
  topLevelManagedBookmarkFolder = self->_topLevelManagedBookmarkFolder;
  self->_topLevelManagedBookmarkFolder = 0;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SFManagedBookmarksDidChange" object:0];
}

@end