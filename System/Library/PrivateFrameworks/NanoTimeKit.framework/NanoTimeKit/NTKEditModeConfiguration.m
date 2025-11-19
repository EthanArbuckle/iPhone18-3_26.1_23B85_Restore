@interface NTKEditModeConfiguration
- (BOOL)_hasSameSlotOptions:(id)a3 andNilOption:(id)a4;
- (BOOL)_lock_hasSameSlotOptions:(id)a3 andNilOption:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NTKEditModeConfiguration)init;
- (NTKEditModeConfiguration)initWithCoder:(id)a3;
- (NTKEditModeConfiguration)initWithJSONObjectRepresentation:(id)a3 device:(id)a4 editOptionFactory:(id)a5;
- (NTKEditModeConfiguration)initWithJSONObjectRepresentation:(id)a3 editOptionClass:(Class)a4 forDevice:(id)a5;
- (id)JSONObjectRepresentationForFace:(id)a3;
- (id)_lock_JSONObjectRepresentationForFace:(id)a3;
- (id)_lock_alphabeticalSlots;
- (id)_lock_dailySnapshotKey;
- (id)_lock_description;
- (id)_lock_editOptionForSlot:(id)a3;
- (id)dailySnapshotKey;
- (id)description;
- (id)editOptionForSlot:(id)a3;
- (id)optionsBySlot;
- (unint64_t)_lock_hash;
- (unint64_t)hash;
- (void)_lock_encodeWithCoder:(id)a3;
- (void)_lock_setEditOption:(id)a3 forSlot:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateSlotsWithBlock:(id)a3;
- (void)setEditOption:(id)a3 forSlot:(id)a4;
@end

@implementation NTKEditModeConfiguration

- (id)optionsBySlot
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_optionsBySlot copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)enumerateSlotsWithBlock:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NTKEditModeConfiguration *)self optionsBySlot];
  v6 = v5;
  v16 = 0;
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [v5 allKeys];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v4[2](v4, *(*(&v12 + 1) + 8 * v11), &v16);
        if (v16)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  else
  {
    v4[2](v4, 0, &v16);
  }
}

- (void)setEditOption:(id)a3 forSlot:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NTKEditModeConfiguration *)self _lock_setEditOption:v7 forSlot:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setEditOption:(id)a3 forSlot:(id)a4
{
  v14 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  nilSlotOption = self->_nilSlotOption;
  if (!v7)
  {
    optionsBySlot = self->_optionsBySlot;
    if (!optionsBySlot)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  if (nilSlotOption)
  {
    optionsBySlot = self->_optionsBySlot;
LABEL_5:
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"_nilSlotOption = %@, _optionsBySlot = %@, requested slot = %@", nilSlotOption, optionsBySlot, v7];
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Cannot have nil and non-nil custom edit mode slots for same edit mode. (%@)", v10}];

    if (v7)
    {
      goto LABEL_6;
    }

LABEL_10:
    objc_storeStrong(&self->_nilSlotOption, a3);
    goto LABEL_12;
  }

LABEL_6:
  if (!self->_optionsBySlot)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = self->_optionsBySlot;
    self->_optionsBySlot = v11;
  }

  v13 = self->_optionsBySlot;
  if (v14)
  {
    [(NSMutableDictionary *)v13 setObject:v14 forKey:v7];
  }

  else
  {
    [(NSMutableDictionary *)v13 removeObjectForKey:v7];
  }

LABEL_12:
}

- (id)editOptionForSlot:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NTKEditModeConfiguration *)self _lock_editOptionForSlot:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_lock_editOptionForSlot:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_optionsBySlot objectForKey:v4];
  }

  else
  {
    v5 = self->_nilSlotOption;
  }

  v6 = v5;

  return v6;
}

- (id)dailySnapshotKey
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NTKEditModeConfiguration *)self _lock_dailySnapshotKey];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_lock_dailySnapshotKey
{
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_optionsBySlot copy];
  v4 = [(NTKEditModeConfiguration *)self _lock_alphabeticalSlots];
  if (v3)
  {
    v5 = [MEMORY[0x277CCAB68] string];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [v3 objectForKey:*(*(&v20 + 1) + 8 * i)];
          v11 = [v10 dailySnapshotKey];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
          }

          else
          {
            v13 = &stru_284110E98;
          }

          v14 = v13;

          [(__CFString *)v5 appendFormat:@"(%@)", v14];
        }

        v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v15 = [(NTKEditOption *)self->_nilSlotOption dailySnapshotKey];
    v16 = v15;
    v17 = &stru_284110E98;
    if (v15)
    {
      v17 = v15;
    }

    v5 = v17;
  }

  return v5;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NTKEditModeConfiguration *)self _lock_description];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_lock_description
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_optionsBySlot copy];
  v4 = [(NTKEditModeConfiguration *)self _lock_alphabeticalSlots];
  if (v3)
  {
    v5 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [v3 objectForKey:{*(*(&v14 + 1) + 8 * i), v14}];
          v12 = [v11 description];

          if (v12)
          {
            if ([v5 length] >= 2)
            {
              [v5 appendString:{@", "}];
            }

            [v5 appendString:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [v5 appendString:@""]);
  }

  else
  {
    v5 = [(NTKEditOption *)self->_nilSlotOption description];
  }

  return v5;
}

