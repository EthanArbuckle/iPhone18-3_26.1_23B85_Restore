@interface CertInfoCertificateDetailsController
- (CertInfoCertificateDetailsController)initWithCertificateProperties:(id)properties;
- (CertInfoCertificateDetailsController)initWithTrust:(__SecTrust *)trust certificateIndex:(int64_t)index;
- (CertInfoCertificateDetailsControllerDelegate)delegate;
- (id)_propertiesForIndexPath:(id)path;
- (id)_sectionsForProperties:(id)properties currentSectionDictionary:(id)dictionary;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_doneButtonPressed:(id)pressed;
- (void)setShowsDoneButton:(BOOL)button;
- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender;
@end

@implementation CertInfoCertificateDetailsController

- (CertInfoCertificateDetailsController)initWithTrust:(__SecTrust *)trust certificateIndex:(int64_t)index
{
  selfCopy = self;
  if (trust)
  {
    if ((index & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CertInfoCertificateDetailsController initWithTrust:a2 certificateIndex:self];
    if ((index & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  [CertInfoCertificateDetailsController initWithTrust:a2 certificateIndex:selfCopy];
LABEL_3:
  if (SecTrustGetCertificateCount(trust) <= index)
  {
    v9 = 0;
  }

  else
  {
    v8 = SecTrustCopyDetailedPropertiesAtIndex();
    v9 = [(CertInfoCertificateDetailsController *)selfCopy initWithCertificateProperties:v8];
    selfCopy = v8;
  }

  return v9;
}

- (CertInfoCertificateDetailsController)initWithCertificateProperties:(id)properties
{
  propertiesCopy = properties;
  v14.receiver = self;
  v14.super_class = CertInfoCertificateDetailsController;
  v5 = [(CertInfoCertificateDetailsController *)&v14 initWithStyle:1];
  v6 = v5;
  if (v5)
  {
    v7 = [(CertInfoCertificateDetailsController *)v5 _sectionsForProperties:propertiesCopy];
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

- (id)_sectionsForProperties:(id)properties currentSectionDictionary:(id)dictionary
{
  v39 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  dictionaryCopy = dictionary;
  array = [MEMORY[0x277CBEB18] array];
  v7 = [dictionaryCopy objectForKey:@"CertInfoCertificateDetailsSectionPropertiesKey"];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = propertiesCopy;
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
            array2 = [MEMORY[0x277CBEB18] array];
            v22 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v14, @"CertInfoCertificateDetailsSectionLabelKey", array2, @"CertInfoCertificateDetailsSectionPropertiesKey", 0}];
            v23 = [(CertInfoCertificateDetailsController *)self _sectionsForProperties:v17 currentSectionDictionary:v22];
            if ([array2 count])
            {
              [array addObject:v22];
            }

            if ([v23 count])
            {
              [array addObjectsFromArray:v23];
            }

            if ([array2 count] || objc_msgSend(v23, "count"))
            {

              dictionaryCopy = 0;
            }

            v7 = v20;
            v10 = v19;
            v11 = v18;
            v9 = v28;
          }
        }

        else
        {
          if (!dictionaryCopy)
          {
            array3 = [MEMORY[0x277CBEB18] array];

            dictionaryCopy = [MEMORY[0x277CBEB38] dictionaryWithObject:array3 forKey:@"CertInfoCertificateDetailsSectionPropertiesKey"];
            [array addObject:dictionaryCopy];
            v7 = array3;
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

  return array;
}

- (void)setShowsDoneButton:(BOOL)button
{
  *(self + 1064) = *(self + 1064) & 0xFE | button;
  navigationItem = [(CertInfoCertificateDetailsController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  doneButton = self->_doneButton;

  if ((*(self + 1064) & 1) == 0 || rightBarButtonItem == doneButton)
  {
    if ((*(self + 1064) & 1) != 0 || rightBarButtonItem != doneButton)
    {
      return;
    }

    v7 = 0;
  }

  else
  {
    v7 = self->_doneButton;
  }

  navigationItem2 = [(CertInfoCertificateDetailsController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v7];
}

- (void)_doneButtonPressed:(id)pressed
{
  delegate = [(CertInfoCertificateDetailsController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CertInfoCertificateDetailsController *)self delegate];
    [delegate2 certificateDetailsControllerDidFinish:self];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sectionDictionaries objectAtIndex:section];
  v5 = [v4 objectForKey:@"CertInfoCertificateDetailsSectionPropertiesKey"];
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sectionDictionaries objectAtIndex:section];
  v5 = [v4 objectForKey:@"CertInfoCertificateDetailsSectionLabelKey"];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"CertInfoCertificateDetailsControllerTableCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"CertInfoCertificateDetailsControllerTableCell"];
  }

  v8 = [(CertInfoCertificateDetailsController *)self _propertiesForIndexPath:pathCopy];
  v9 = [v8 objectForKey:*MEMORY[0x277CDC500]];
  textLabel = [v7 textLabel];
  [textLabel setText:v9];

  v11 = _stringValueForPropertyDictionary(v8);
  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setText:v11];

  return v7;
}

- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender
{
  viewCopy = view;
  pathCopy = path;
  senderCopy = sender;
  if (sel_copy_ != action)
  {
    [CertInfoCertificateDetailsController tableView:a2 performAction:self forRowAtIndexPath:? withSender:?];
  }

  v13 = [(CertInfoCertificateDetailsController *)self _propertiesForIndexPath:pathCopy];
  v14 = _stringValueForPropertyDictionary(v13);

  if (v14)
  {
    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    [generalPasteboard setString:v14];
  }
}

- (id)_propertiesForIndexPath:(id)path
{
  sectionDictionaries = self->_sectionDictionaries;
  pathCopy = path;
  v5 = -[NSArray objectAtIndex:](sectionDictionaries, "objectAtIndex:", [pathCopy section]);
  v6 = [v5 objectForKey:@"CertInfoCertificateDetailsSectionPropertiesKey"];
  v7 = [pathCopy row];

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