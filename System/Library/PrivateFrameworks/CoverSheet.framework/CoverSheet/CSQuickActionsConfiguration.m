@interface CSQuickActionsConfiguration
- (CSQuickActionsConfiguration)initWithPosterActionsConfiguration:(id)a3;
- (int64_t)_categoryFromPosterCategory:(int64_t)a3;
- (int64_t)_typeFromControlType:(unint64_t)a3;
@end

@implementation CSQuickActionsConfiguration

- (CSQuickActionsConfiguration)initWithPosterActionsConfiguration:(id)a3
{
  v29[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = CSQuickActionsConfiguration;
  v5 = [(CSQuickActionsConfiguration *)&v28 init];
  if (v5)
  {
    v6 = [v4 leadingControl];
    v7 = [v4 trailingControl];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __66__CSQuickActionsConfiguration_initWithPosterActionsConfiguration___block_invoke;
    v26 = &unk_27838DAC0;
    v8 = v5;
    v27 = v8;
    v9 = MEMORY[0x223D698D0](&v23);
    if (v6)
    {
      if ([v6 category] == 3)
      {
        v10 = (v9)[2](v9, v6, 1);
        goto LABEL_8;
      }

      v13 = [CSQuickActionControl alloc];
      v12 = -[CSQuickActionsConfiguration _categoryFromPosterCategory:](v8, "_categoryFromPosterCategory:", [v6 category]);
      v11 = v13;
    }

    else
    {
      v11 = [CSQuickActionControl alloc];
      v12 = 1;
    }

    v10 = [(CSQuickActionControl *)v11 initWithCategory:v12 position:1, v23, v24, v25, v26];
LABEL_8:
    v14 = v10;
    if (v7)
    {
      if ([v7 category] == 3)
      {
        v15 = (v9)[2](v9, v7, 2);
LABEL_14:
        v19 = v15;
        v29[0] = v14;
        v29[1] = v15;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
        controls = v8->_controls;
        v8->_controls = v20;

        goto LABEL_15;
      }

      v18 = [CSQuickActionControl alloc];
      v17 = -[CSQuickActionsConfiguration _categoryFromPosterCategory:](v8, "_categoryFromPosterCategory:", [v7 category]);
      v16 = v18;
    }

    else
    {
      v16 = [CSQuickActionControl alloc];
      v17 = 2;
    }

    v15 = [(CSQuickActionControl *)v16 initWithCategory:v17 position:2];
    goto LABEL_14;
  }

LABEL_15:

  return v5;
}

CSQuickActionSystemControl *__66__CSQuickActionsConfiguration_initWithPosterActionsConfiguration___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [CSQuickActionSystemControl alloc];
  v7 = [v5 identity];
  v8 = *(a1 + 32);
  v9 = [v5 type];

  v10 = -[CSQuickActionSystemControl initWithControlIdentity:type:position:](v6, "initWithControlIdentity:type:position:", v7, [v8 _typeFromControlType:v9], a3);

  return v10;
}

- (int64_t)_categoryFromPosterCategory:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (int64_t)_typeFromControlType:(unint64_t)a3
{
  if (a3 - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end