@interface HMCRedirectorTuple
- (HMCRedirectorStrongTuple)strongify;
- (id)attributeDescriptions;
- (id)description;
- (id)target;
- (void)cancel;
@end

@implementation HMCRedirectorTuple

- (id)description
{
  v3 = [(HMCRedirectorTuple *)&self->super.super.isa target];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);

  if (self)
  {
    selector = self->_selector;
  }

  else
  {
    selector = 0;
  }

  v7 = NSStringFromSelector(selector);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"<HMCRedirectorTuple -[%@ %@]>", v5, v7];

  return v8;
}

- (id)target
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 2);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMCRedirectorTuple *)&self->super.super.isa target];
  v5 = [v3 initWithName:@"Target" value:v4];
  v13[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  if (self)
  {
    selector = self->_selector;
  }

  else
  {
    selector = 0;
  }

  v8 = NSStringFromSelector(selector);
  v9 = [v6 initWithName:@"Selector" value:v8];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)cancel
{
  if (self && (WeakRetained = objc_loadWeakRetained(&self->_owner), v3 = self, WeakRetained))
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = [MEMORY[0x277CBEB58] set];
    os_unfair_lock_lock_with_options();
    v6 = *(WeakRetained + 3);
    v7 = [v6 dictionaryRepresentation];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __29__HMCRedirector_removeTuple___block_invoke;
    v38[3] = &unk_278688078;
    v8 = v3;
    v39 = v8;
    v9 = v4;
    v40 = v9;
    [v7 enumerateKeysAndObjectsUsingBlock:v38];

    v10 = *(WeakRetained + 4);
    v11 = [v10 dictionaryRepresentation];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __29__HMCRedirector_removeTuple___block_invoke_2;
    v35[3] = &unk_278688078;
    v12 = v8;
    v36 = v12;
    v13 = v9;
    v37 = v13;
    [v11 enumerateKeysAndObjectsUsingBlock:v35];

    v14 = *(WeakRetained + 6);
    v15 = [v14 dictionaryRepresentation];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __29__HMCRedirector_removeTuple___block_invoke_3;
    v32[3] = &unk_278688078;
    v16 = v12;
    v33 = v16;
    v17 = v13;
    v34 = v17;
    [v15 enumerateKeysAndObjectsUsingBlock:v32];

    v18 = *(WeakRetained + 5);
    v19 = [v18 dictionaryRepresentation];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __29__HMCRedirector_removeTuple___block_invoke_4;
    v29[3] = &unk_2786880A0;
    v20 = v16;
    v30 = v20;
    v21 = v5;
    v31 = v21;
    [v19 enumerateKeysAndObjectsUsingBlock:v29];

    v22 = *(WeakRetained + 7);
    v23 = [v22 dictionaryRepresentation];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __29__HMCRedirector_removeTuple___block_invoke_5;
    v26[3] = &unk_2786880A0;
    v27 = v20;
    v24 = v21;
    v28 = v24;
    [v23 enumerateKeysAndObjectsUsingBlock:v26];

    __removeRegistrations(WeakRetained, v17, v24);
    os_unfair_lock_unlock(WeakRetained + 2);
  }

  else
  {
    WeakRetained = 0;
  }
}

- (HMCRedirectorStrongTuple)strongify
{
  v1 = a1;
  if (a1)
  {
    v2 = [HMCRedirectorStrongTuple alloc];
    v3 = v1;
    if (v2)
    {
      v8.receiver = v2;
      v8.super_class = HMCRedirectorStrongTuple;
      v4 = [(HMCRedirectorStrongTuple *)&v8 init];
      v2 = v4;
      if (!v4)
      {
LABEL_6:
        v2 = v2;
        v1 = v2;
LABEL_8:

        goto LABEL_9;
      }

      objc_storeStrong(v4 + 1, v1);
      v5 = [(HMCRedirectorTuple *)&v3->super.super.isa target];
      target = v2->_target;
      v2->_target = v5;

      if (v2->_target)
      {
        v2->_selector = v3->_selector;
        goto LABEL_6;
      }
    }

    v1 = 0;
    goto LABEL_8;
  }

LABEL_9:

  return v1;
}

@end