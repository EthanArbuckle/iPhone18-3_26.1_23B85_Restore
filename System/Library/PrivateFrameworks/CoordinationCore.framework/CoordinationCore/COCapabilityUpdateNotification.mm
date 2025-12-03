@interface COCapabilityUpdateNotification
- (COCapabilityUpdateNotification)initWithCapabilities:(id)capabilities;
- (COCapabilityUpdateNotification)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COCapabilityUpdateNotification

- (COCapabilityUpdateNotification)initWithCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v9.receiver = self;
  v9.super_class = COCapabilityUpdateNotification;
  v5 = [(COMeshCommand *)&v9 init];
  if (v5)
  {
    v6 = [capabilitiesCopy copy];
    capabilities = v5->_capabilities;
    v5->_capabilities = v6;
  }

  return v5;
}

- (COCapabilityUpdateNotification)initWithCoder:(id)coder
{
  v28 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = COCapabilityUpdateNotification;
  v5 = [(COMeshCommand *)&v26 initWithCoder:coderCopy];
  if (v5)
  {
    p_isa = &v5->super.super.super.isa;
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"capabilities"];
    v11 = p_isa[1];
    p_isa[1] = v10;

    v12 = p_isa[1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = p_isa[1];
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

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = COCapabilityUpdateNotification;
  coderCopy = coder;
  [(COMeshCommand *)&v6 encodeWithCoder:coderCopy];
  v5 = [(COCapabilityUpdateNotification *)self capabilities:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"capabilities"];
}

@end