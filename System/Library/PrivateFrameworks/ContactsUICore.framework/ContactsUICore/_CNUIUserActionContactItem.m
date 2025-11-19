@interface _CNUIUserActionContactItem
- (BOOL)isEqual:(id)a3;
- (_CNUIUserActionContactItem)initWithContact:(id)a3;
@end

@implementation _CNUIUserActionContactItem

- (_CNUIUserActionContactItem)initWithContact:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _CNUIUserActionContactItem;
  v5 = [(_CNUIUserActionContactItem *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    contact = v5->_contact;
    v5->_contact = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contact = self->_contact;
    v6 = [v4 contact];
    v7 = [(CNContact *)contact isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end