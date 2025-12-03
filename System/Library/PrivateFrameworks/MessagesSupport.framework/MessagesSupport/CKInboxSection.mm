@interface CKInboxSection
- (CKInboxSection)initWithHeader:(id)header footer:(id)footer items:(id)items;
@end

@implementation CKInboxSection

- (CKInboxSection)initWithHeader:(id)header footer:(id)footer items:(id)items
{
  headerCopy = header;
  footerCopy = footer;
  itemsCopy = items;
  v19.receiver = self;
  v19.super_class = CKInboxSection;
  v11 = [(CKInboxSection *)&v19 init];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCAD78]);
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [headerCopy copy];
    header = v11->_header;
    v11->_header = v14;

    v16 = [footerCopy copy];
    footer = v11->_footer;
    v11->_footer = v16;

    objc_storeStrong(&v11->_items, items);
  }

  return v11;
}

@end