@interface CKInboxSection
- (CKInboxSection)initWithHeader:(id)a3 footer:(id)a4 items:(id)a5;
@end

@implementation CKInboxSection

- (CKInboxSection)initWithHeader:(id)a3 footer:(id)a4 items:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = CKInboxSection;
  v11 = [(CKInboxSection *)&v19 init];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCAD78]);
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v8 copy];
    header = v11->_header;
    v11->_header = v14;

    v16 = [v9 copy];
    footer = v11->_footer;
    v11->_footer = v16;

    objc_storeStrong(&v11->_items, a5);
  }

  return v11;
}

@end