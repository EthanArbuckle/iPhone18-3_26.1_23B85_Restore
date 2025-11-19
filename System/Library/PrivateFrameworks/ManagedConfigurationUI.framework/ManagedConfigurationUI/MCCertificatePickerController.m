@interface MCCertificatePickerController
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_setCellPropertiesOnSpecifier:(id)a3 forCertificate:(__SecCertificate *)a4;
- (void)setRowToSelect;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation MCCertificatePickerController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = MCCertificatePickerController;
  [(PSListItemsController *)&v6 viewDidLoad];
  v3 = [(MCCertificatePickerController *)self table];
  v4 = objc_opt_class();
  v5 = +[(PSTableCell *)MCCertificatePickerCell];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)_setCellPropertiesOnSpecifier:(id)a3 forCertificate:(__SecCertificate *)a4
{
  v10 = a3;
  v5 = SecCertificateCopySubjectSummary(a4);
  if (v5)
  {
    [v10 setProperty:v5 forKey:@"kMCCellTitleKey"];
  }

  v6 = SecCertificateCopyIssuerSummary();
  if (v6)
  {
    [v10 setProperty:v6 forKey:@"kMCCellIssuerKey"];
  }

  SecCertificateNotValidAfter();
  v8 = CFDateCreate(*MEMORY[0x277CBECE8], v7);
  v9 = v10;
  if (v8)
  {
    [v10 setProperty:v8 forKey:@"kMCCellExpirationDateKey"];
    v9 = v10;
  }

  [v9 setProperty:a4 forKey:@"kMCCertificateDetailsCertificateRefKey"];
}

- (id)specifiers
{
  keys[4] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) values];
    result = 0;
    if ([v5 count] < 1)
    {
      v15 = 0;
      v16 = 0;
LABEL_33:
      v26 = *(&self->super.super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.super.isa + v3) = v15;
      v27 = v15;

      v4 = *(&self->super.super.super.super.super.super.isa + v3);
      goto LABEL_34;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
    v7 = CFGetTypeID(ValueAtIndex);
    v30 = v3;
    if (v7 == CFDataGetTypeID())
    {
      v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0x7FFFFFFFLL];
      v9 = *MEMORY[0x277CDC568];
      keys[0] = *MEMORY[0x277CDC228];
      keys[1] = v9;
      v10 = *MEMORY[0x277CDC428];
      keys[2] = *MEMORY[0x277CDC420];
      keys[3] = v10;
      v11 = *MEMORY[0x277CBED28];
      values[0] = *MEMORY[0x277CDC240];
      values[1] = v11;
      values[2] = v5;
      values[3] = v8;
      v12 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (SecItemCopyMatching(v12, &result))
      {
        if (result)
        {
          CFRelease(result);
        }

        result = 0;
      }

      CFRelease(v12);

      v13 = 0;
      v14 = result;
      if (!result)
      {
LABEL_29:
        v16 = 0;
        v15 = 0;
LABEL_30:
        if (result)
        {
          CFRelease(result);
        }

        v3 = v30;
        goto LABEL_33;
      }
    }

    else if (v7 == SecIdentityGetTypeID())
    {
      v14 = v5;
      v13 = 0;
      result = v14;
      if (!v14)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v7 != SecCertificateGetTypeID())
      {
        goto LABEL_29;
      }

      v14 = v5;
      result = v14;
      v13 = 1;
      if (!v14)
      {
        goto LABEL_29;
      }
    }

    Count = CFArrayGetCount(v14);
    if (Count < 1)
    {
      goto LABEL_29;
    }

    v18 = 0;
    v15 = 0;
    v16 = 0;
    v32 = *MEMORY[0x277D3FE58];
    v19 = Count & 0x7FFFFFFF;
    v31 = *MEMORY[0x277D40140];
    while (1)
    {
      keys[0] = 0;
      v20 = CFArrayGetValueAtIndex(result, v18);
      if (v13)
      {
        break;
      }

      SecIdentityCopyCertificate(v20, keys);
      if (keys[0])
      {
        goto LABEL_22;
      }

LABEL_25:
      if (v19 == ++v18)
      {
        goto LABEL_30;
      }
    }

    keys[0] = CFRetain(v20);
    if (!keys[0])
    {
      goto LABEL_25;
    }

