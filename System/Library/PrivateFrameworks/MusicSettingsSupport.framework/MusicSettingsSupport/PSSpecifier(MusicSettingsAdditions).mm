@interface PSSpecifier(MusicSettingsAdditions)
- (char)music_copy;
- (id)_music_specifierGetter;
- (id)music_getValue;
- (uint64_t)music_areDisplayValuesEqual:()MusicSettingsAdditions;
- (void)_music_specifierButtonAction:()MusicSettingsAdditions;
- (void)_music_specifierSetter:()MusicSettingsAdditions;
@end

@implementation PSSpecifier(MusicSettingsAdditions)

- (void)_music_specifierButtonAction:()MusicSettingsAdditions
{
  v10 = a3;
  v4 = [self objectForKeyedSubscript:@"__musicTarget"];
  v5 = v4;
  if (v4)
  {
    v6 = (*(v4 + 16))(v4);
    if (v6)
    {
      v7 = [self objectForKeyedSubscript:@"__musicButtonAction"];
      v8 = NSSelectorFromString(v7);
      v9 = MusicSettingsPerformSelector2(v8, v6, v10, 0);
    }
  }
}

- (void)_music_specifierSetter:()MusicSettingsAdditions
{
  v10 = a3;
  [self setObject:? forKeyedSubscript:?];
  v4 = [self objectForKeyedSubscript:@"__musicTarget"];
  v5 = v4;
  if (v4)
  {
    v6 = (*(v4 + 16))(v4);
    if (v6)
    {
      v7 = [self objectForKeyedSubscript:@"__musicSetter"];
      v8 = NSSelectorFromString(v7);
      v9 = MusicSettingsPerformSelector2(v8, v6, v10, self);
    }
  }
}

- (id)_music_specifierGetter
{
  v2 = [self objectForKeyedSubscript:@"__musicTarget"];
  v3 = v2;
  if (v2 && ((*(v2 + 16))(v2), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [self objectForKeyedSubscript:@"__musicGetter"];
    v7 = NSSelectorFromString(v6);
    v8 = MusicSettingsPerformSelector2(v7, v5, self, 0);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)music_getValue
{
  WeakRetained = objc_loadWeakRetained(&self[*MEMORY[0x277D3FCB8]]);
  if (WeakRetained && (v3 = *&self[*MEMORY[0x277D3FCA8]]) != 0)
  {
    v4 = MusicSettingsPerformSelector2(v3, WeakRetained, self, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)music_areDisplayValuesEqual:()MusicSettingsAdditions
{
  v5 = a3;
  if (!v5)
  {
    goto LABEL_6;
  }

  identifier = [self identifier];
  identifier2 = [v5 identifier];
  v8 = [identifier isEqualToString:identifier2];

  if ((v8 & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MusicSettingsUtilities.m" lineNumber:52 description:@"Can only compare display values for the same specifier identifier"];
  }

  name = [self name];
  name2 = [v5 name];
  v11 = name2;
  if (name == name2)
  {

LABEL_8:
    if (*&self[*MEMORY[0x277D3FC90]])
    {
      v16 = [self objectForKeyedSubscript:@"__musicCachedValue"];
      v17 = [v5 objectForKeyedSubscript:@"__musicCachedValue"];
      if (v16 != v17 && ![v16 isEqual:v17])
      {
        v15 = 0;
        goto LABEL_17;
      }

      v18 = *MEMORY[0x277D3FFC0];
      v19 = [self objectForKeyedSubscript:*MEMORY[0x277D3FFC0]];
      v20 = [v5 objectForKeyedSubscript:v18];
      v15 = v19 == v20;
    }

    else
    {
      v21 = *MEMORY[0x277D3FF88];
      v16 = [self objectForKeyedSubscript:*MEMORY[0x277D3FF88]];
      v17 = [v5 objectForKeyedSubscript:v21];
      if (v16 == v17)
      {
        v15 = 1;
        goto LABEL_17;
      }

      v19 = [self objectForKeyedSubscript:v21];
      v20 = [v5 objectForKeyedSubscript:v21];
      v15 = [v19 isEqualToString:v20];
    }

LABEL_17:
    goto LABEL_18;
  }

  name3 = [self name];
  name4 = [v5 name];
  v14 = [name3 isEqualToString:name4];

  if (v14)
  {
    goto LABEL_8;
  }

LABEL_6:
  v15 = 0;
LABEL_18:

  return v15 & 1;
}

- (char)music_copy
{
  v2 = [objc_opt_class() specifierWithSpecifier:self];
  if (*&self[*MEMORY[0x277D3FC90]])
  {
    v3 = *MEMORY[0x277D3FCB8];
    WeakRetained = objc_loadWeakRetained(&self[v3]);
    if (WeakRetained)
    {
      objc_initWeak(&location, WeakRetained);
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __49__PSSpecifier_MusicSettingsAdditions__music_copy__block_invoke;
      v18 = &unk_2799263C0;
      objc_copyWeak(&v19, &location);
      v5 = MEMORY[0x25F856670](&v15);
      [v2 setObject:v5 forKeyedSubscript:{@"__musicTarget", v15, v16, v17, v18}];

      objc_storeWeak(&v2[v3], v2);
      v6 = *MEMORY[0x277D3FCA8];
      v7 = *&self[v6];
      if (v7)
      {
        v8 = NSStringFromSelector(v7);
        [v2 setObject:v8 forKeyedSubscript:@"__musicGetter"];

        *&v2[v6] = sel__music_specifierGetter;
      }

      v9 = *MEMORY[0x277D3FCB0];
      v10 = *&self[v9];
      if (v10)
      {
        v11 = NSStringFromSelector(v10);
        [v2 setObject:v11 forKeyedSubscript:@"__musicSetter"];

        *&v2[v9] = sel__music_specifierSetter_;
      }

      if ([self buttonAction])
      {
        v12 = NSStringFromSelector([self buttonAction]);
        [v2 setObject:v12 forKeyedSubscript:@"__musicButtonAction"];

        [v2 setButtonAction:sel__music_specifierButtonAction_];
      }

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    music_getValue = [v2 music_getValue];
    [v2 setObject:music_getValue forKeyedSubscript:@"__musicCachedValue"];
  }

  return v2;
}

@end