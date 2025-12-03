@interface _CNUIUserActionContactItem
- (BOOL)isEqual:(id)equal;
- (_CNUIUserActionContactItem)initWithContact:(id)contact;
@end

@implementation _CNUIUserActionContactItem

- (_CNUIUserActionContactItem)initWithContact:(id)contact
{
  contactCopy = contact;
  v10.receiver = self;
  v10.super_class = _CNUIUserActionContactItem;
  v5 = [(_CNUIUserActionContactItem *)&v10 init];
  if (v5)
  {
    v6 = [contactCopy copy];
    contact = v5->_contact;
    v5->_contact = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contact = self->_contact;
    contact = [equalCopy contact];
    v7 = [(CNContact *)contact isEqual:contact];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end