LABEL_22:
    if (v15)
    {
      if (v16)
      {
LABEL_24:
        v21 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:objc_opt_class() cell:3 edit:0];
        [v21 setProperty:objc_opt_class() forKey:v32];
        [v21 setProperty:v16 forKey:v31];
        [(MCCertificatePickerController *)self _setCellPropertiesOnSpecifier:v21 forCertificate:keys[0]];
        v22 = MEMORY[0x277CBEA60];
        v23 = [v5 objectAtIndex:v18];
        v24 = [v22 arrayWithObject:v23];
        [v21 setValues:v24];

        [(objc_class *)v15 addObject:v21];
        CFRelease(keys[0]);

        goto LABEL_25;
      }
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (v16)
      {
        goto LABEL_24;
      }
    }

    v25 = objc_alloc(MEMORY[0x277CCABB0]);
    +[MCCertificatePickerCell defaultCellHeight];
    v16 = [v25 initWithFloat:?];
    goto LABEL_24;
  }

LABEL_34:
  v28 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setRowToSelect
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D3FC68];
  *(&self->super.super.super.super.super.super.isa + v2) = 0x7FFFFFFFFFFFFFFFLL;
  v3 = *MEMORY[0x277D3FD20];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  v5 = MEMORY[0x277D3FCA8];
  if (*(v4 + *MEMORY[0x277D3FCA8]))
  {
    v7 = MEMORY[0x277D3FCB8];
    WeakRetained = objc_loadWeakRetained((v4 + *MEMORY[0x277D3FCB8]));
    v9 = *(*(&self->super.super.super.super.super.super.isa + v3) + *v5);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained((*(&self->super.super.super.super.super.super.isa + v3) + *v7));
      v12 = [v11 *(*(&self->super.super.super.super.super.super.isa + v3) + *v5)];

      if (v12)
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v13 = [(MCCertificatePickerController *)self specifiers];
        v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = 0;
          v17 = *v24;
          while (2)
          {
            v18 = 0;
            v22 = (v16 + v15);
            do
            {
              if (*v24 != v17)
              {
                objc_enumerationMutation(v13);
              }

              v19 = [*(*(&v23 + 1) + 8 * v18) values];
              v20 = [v19 lastObject];

              if (v12 == v20)
              {
                *(&self->super.super.super.super.super.super.isa + v2) = v16;
                goto LABEL_14;
              }

              v16 = (v16 + 1);
              ++v18;
            }

            while (v15 != v18);
            v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
            v16 = v22;
            if (v15)
            {
              continue;
            }

            break;
          }
        }

LABEL_14:
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = MCCertificatePickerController;
  v7 = [(PSListItemsController *)&v14 tableView:a3 cellForRowAtIndexPath:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [(MCCertificatePickerController *)self specifierAtIndex:[(MCCertificatePickerController *)self indexForIndexPath:v6]];
    v10 = [v9 propertyForKey:@"kMCCellTitleKey"];
    [v8 setTitle:v10];

    v11 = [v9 propertyForKey:@"kMCCellIssuerKey"];
    [v8 setIssuer:v11];

    v12 = [v9 propertyForKey:@"kMCCellExpirationDateKey"];
    [v8 setExpirationDate:v12];
  }

  return v7;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v7 = [(MCCertificatePickerController *)self specifierAtIndex:[(MCCertificatePickerController *)self indexForIndexPath:a4]];
  v5 = objc_alloc_init(*&v7[*MEMORY[0x277D3FC98]]);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD10]));
    [v5 setRootController:WeakRetained];

    [v5 setParentController:self];
    [v5 setSpecifier:v7];
    [(MCCertificatePickerController *)self showController:v5];
  }
}

@end