@interface CRSIconLayoutState
- (CRSIconLayoutState)initWithCoder:(id)coder;
- (CRSIconLayoutState)initWithPages:(id)pages hiddenIcons:(id)icons;
- (id)description;
- (id)iconOrder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRSIconLayoutState

- (CRSIconLayoutState)initWithPages:(id)pages hiddenIcons:(id)icons
{
  pagesCopy = pages;
  iconsCopy = icons;
  v14.receiver = self;
  v14.super_class = CRSIconLayoutState;
  v8 = [(CRSIconLayoutState *)&v14 init];
  if (v8)
  {
    v9 = [pagesCopy copy];
    pages = v8->_pages;
    v8->_pages = v9;

    v11 = [iconsCopy copy];
    hiddenIcons = v8->_hiddenIcons;
    v8->_hiddenIcons = v11;
  }

  return v8;
}

- (id)iconOrder
{
  v3 = MEMORY[0x277CBEB18];
  pages = [(CRSIconLayoutState *)self pages];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(pages, "count")}];

  pages2 = [(CRSIconLayoutState *)self pages];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31__CRSIconLayoutState_iconOrder__block_invoke;
  v10[3] = &unk_278D8DEF8;
  v11 = v5;
  v7 = v5;
  [pages2 enumerateObjectsUsingBlock:v10];

  v8 = [MEMORY[0x277CBEA60] arrayWithArray:v7];

  return v8;
}

void __31__CRSIconLayoutState_iconOrder__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a2;
  v5 = [v4 icons];
  v6 = [v3 arrayWithCapacity:{objc_msgSend(v5, "count")}];

  v7 = [v4 icons];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __31__CRSIconLayoutState_iconOrder__block_invoke_2;
  v11[3] = &unk_278D8DED0;
  v12 = v6;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:v11];

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v8];
  [v9 addObject:v10];
}

uint64_t __31__CRSIconLayoutState_iconOrder__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

- (id)description
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v17.receiver = self;
  v17.super_class = CRSIconLayoutState;
  v4 = [(CRSIconLayoutState *)&v17 description];
  v5 = [v3 stringWithString:v4];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  pages = [(CRSIconLayoutState *)self pages];
  v7 = [pages countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(pages);
        }

        [v5 appendFormat:@"  page: %@", *(*(&v13 + 1) + 8 * i)];
      }

      v8 = [pages countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (CRSIconLayoutState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CRSIconLayoutState;
  v5 = [(CRSIconLayoutState *)&v21 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"CRSIconLayoutStatePages"];
    pages = v5->_pages;
    v5->_pages = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"CRSIconLayoutHiddenIcons"];
    hiddenIcons = v5->_hiddenIcons;
    v5->_hiddenIcons = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CRSIconLayoutOEMIconLabel"];
    oemIconLabel = v5->_oemIconLabel;
    v5->_oemIconLabel = v16;

    v5->_displaysOEMIcon = [coderCopy decodeBoolForKey:@"CRSIconLayoutDisplaysOEMIcon"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CRSIconLayoutRows"];
    v5->_rows = [v18 unsignedIntegerValue];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CRSIconLayoutColumns"];
    v5->_columns = [v19 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pages = [(CRSIconLayoutState *)self pages];
  [coderCopy encodeObject:pages forKey:@"CRSIconLayoutStatePages"];

  hiddenIcons = [(CRSIconLayoutState *)self hiddenIcons];
  [coderCopy encodeObject:hiddenIcons forKey:@"CRSIconLayoutHiddenIcons"];

  oemIconLabel = [(CRSIconLayoutState *)self oemIconLabel];
  [coderCopy encodeObject:oemIconLabel forKey:@"CRSIconLayoutOEMIconLabel"];

  [coderCopy encodeBool:-[CRSIconLayoutState displaysOEMIcon](self forKey:{"displaysOEMIcon"), @"CRSIconLayoutDisplaysOEMIcon"}];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRSIconLayoutState rows](self, "rows")}];
  [coderCopy encodeObject:v8 forKey:@"CRSIconLayoutRows"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRSIconLayoutState columns](self, "columns")}];
  [coderCopy encodeObject:v9 forKey:@"CRSIconLayoutColumns"];
}

@end