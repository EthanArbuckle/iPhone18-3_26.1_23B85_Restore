@interface UIAction(IC)
+ (id)ic_actionWithAttributedTitle:()IC handler:;
+ (id)ic_actionWithTitle:()IC subtitle:imageName:attributes:handler:;
+ (id)ic_centerWindowActionWithAppURL:()IC activationRequestOptions:;
+ (id)ic_collaborateManageActionWithCloudSyncingObject:()IC withHandler:;
+ (id)ic_collaborateShareActionWithCloudSyncingObject:()IC withHandler:;
+ (id)ic_deleteActionWithHandler:()IC;
+ (id)ic_deleteActionWithNumberOfElements:()IC handler:;
+ (id)ic_duplicateNoteActionWithHandler:()IC;
+ (id)ic_editSmartFolderActionWithHandler:()IC;
+ (id)ic_exportArchiveActionWithHandler:()IC;
+ (id)ic_exportMarkdownActionWithHandler:()IC;
+ (id)ic_importArchiveActionWithHandler:()IC;
+ (id)ic_lockNoteActionLocked:()IC withHandler:;
+ (id)ic_moveActionWithHandler:()IC;
+ (id)ic_moveActionWithWithNumberOfElements:()IC handler:;
+ (id)ic_pinNoteActionPinned:()IC numberOfElements:withHandler:;
+ (id)ic_pinNoteActionPinned:()IC withHandler:;
+ (id)ic_removeActionWithHandler:()IC;
+ (id)ic_renameActionWithHandler:()IC;
+ (id)ic_replyActionWithHandler:()IC;
+ (id)ic_sendActionWithHandler:()IC;
+ (id)ic_showActivityStreamActionWithCloudSyncingObject:()IC withHandler:;
- (uint64_t)setIc_destructive:()IC;
- (uint64_t)setIc_disabled:()IC;
@end

@implementation UIAction(IC)

- (uint64_t)setIc_destructive:()IC
{
  v5 = [self attributes] & 0xFFFFFFFFFFFFFFFDLL;
  v6 = 2;
  if (!a3)
  {
    v6 = 0;
  }

  return [self setAttributes:v5 | v6];
}

- (uint64_t)setIc_disabled:()IC
{
  v4 = [self attributes] & 0xFFFFFFFFFFFFFFFELL | a3;

  return [self setAttributes:v4];
}

+ (id)ic_actionWithTitle:()IC subtitle:imageName:attributes:handler:
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  if (a5)
  {
    a5 = [MEMORY[0x1E69DCAB8] ic_systemImageNamed:a5 textStyle:*MEMORY[0x1E69DDCF8] scale:-1];
  }

  v14 = [MEMORY[0x1E69DC628] actionWithTitle:v11 image:a5 identifier:0 handler:v13];
  [v14 setDiscoverabilityTitle:v12];
  [v14 setAttributes:a6];

  return v14;
}

+ (id)ic_actionWithAttributedTitle:()IC handler:
{
  v5 = MEMORY[0x1E69DC628];
  v6 = a4;
  v7 = a3;
  string = [v7 string];
  v9 = [v5 actionWithTitle:string image:0 identifier:0 handler:v6];

  [v9 setAttributedTitle:v7];

  return v9;
}

+ (id)ic_pinNoteActionPinned:()IC withHandler:
{
  v6 = a4;
  if (a3)
  {
    v7 = __ICLocalizedFrameworkString_impl(@"Unpin Note", @"Unpin Note", 0, 1);
    v8 = @"pin.slash";
  }

  else
  {
    v7 = __ICLocalizedFrameworkString_impl(@"Pin Note", @"Pin Note", 0, 1);
    v8 = @"pin";
  }

  v9 = [self ic_actionWithTitle:v7 imageName:v8 handler:v6];

  return v9;
}

+ (id)ic_pinNoteActionPinned:()IC numberOfElements:withHandler:
{
  v8 = a5;
  if (a4 == 1)
  {
    v9 = [objc_opt_class() ic_pinNoteActionPinned:a3 withHandler:v8];
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    if (a3)
    {
      v11 = __ICLocalizedFrameworkString_impl(@"Unpin %lu Notes", @"Unpin %lu Notes", 0, 1);
      v12 = @"pin.slash";
    }

    else
    {
      v11 = __ICLocalizedFrameworkString_impl(@"Pin %lu Notes", @"Pin %lu Notes", 0, 1);
      v12 = @"pin";
    }

    v13 = [v10 localizedStringWithFormat:v11, a4];

    v9 = [self ic_actionWithTitle:v13 imageName:v12 handler:v8];
  }

  return v9;
}

+ (id)ic_duplicateNoteActionWithHandler:()IC
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"Duplicate Note", @"Duplicate Note", 0, 1);
  v6 = [self ic_actionWithTitle:v5 imageName:@"doc.on.doc" handler:v4];

  return v6;
}

+ (id)ic_lockNoteActionLocked:()IC withHandler:
{
  v6 = a4;
  if (a3)
  {
    v7 = __ICLocalizedFrameworkString_impl(@"Remove Lock", @"Remove Lock", 0, 1);
    v8 = @"lock.slash";
  }

  else
  {
    v7 = __ICLocalizedFrameworkString_impl(@"Lock Note", @"Lock Note", 0, 1);
    v8 = @"lock";
  }

  v9 = [self ic_actionWithTitle:v7 imageName:v8 handler:v6];

  return v9;
}

+ (id)ic_collaborateManageActionWithCloudSyncingObject:()IC withHandler:
{
  v6 = a4;
  v7 = a3;
  shareViaICloudManageActionTitle = [v7 shareViaICloudManageActionTitle];
  shareViaICloudSystemImageName = [v7 shareViaICloudSystemImageName];

  v10 = [self ic_actionWithTitle:shareViaICloudManageActionTitle imageName:shareViaICloudSystemImageName handler:v6];

  return v10;
}

