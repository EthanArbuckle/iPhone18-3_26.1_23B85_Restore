@interface CKVisionDetailsController
- (BOOL)shouldShowKTSection;
- (CKVisionDetailsController)initWithConversation:(id)conversation context:(int64_t)context;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)reuseIdentifierForCellInSection:(unint64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
@end

@implementation CKVisionDetailsController

- (CKVisionDetailsController)initWithConversation:(id)conversation context:(int64_t)context
{
  v8.receiver = self;
  v8.super_class = CKVisionDetailsController;
  v5 = [(CKDetailsController *)&v8 initWithConversation:conversation];
  v6 = v5;
  if (v5)
  {
    [(CKVisionDetailsController *)v5 setContext:context];
  }

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v8.receiver = self;
  v8.super_class = CKVisionDetailsController;
  v6 = [(CKDetailsController *)&v8 tableView:view numberOfRowsInSection:?];
  if (section <= 0xC && ((1 << section) & 0x1A00) != 0 && [(CKVisionDetailsController *)self context]== 1)
  {
    return 0;
  }

  return v6;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if ([(CKVisionDetailsController *)self tableView:viewCopy numberOfRowsInSection:section])
  {
    v10.receiver = self;
    v10.super_class = CKVisionDetailsController;
    [(CKDetailsController *)&v10 tableView:viewCopy heightForFooterInSection:section];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (id)reuseIdentifierForCellInSection:(unint64_t)section
{
  v5.receiver = self;
  v5.super_class = CKVisionDetailsController;
  v3 = [(CKDetailsController *)&v5 reuseIdentifierForCellInSection:section];

  return v3;
}

- (BOOL)shouldShowKTSection
{
  if ([(CKVisionDetailsController *)self context])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CKVisionDetailsController;
  return [(CKDetailsController *)&v4 shouldShowKTSection];
}

@end