@interface CertInfoCertificateDetailsController
- (CertInfoCertificateDetailsController)initWithCertificateProperties:(id)a3;
- (CertInfoCertificateDetailsController)initWithTrust:(__SecTrust *)a3 certificateIndex:(int64_t)a4;
- (CertInfoCertificateDetailsControllerDelegate)delegate;
- (id)_propertiesForIndexPath:(id)a3;
- (id)_sectionsForProperties:(id)a3 currentSectionDictionary:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_doneButtonPressed:(id)a3;
- (void)setShowsDoneButton:(BOOL)a3;
- (void)tableView:(id)a3 performAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6;
@end

@implementation CertInfoCertificateDetailsController

- (CertInfoCertificateDetailsController)initWithTrust:(__SecTrust *)a3 certificateIndex:(int64_t)a4
{
  v7 = self;
  if (a3)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CertInfoCertificateDetailsController initWithTrust:a2 certificateIndex:self];
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  [CertInfoCertificateDetailsController initWithTrust:a2 certificateIndex:v7];
LABEL_3:
  if (SecTrustGetCertificateCount(a3) <= a4)
  {
    v9 = 0;
  }

  else
  {
    v8 = SecTrustCopyDetailedPropertiesAtIndex();
    v9 = [(CertInfoCertificateDetailsController *)v7 initWithCertificateProperties:v8];
    v7 = v8;
  }

  return v9;
}

- (CertInfoCertificateDetailsController)initWithCertificateProperties:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CertInfoCertificateDetailsController;
  v5 = [(CertInfoCertificateDetailsController *)&v14 initWithStyle:1];
  v6 = v5;
  if (v5)
  {
    v7 = [(CertInfoCertificateDetailsController *)v5 _sectionsForProperties:v4];
    sectionDictionaries = v6->_sectionDictionaries;
    v6->_sectionDictionaries = v7;

    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v6 action:sel__doneButtonPressed_];
    doneButton = v6->_doneButton;
    v6->_doneButton = v9;

    v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
    v12 = [v11 localizedStringForKey:@"CERTIFICATE" value:&stru_28561D260 table:@"CertInfo"];
    [(CertInfoCertificateDetailsController *)v6 setTitle:v12];
  }

  return v6;
}

- (id)_sectionsForProperties:(id)a3 currentSectionDictionary:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v31 = [MEMORY[0x277CBEB18] array];
  v7 = [v6 objectForKey:@"CertInfoCertificateDetailsSectionPropertiesKey"];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    v11 = *MEMORY[0x277CDC500];
    v33 = *MEMORY[0x277CDC508];
    v32 = *MEMORY[0x277CDC528];
    v29 = *MEMORY[0x277CDC510];
    do
    {
      v12 = 0;
      v28 = v9;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        v14 = [v13 objectForKey:v11];
        v15 = [v13 objectForKey:v33];
        v16 = [v15 isEqualToString:v32];

        if (v16)
        {
          v17 = [v13 objectForKey:v29];
          if ([v17 count])
          {
            v18 = v11;
            v19 = v10;
            v20 = v7;
            v21 = [MEMORY[0x277CBEB18] array];
            v22 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v14, @"CertInfoCertificateDetailsSectionLabelKey", v21, @"CertInfoCertificateDetailsSectionPropertiesKey", 0}];
            v23 = [(CertInfoCertificateDetailsController *)self _sectionsForProperties:v17 currentSectionDictionary:v22];
            if ([v21 count])
            {
              [v31 addObject:v22];
            }

            if ([v23 count])
            {
              [v31 addObjectsFromArray:v23];
            }

            if ([v21 count] || objc_msgSend(v23, "count"))
            {

              v6 = 0;
            }

            v7 = v20;
            v10 = v19;
            v11 = v18;
            v9 = v28;
          }
        }

        else
        {
          if (!v6)
          {
            v24 = [MEMORY[0x277CBEB18] array];

            v6 = [MEMORY[0x277CBEB38] dictionaryWithObject:v24 forKey:@"CertInfoCertificateDetailsSectionPropertiesKey"];
            [v31 addObject:v6];
            v7 = v24;
          }

          [v7 addObject:v13];
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v9);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)setShowsDoneButton:(BOOL)a3
{
  *(self + 1064) = *(self + 1064) & 0xFE | a3;
  v4 = [(CertInfoCertificateDetailsController *)self navigationItem];
  v5 = [v4 rightBarButtonItem];
  doneButton = self->_doneButton;

  if ((*(self + 1064) & 1) == 0 || v5 == doneButton)
  {
    if ((*(self + 1064) & 1) != 0 || v5 != doneButton)
    {
      return;
    }

    v7 = 0;
  }

  else
  {
    v7 = self->_doneButton;
  }

  v8 = [(CertInfoCertificateDetailsController *)self navigationItem];
  [v8 setRightBarButtonItem:v7];
}

- (void)_doneButtonPressed:(id)a3
{
  v4 = [(CertInfoCertificateDetailsController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CertInfoCertificateDetailsController *)self delegate];
    [v6 certificateDetailsControllerDidFinish:self];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sectionDictionaries objectAtIndex:a4];
  v5 = [v4 objectForKey:@"CertInfoCertificateDetailsSectionPropertiesKey"];
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sectionDictionaries objectAtIndex:a4];
  v5 = [v4 objectForKey:@"CertInfoCertificateDetailsSectionLabelKey"];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"CertInfoCertificateDetailsControllerTableCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"CertInfoCertificateDetailsControllerTableCell"];
  }

  v8 = [(CertInfoCertificateDetailsController *)self _propertiesForIndexPath:v6];
  v9 = [v8 objectForKey:*MEMORY[0x277CDC500]];
  v10 = [v7 textLabel];
  [v10 setText:v9];

  v11 = _stringValueForPropertyDictionary(v8);
  v12 = [v7 detailTextLabel];
  [v12 setText:v11];

  return v7;
}

- (void)tableView:(id)a3 performAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6
{
  v16 = a3;
  v11 = a5;
  v12 = a6;
  if (sel_copy_ != a4)
  {
    [CertInfoCertificateDetailsController tableView:a2 performAction:self forRowAtIndexPath:? withSender:?];
  }

  v13 = [(CertInfoCertificateDetailsController *)self _propertiesForIndexPath:v11];
  v14 = _stringValueForPropertyDictionary(v13);

  if (v14)
  {
    v15 = [MEMORY[0x277D75810] generalPasteboard];
    [v15 setString:v14];
  }
}

- (id)_propertiesForIndexPath:(id)a3
{
  sectionDictionaries = self->_sectionDictionaries;
  v4 = a3;
  v5 = -[NSArray objectAtIndex:](sectionDictionaries, "objectAtIndex:", [v4 section]);
  v6 = [v5 objectForKey:@"CertInfoCertificateDetailsSectionPropertiesKey"];
  v7 = [v4 row];

  v8 = [v6 objectAtIndex:v7];

  return v8;
}

- (CertInfoCertificateDetailsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithTrust:(uint64_t)a1 certificateIndex:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CertInfoCertificateDetailsController.m" lineNumber:94 description:@"trust must be non-NULL"];
}

- (void)initWithTrust:(uint64_t)a1 certificateIndex:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CertInfoCertificateDetailsController.m" lineNumber:95 description:@"certificateIndex must be greater than or equal to zero"];
}

- (void)tableView:(uint64_t)a1 performAction:(uint64_t)a2 forRowAtIndexPath:withSender:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CertInfoCertificateDetailsController.m" lineNumber:248 description:@"can only perform copy:"];
}

@end