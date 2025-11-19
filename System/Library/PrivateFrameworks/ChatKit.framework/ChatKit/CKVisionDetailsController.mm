@interface CKVisionDetailsController
- (BOOL)shouldShowKTSection;
- (CKVisionDetailsController)initWithConversation:(id)a3 context:(int64_t)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (id)reuseIdentifierForCellInSection:(unint64_t)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
@end

@implementation CKVisionDetailsController

- (CKVisionDetailsController)initWithConversation:(id)a3 context:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = CKVisionDetailsController;
  v5 = [(CKDetailsController *)&v8 initWithConversation:a3];
  v6 = v5;
  if (v5)
  {
    [(CKVisionDetailsController *)v5 setContext:a4];
  }

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = CKVisionDetailsController;
  v6 = [(CKDetailsController *)&v8 tableView:a3 numberOfRowsInSection:?];
  if (a4 <= 0xC && ((1 << a4) & 0x1A00) != 0 && [(CKVisionDetailsController *)self context]== 1)
  {
    return 0;
  }

  return v6;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if ([(CKVisionDetailsController *)self tableView:v6 numberOfRowsInSection:a4])
  {
    v10.receiver = self;
    v10.super_class = CKVisionDetailsController;
    [(CKDetailsController *)&v10 tableView:v6 heightForFooterInSection:a4];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (id)reuseIdentifierForCellInSection:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CKVisionDetailsController;
  v3 = [(CKDetailsController *)&v5 reuseIdentifierForCellInSection:a3];

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