@interface XRVMCoalescedRegion
- (BOOL)isFakeAggregate;
- (XRVMCoalescedRegion)initWithCoder:(id)a3;
- (XRVMCoalescedRegion)initWithRegions:(id)a3 groupName:(id)a4;
- (id)displayPath;
- (id)displayType;
- (void)addRegion:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation XRVMCoalescedRegion

- (XRVMCoalescedRegion)initWithRegions:(id)a3 groupName:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = XRVMCoalescedRegion;
  v8 = [(XRVMCoalescedRegion *)&v31 init];
  if (v8)
  {
    if ([v6 count])
    {
      objc_storeStrong(&v8->_groupName, a4);
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      subRegions = v8->_subRegions;
      v8->_subRegions = v9;

      v11 = [v6 objectAtIndex:0];
      v12 = [v11 location];
      v13 = MEMORY[0x277D85F70];
      v14 = MEMORY[0x277D85F88];
      v15 = *MEMORY[0x277D85F70];
      if (*MEMORY[0x277D85F70] >= *MEMORY[0x277D85F88])
      {
        v15 = *MEMORY[0x277D85F88];
      }

      v8->super.start = v12 & ~v15;
      v16 = [v6 lastObject];
      v17 = [v16 location];
      v18 = [v16 virtualSize];
      v19 = *v13;
      if (*v13 >= *v14)
      {
        v19 = *v14;
      }

      v8->super.length = (v18 + v17 - v8->super.start + v19) & ~v19;
      -[XRVMRegion setPageSize:](v8, "setPageSize:", [v11 pageSize]);
      v8->super.current_prot = *(v11 + 24);
      v8->super.max_prot = *(v11 + 28);
      v8->super.external_pager = *(v11 + 32);
      v8->super.share_mode = *(v11 + 33);
      v8->super.user_tag = *(v11 + 34);
      objc_storeStrong(&v8->super.path, *(v11 + 40));
      objc_storeStrong(&v8->super.type, *(v11 + 48));
      v8->super.region_page_shift = *(v11 + 76);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v20 = v6;
      v21 = [v20 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v28;
        do
        {
          v24 = 0;
          do
          {
            if (*v28 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [(XRVMCoalescedRegion *)v8 addRegion:*(*(&v27 + 1) + 8 * v24++), v27];
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v22);
      }
    }

    else
    {
      v11 = v8;
      v8 = 0;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)addRegion:(id)a3
{
  v4 = a3;
  if ((v4[35] & 1) == 0)
  {
    v20 = v4;
    [(NSMutableArray *)self->_subRegions addObject:v4];
    v5 = [v20 isNullRegion];
    v6 = v20;
    if ((v5 & 1) == 0)
    {
      self->_virtualSize += *(v20 + 2);
      if (self->super.current_prot != *(v20 + 6))
      {
        self->_multiplicityFlags |= 1u;
      }

      if (self->super.max_prot != *(v20 + 7))
      {
        self->_multiplicityFlags |= 2u;
      }

      if (self->super.external_pager != v20[32])
      {
        self->_multiplicityFlags |= 4u;
      }

      share_mode = self->super.share_mode;
      if (share_mode != v20[33])
      {
        self->_multiplicityFlags |= 8u;
        share_mode = v20[33];
      }

      if (self->super.user_tag != share_mode)
      {
        self->_multiplicityFlags |= 0x10u;
      }

      p_path = &self->super.path;
      path = self->super.path;
      if (path || (v12 = *(v20 + 5)) != 0 && (objc_storeStrong(&self->super.path, v12), v6 = v20, (path = *p_path) != 0))
      {
        v10 = *(v6 + 5);
        if (v10)
        {
          if (path != v10)
          {
            v11 = [(NSString *)path isEqualToString:?];
            v6 = v20;
            if (!v11)
            {
              self->_multiplicityFlags |= 0x20u;
            }
          }
        }
      }

      p_type = &self->super.type;
      type = self->super.type;
      if (type || (v17 = *(v6 + 6)) != 0 && (objc_storeStrong(&self->super.type, v17), v6 = v20, (type = *p_type) != 0))
      {
        v15 = *(v6 + 6);
        if (v15)
        {
          if (type != v15)
          {
            v16 = [(NSString *)type isEqualToString:?];
            v6 = v20;
            if (!v16)
            {
              self->_multiplicityFlags |= 0x40u;
            }
          }
        }
      }

      pages_shared_now_private = self->super.pages_shared_now_private;
      self->super.pages_resident += *(v6 + 14);
      self->super.pages_shared_now_private = pages_shared_now_private + *(v6 + 15);
      pages_dirtied = self->super.pages_dirtied;
      self->super.pages_swapped_out += *(v6 + 16);
      self->super.pages_dirtied = pages_dirtied + *(v6 + 17);
    }
  }

  MEMORY[0x2821F97C8]();
}

- (BOOL)isFakeAggregate
{
  if ([(NSString *)self->_groupName isEqualToString:XRVMDirtyRegionAggregateName])
  {
    return 1;
  }

  groupName = self->_groupName;
  v5 = XRVMAllRegionAggregateName;

  return [(NSString *)groupName isEqualToString:v5];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = objc_opt_class();
  v6 = NSStringFromClass(v4);
  Name = sel_getName(a2);
  NSLog(&cfstr_SCalledDonT.isa, v6, Name);
}

- (XRVMCoalescedRegion)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  Name = sel_getName(a2);
  NSLog(&cfstr_SCalledDonT.isa, v7, Name);

  v11.receiver = self;
  v11.super_class = XRVMCoalescedRegion;
  v9 = [(XRVMRegion *)&v11 initWithCoder:v5];

  return v9;
}

- (id)displayType
{
  groupName = self->_groupName;
  if (groupName)
  {
    v3 = groupName;
  }

  else if ((self->_multiplicityFlags & 0x40) != 0)
  {
    v3 = @"< multiple >";
  }

  else
  {
    v5.receiver = self;
    v5.super_class = XRVMCoalescedRegion;
    v3 = [(XRVMRegion *)&v5 displayType];
  }

  return v3;
}

- (id)displayPath
{
  if ((self->_multiplicityFlags & 0x20) != 0)
  {
    v3 = @"< multiple >";
  }

  else
  {
    v5.receiver = self;
    v5.super_class = XRVMCoalescedRegion;
    v3 = [(XRVMRegion *)&v5 displayPath];
  }

  return v3;
}

@end