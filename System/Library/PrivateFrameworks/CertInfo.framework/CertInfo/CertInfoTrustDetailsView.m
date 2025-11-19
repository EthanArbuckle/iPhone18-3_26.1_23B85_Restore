@interface CertInfoTrustDetailsView
- (CertInfoTrustDetailsView)initWithFrame:(CGRect)a3 trustProperties:(id)a4;
- (void)_appendRemainingCertificates;
- (void)layoutSubviews;
@end

@implementation CertInfoTrustDetailsView

- (void)_appendRemainingCertificates
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_certificateViews;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        currentCertView = self->_currentCertView;
        if (*(*(&v10 + 1) + 8 * i) != currentCertView)
        {
          [(CertInfoCertificateDetailsView *)currentCertView appendInfoFromCertView:v10];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (CertInfoTrustDetailsView)initWithFrame:(CGRect)a3 trustProperties:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v31 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v29.receiver = self;
  v29.super_class = CertInfoTrustDetailsView;
  v10 = [(CertInfoTrustDetailsView *)&v29 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        v16 = 0;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * v16);
          v18 = [CertInfoCertificateDetailsView alloc];
          v19 = [(CertInfoCertificateDetailsView *)v18 initWithFrame:v17 certificateProperties:x, y, width, height, v25];
          [v11 addObject:v19];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v14);
    }

    if ([v11 count])
    {
      objc_storeStrong(&v10->_certificateViews, v11);
    }

    v20 = [(NSArray *)v10->_certificateViews objectAtIndex:0, v25];
    currentCertView = v10->_currentCertView;
    v10->_currentCertView = v20;

    [(CertInfoTrustDetailsView *)v10 addSubview:v10->_currentCertView];
    [(CertInfoTrustDetailsView *)v10 _appendRemainingCertificates];
    v22 = [MEMORY[0x277D75348] whiteColor];
    [(CertInfoTrustDetailsView *)v10 setBackgroundColor:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)layoutSubviews
{
  [(CertInfoTrustDetailsView *)self bounds];
  currentCertView = self->_currentCertView;

  [(CertInfoCertificateDetailsView *)currentCertView setFrame:?];
}

@end