- (id)_lock_alphabeticalSlots
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_optionsBySlot allKeys];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NTKEditModeConfiguration *)self _lock_encodeWithCoder:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_encodeWithCoder:(id)a3
{
  v6 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  optionsBySlot = self->_optionsBySlot;
  if (optionsBySlot)
  {
    v5 = @"optionsBySlot";
  }

  else
  {
    optionsBySlot = self->_nilSlotOption;
    v5 = @"nilSlotOption";
  }

  [v6 encodeObject:optionsBySlot forKey:v5];
}

- (NTKEditModeConfiguration)init
{
  v3.receiver = self;
  v3.super_class = NTKEditModeConfiguration;
  result = [(NTKEditModeConfiguration *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (NTKEditModeConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NTKEditModeConfiguration;
  v5 = [(NTKEditModeConfiguration *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"optionsBySlot"];
    if (v11)
    {
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      NTKValidateDictionary(v11, v12, v13);
      if (![v11 count])
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:@"_EditModeConfiguration archive contains empty options-by-slot dictionary. Dictionary should be nil or non-empty."];
      }

      v14 = [v11 mutableCopy];
      v15 = 16;
    }

    else
    {
      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nilSlotOption"];
      v15 = 24;
    }

    v16 = *(&v6->super.isa + v15);
    *(&v6->super.isa + v15) = v14;
  }

  return v6;
}

- (BOOL)_hasSameSlotOptions:(id)a3 andNilOption:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NTKEditModeConfiguration *)self _lock_hasSameSlotOptions:v7 andNilOption:v6];

  os_unfair_lock_unlock(&self->_lock);
  return v8;
}

- (BOOL)_lock_hasSameSlotOptions:(id)a3 andNilOption:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v8 = NTKEqualObjects(self->_optionsBySlot, v7);

  if (v8)
  {
    v9 = NTKEqualObjects(self->_nilSlotOption, v6);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [v4 _hasSameSlotOptions:self->_optionsBySlot andNilOption:self->_nilSlotOption];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NTKEditModeConfiguration *)self _lock_hash];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (unint64_t)_lock_hash
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_optionsBySlot hash];
  return [(NTKEditOption *)self->_nilSlotOption hash]+ v3;
}

- (id)JSONObjectRepresentationForFace:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NTKEditModeConfiguration *)self _lock_JSONObjectRepresentationForFace:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_lock_JSONObjectRepresentationForFace:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_optionsBySlot copy];
  if (v5)
  {
    v6 = objc_opt_new();
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__NTKEditModeConfiguration__lock_JSONObjectRepresentationForFace___block_invoke;
    v10[3] = &unk_278784990;
    v11 = v6;
    v12 = v4;
    v7 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:v10];
    v13 = @"slots";
    v14[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  else
  {
    v8 = [(NTKEditOption *)self->_nilSlotOption JSONObjectRepresentationForFace:v4];
  }

  return v8;
}

void __66__NTKEditModeConfiguration__lock_JSONObjectRepresentationForFace___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [a3 JSONObjectRepresentationForFace:v5];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (NTKEditModeConfiguration)initWithJSONObjectRepresentation:(id)a3 editOptionClass:(Class)a4 forDevice:(id)a5
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__NTKEditModeConfiguration_initWithJSONObjectRepresentation_editOptionClass_forDevice___block_invoke;
  v6[3] = &__block_descriptor_40_e47___NTKEditOption_24__0__NSString_8__CLKDevice_16lu32l8;
  v6[4] = a4;
  return [(NTKEditModeConfiguration *)self initWithJSONObjectRepresentation:a3 device:a5 editOptionFactory:v6];
}

id __87__NTKEditModeConfiguration_initWithJSONObjectRepresentation_editOptionClass_forDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [[v4 alloc] initWithJSONObjectRepresentation:v6 forDevice:v5];

  return v7;
}

- (NTKEditModeConfiguration)initWithJSONObjectRepresentation:(id)a3 device:(id)a4 editOptionFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = NTKEditModeConfiguration;
  v11 = [(NTKEditModeConfiguration *)&v21 init];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v8 objectForKeyedSubscript:@"slots"], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      nilSlotOption = v13;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"value for '%@' must be a dictionary - invalid value: %@", @"slots", nilSlotOption}];
      }

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __86__NTKEditModeConfiguration_initWithJSONObjectRepresentation_device_editOptionFactory___block_invoke;
      v17[3] = &unk_278786928;
      v20 = v10;
      v18 = v9;
      v19 = v12;
      [nilSlotOption enumerateKeysAndObjectsUsingBlock:v17];
    }

    else
    {
      v15 = (*(v10 + 2))(v10, v8, v9);
      nilSlotOption = v12->_nilSlotOption;
      v12->_nilSlotOption = v15;
    }
  }

  return v12;
}

void __86__NTKEditModeConfiguration_initWithJSONObjectRepresentation_device_editOptionFactory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"key in '%@' dictionary must be a string - invalid value: %@", @"slots", v7}];
  }

  v6 = (*(*(a1 + 48) + 16))();
  [*(a1 + 40) setEditOption:v6 forSlot:v7];
}

@end