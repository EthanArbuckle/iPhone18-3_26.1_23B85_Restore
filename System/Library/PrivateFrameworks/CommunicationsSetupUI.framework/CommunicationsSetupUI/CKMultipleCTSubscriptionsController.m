@interface CKMultipleCTSubscriptionsController
- (id)specifiers;
- (void)viewDidLoad;
@end

@implementation CKMultipleCTSubscriptionsController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CKMultipleCTSubscriptionsController;
  [(CKMultipleCTSubscriptionsController *)&v5 viewDidLoad];
  v3 = CommunicationsSetupUIBundle();
  v4 = [v3 localizedStringForKey:self->_controllerTitle value:self->_controllerTitle table:@"Messages"];

  [(CKMultipleCTSubscriptionsController *)self setTitle:v4];
}

- (id)specifiers
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v30 = *MEMORY[0x277D3FC48];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = CommunicationsSetupUIBundle();
    v6 = [v5 localizedStringForKey:self->_headerKey value:self->_headerKey table:@"Messages"];

    v29 = v6;
    [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:0 edit:0];
    v28 = v32 = v4;
    [v4 addObject:?];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [(CKMultipleCTSubscriptionsController *)self ctSubscriptions];
    v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v34;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          v12 = MEMORY[0x277D1A8F8];
          v13 = [v11 phoneNumber];
          v14 = [v11 labelID];
          v15 = [v12 IMUniqueIdentifierForPhoneNumber:v13 simID:v14];

          if (v15)
          {
            v16 = MEMORY[0x277D3FAD8];
            v17 = [v11 label];
            v18 = [v16 preferenceSpecifierNamed:v17 target:self set:sel_setEnabledForSubscription_specifier_ get:sel_isEnabledForSubscription_ detail:0 cell:6 edit:0];

            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", self->_defaultsKey, v15];
            [v18 setIdentifier:v19];
            v20 = [v11 labelID];

            if (v20)
            {
              v21 = [v11 labelID];
              [v18 setProperty:v21 forKey:@"simID"];
            }

            v22 = [v11 phoneNumber];

            if (v22)
            {
              v23 = [v11 phoneNumber];
              [v18 setProperty:v23 forKey:@"phoneNumber"];
            }

            [v32 addObject:v18];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v8);
    }

    v24 = [MEMORY[0x277CBEA60] arrayWithArray:v32];
    v25 = *(&self->super.super.super.super.super.isa + v30);
    *(&self->super.super.super.super.super.isa + v30) = v24;

    v3 = *(&self->super.super.super.super.super.isa + v30);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v3;
}

@end