+ (id)ic_collaborateShareActionWithCloudSyncingObject:()IC withHandler:
{
  v6 = a4;
  shareViaICloudAddPeopleActionTitle = [a3 shareViaICloudAddPeopleActionTitle];
  if (_UISolariumEnabled())
  {
    v8 = @"square.and.arrow.up.fill";
  }

  else
  {
    v8 = @"square.and.arrow.up";
  }

  v9 = [self ic_actionWithTitle:shareViaICloudAddPeopleActionTitle imageName:v8 handler:v6];

  return v9;
}

+ (id)ic_showActivityStreamActionWithCloudSyncingObject:()IC withHandler:
{
  v5 = a4;
  v6 = __ICLocalizedFrameworkString_impl(@"Show Folder Activity", @"Show Folder Activity", 0, 1);
  v7 = [self ic_actionWithTitle:v6 imageName:@"bubble.left.and.bubble.right" handler:v5];

  return v7;
}

+ (id)ic_sendActionWithHandler:()IC
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"Send a Copy", @"Send a Copy", 0, 1);
  if (_UISolariumEnabled())
  {
    v6 = @"square.and.arrow.up.fill";
  }

  else
  {
    v6 = @"square.and.arrow.up";
  }

  v7 = [self ic_actionWithTitle:v5 imageName:v6 handler:v4];

  return v7;
}

+ (id)ic_moveActionWithHandler:()IC
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"Move", @"Move", 0, 1);
  if (_UISolariumEnabled())
  {
    v6 = @"folder.fill";
  }

  else
  {
    v6 = @"folder";
  }

  v7 = [self ic_actionWithTitle:v5 imageName:v6 handler:v4];

  return v7;
}

+ (id)ic_moveActionWithWithNumberOfElements:()IC handler:
{
  if (a3 == 1)
  {
    v5 = a4;
    v6 = [objc_opt_class() ic_moveActionWithHandler:v5];
  }

  else
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = a4;
    v10 = __ICLocalizedFrameworkString_impl(@"Move %lu Notes", @"Move %lu Notes", 0, 1);
    v5 = [v8 localizedStringWithFormat:v10, a3];

    v6 = [self ic_actionWithTitle:v5 imageName:@"folder" handler:v9];
  }

  return v6;
}

+ (id)ic_removeActionWithHandler:()IC
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"Remove", @"Remove", 0, 1);
  v6 = [self ic_actionWithTitle:v5 imageName:@"minus.circle" attributes:2 handler:v4];

  return v6;
}

+ (id)ic_deleteActionWithHandler:()IC
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"Delete", @"Delete", 0, 1);
  if (_UISolariumEnabled())
  {
    v6 = @"trash.fill";
  }

  else
  {
    v6 = @"trash";
  }

  v7 = [self ic_actionWithTitle:v5 imageName:v6 attributes:2 handler:v4];

  return v7;
}

+ (id)ic_deleteActionWithNumberOfElements:()IC handler:
{
  if (a3 == 1)
  {
    v5 = a4;
    v6 = [objc_opt_class() ic_deleteActionWithHandler:v5];
  }

  else
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = a4;
    v10 = __ICLocalizedFrameworkString_impl(@"Delete %lu Notes", @"Delete %lu Notes", 0, 1);
    v5 = [v8 localizedStringWithFormat:v10, a3];

    v6 = [self ic_actionWithTitle:v5 imageName:@"trash" attributes:2 handler:v9];
  }

  return v6;
}

+ (id)ic_renameActionWithHandler:()IC
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"Rename", @"Rename", 0, 1);
  v6 = [self ic_actionWithTitle:v5 imageName:@"pencil" handler:v4];

  return v6;
}

+ (id)ic_editSmartFolderActionWithHandler:()IC
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"Edit Smart Folder", @"Edit Smart Folder", 0, 1);
  v6 = [self ic_actionWithTitle:v5 imageName:@"pencil" handler:v4];

  return v6;
}

+ (id)ic_importArchiveActionWithHandler:()IC
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"Import Archive…", @"Import Archive…", 0, 1);
  v6 = [self ic_actionWithTitle:v5 imageName:@"square.and.arrow.down.on.square" handler:v4];

  return v6;
}

+ (id)ic_exportArchiveActionWithHandler:()IC
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"Export Archive…", @"Export Archive…", 0, 1);
  v6 = [self ic_actionWithTitle:v5 imageName:@"square.and.arrow.up.on.square" handler:v4];

  return v6;
}

+ (id)ic_exportMarkdownActionWithHandler:()IC
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"Export Markdown…", @"Export Markdown…", 0, 1);
  v6 = [self ic_actionWithTitle:v5 imageName:@"square.and.arrow.up.on.square" handler:v4];

  return v6;
}

+ (id)ic_replyActionWithHandler:()IC
{
  v4 = a3;
  v5 = __ICLocalizedFrameworkString_impl(@"Reply", @"Reply", 0, 1);
  v6 = [self ic_actionWithTitle:v5 imageName:@"arrowshape.turn.up.left" handler:v4];

  return v6;
}

+ (id)ic_centerWindowActionWithAppURL:()IC activationRequestOptions:
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E69DD2F8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__UIAction_IC__ic_centerWindowActionWithAppURL_activationRequestOptions___block_invoke;
  v12[3] = &unk_1E846A9B8;
  v13 = v5;
  v14 = v6;
  v8 = v6;
  v9 = v5;
  v10 = [v7 actionWithIdentifier:0 alternateAction:0 configurationProvider:v12];

  return v10;
}

@end