@interface MCCertificatePickerController
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_setCellPropertiesOnSpecifier:(id)specifier forCertificate:(__SecCertificate *)certificate;
- (void)setRowToSelect;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MCCertificatePickerController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = MCCertificatePickerController;
  [(PSListItemsController *)&v6 viewDidLoad];
  table = [(MCCertificatePickerController *)self table];
  v4 = objc_opt_class();
  v5 = +[(PSTableCell *)MCCertificatePickerCell];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)_setCellPropertiesOnSpecifier:(id)specifier forCertificate:(__SecCertificate *)certificate
{
  specifierCopy = specifier;
  v5 = SecCertificateCopySubjectSummary(certificate);
  if (v5)
  {
    [specifierCopy setProperty:v5 forKey:@"kMCCellTitleKey"];
  }

  v6 = SecCertificateCopyIssuerSummary();
  if (v6)
  {
    [specifierCopy setProperty:v6 forKey:@"kMCCellIssuerKey"];
  }

  SecCertificateNotValidAfter();
  v8 = CFDateCreate(*MEMORY[0x277CBECE8], v7);
  v9 = specifierCopy;
  if (v8)
  {
    [specifierCopy setProperty:v8 forKey:@"kMCCellExpirationDateKey"];
    v9 = specifierCopy;
  }

  [v9 setProperty:certificate forKey:@"kMCCertificateDetailsCertificateRefKey"];
}

- (id)specifiers
{
  keys[4] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    values = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) values];
    result = 0;
    if ([values count] < 1)
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

    ValueAtIndex = CFArrayGetValueAtIndex(values, 0);
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
      values[2] = values;
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
      v14 = values;
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

      v14 = values;
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
        v23 = [values objectAtIndex:v18];
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
        specifiers = [(MCCertificatePickerController *)self specifiers];
        v14 = [specifiers countByEnumeratingWithState:&v23 objects:v27 count:16];
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
                objc_enumerationMutation(specifiers);
              }

              values = [*(*(&v23 + 1) + 8 * v18) values];
              lastObject = [values lastObject];

              if (v12 == lastObject)
              {
                *(&self->super.super.super.super.super.super.isa + v2) = v16;
                goto LABEL_14;
              }

              v16 = (v16 + 1);
              ++v18;
            }

            while (v15 != v18);
            v15 = [specifiers countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = MCCertificatePickerController;
  v7 = [(PSListItemsController *)&v14 tableView:view cellForRowAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [(MCCertificatePickerController *)self specifierAtIndex:[(MCCertificatePickerController *)self indexForIndexPath:pathCopy]];
    v10 = [v9 propertyForKey:@"kMCCellTitleKey"];
    [v8 setTitle:v10];

    v11 = [v9 propertyForKey:@"kMCCellIssuerKey"];
    [v8 setIssuer:v11];

    v12 = [v9 propertyForKey:@"kMCCellExpirationDateKey"];
    [v8 setExpirationDate:v12];
  }

  return v7;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  v7 = [(MCCertificatePickerController *)self specifierAtIndex:[(MCCertificatePickerController *)self indexForIndexPath:path]];
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