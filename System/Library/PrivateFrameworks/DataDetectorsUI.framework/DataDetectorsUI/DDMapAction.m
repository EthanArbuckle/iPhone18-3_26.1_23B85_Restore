@interface DDMapAction
+ (BOOL)actionAvailableForContact:(id)a3;
+ (BOOL)handlesUrl:(id)a3 result:(__DDResult *)a4;
- (DDMapAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5;
- (id)menuActionClasses;
- (id)previewActions;
@end

@implementation DDMapAction

+ (BOOL)handlesUrl:(id)a3 result:(__DDResult *)a4
{
  v4 = DDMapsURLForUrlAndResult(a3, a4);
  v5 = v4 != 0;

  return v5;
}

- (DDMapAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5
{
  v8 = a5;
  v9 = DDMapsURLForUrlAndResult(a3, a4);
  v18.receiver = self;
  v18.super_class = DDMapAction;
  v10 = [(DDAction *)&v18 initWithURL:v9 result:a4 context:v8];

  if (v10)
  {
    contact = v10->super.super.super._contact;
    if (contact)
    {
      v12 = DDDefaultAddressForContact(contact);
      if (v12)
      {
        v13 = [MEMORY[0x277CBDB80] stringFromPostalAddress:v12 style:0];
        if ([v13 length])
        {
          v14 = DDMapURLForString(v13);
          url = v10->super.super.super._url;
          v10->super.super.super._url = v14;
        }
      }
    }

    v16 = v10;
  }

  return v10;
}

- (id)previewActions
{
  v16[5] = *MEMORY[0x277D85DE8];
  url = self->super.super.super._url;
  if (url)
  {
    v11 = 0;
    if ([(NSURL *)url dd_isMaps:&v11 isDirections:?])
    {
      if (self->super.super.super._contact || self->super.super.super._result && (v10 = *MEMORY[0x277D040E0], DDResultHasType()))
      {
        v16[0] = objc_opt_class();
        v16[1] = objc_opt_class();
        v16[2] = objc_opt_class();
        v16[3] = objc_opt_class();
        v16[4] = objc_opt_class();
        v4 = MEMORY[0x277CBEA60];
        v5 = v16;
        v6 = 5;
      }

      else
      {
        v15[0] = objc_opt_class();
        v15[1] = objc_opt_class();
        v15[2] = objc_opt_class();
        v15[3] = objc_opt_class();
        v4 = MEMORY[0x277CBEA60];
        v5 = v15;
        v6 = 4;
      }

      goto LABEL_10;
    }

    if (v11 == 1)
    {
      v14[0] = objc_opt_class();
      v14[1] = objc_opt_class();
      v14[2] = objc_opt_class();
      v4 = MEMORY[0x277CBEA60];
      v5 = v14;
    }

    else
    {
      v13[0] = objc_opt_class();
      v13[1] = objc_opt_class();
      v13[2] = objc_opt_class();
      v4 = MEMORY[0x277CBEA60];
      v5 = v13;
    }
  }

  else
  {
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v12[2] = objc_opt_class();
    v4 = MEMORY[0x277CBEA60];
    v5 = v12;
  }

  v6 = 3;
LABEL_10:
  v7 = [v4 arrayWithObjects:v5 count:v6];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)menuActionClasses
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(DDMapAction *)self previewActions];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v18 = *(*(&v14 + 1) + 8 * v8);
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (BOOL)actionAvailableForContact:(id)a3
{
  v3 = DDDefaultAddressForContact(a3);
  v4 = v3 != 0;

  return v4;
}

@end