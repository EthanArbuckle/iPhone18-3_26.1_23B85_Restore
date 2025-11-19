@interface COCapabilityReadResponse
- (COCapabilityReadResponse)init;
- (COCapabilityReadResponse)initWithCapabilities:(id)a3;
- (COCapabilityReadResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COCapabilityReadResponse

- (COCapabilityReadResponse)init
{
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [(COCapabilityReadResponse *)self initWithCapabilities:v3];

  return v4;
}

- (COCapabilityReadResponse)initWithCapabilities:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = COCapabilityReadResponse;
  v5 = [(COMeshCommand *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    capabilities = v5->_capabilities;
    v5->_capabilities = v6;
  }

  return v5;
}

- (COCapabilityReadResponse)initWithCoder:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = COCapabilityReadResponse;
  v5 = [(COMeshResponse *)&v26 initWithCoder:v4];
  if (v5)
  {
    p_isa = &v5->super.super.super.isa;
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"capabilities"];
    v11 = p_isa[2];
    p_isa[2] = v10;

    v12 = p_isa[2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = p_isa[2];
      v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v23;
        while (2)
        {
          v17 = 0;
          do
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v22 + 1) + 8 * v17);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v19 = 0;
              goto LABEL_15;
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v19 = p_isa;
    }

    else
    {
      v19 = 0;
      v13 = p_isa;
    }

LABEL_15:
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = COCapabilityReadResponse;
  v4 = a3;
  [(COMeshResponse *)&v6 encodeWithCoder:v4];
  v5 = [(COCapabilityReadResponse *)self capabilities:v6.receiver];
  [v4 encodeObject:v5 forKey:@"capabilities"];
}

@end