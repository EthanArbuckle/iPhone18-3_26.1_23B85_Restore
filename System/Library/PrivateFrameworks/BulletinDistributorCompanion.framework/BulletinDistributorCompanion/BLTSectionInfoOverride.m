@interface BLTSectionInfoOverride
- (BLTSectionInfoOverride)initWithOverrides:(id)a3;
@end

@implementation BLTSectionInfoOverride

- (BLTSectionInfoOverride)initWithOverrides:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BLTSectionInfoOverride;
  v5 = [(BLTSectionInfoOverride *)&v25 init];
  v6 = v5;
  if (!v4 || !v5)
  {
    goto LABEL_23;
  }

  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277CF33F8]];
  if ([v7 integerValue])
  {
    level = v6->_level;
    v6->_level = &unk_28544B4D8;
    goto LABEL_10;
  }

  level = [v4 objectForKeyedSubscript:*MEMORY[0x277CF33F0]];
  if ([level integerValue])
  {
    v9 = &unk_28544B4F0;
  }

  else
  {
    if (!(v7 | level))
    {
      goto LABEL_10;
    }

    v9 = &unk_28544B508;
  }

  v10 = v6->_level;
  v6->_level = v9;

LABEL_10:
  v11 = [v4 objectForKeyedSubscript:*MEMORY[0x277CF33D8]];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 unsignedIntegerValue];
    if (v13 <= 2)
    {
      grouping = v6->_grouping;
      v6->_grouping = qword_278D31D18[v13];
    }
  }

  v15 = [v4 objectForKeyedSubscript:*MEMORY[0x277CF3410]];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 unsignedIntegerValue];
    sound = v6->_sound;
    v19 = &unk_28544B4F0;
    if (!v17)
    {
      v19 = &unk_28544B508;
    }

    v6->_sound = v19;
  }

  v20 = [v4 objectForKeyedSubscript:*MEMORY[0x277CF33E0]];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 unsignedIntegerValue];
    criticalAlert = v6->_criticalAlert;
    if (v22)
    {
      v6->_criticalAlert = &unk_28544B4D8;
    }

    else
    {
      v6->_criticalAlert = &unk_28544B4F0;
    }
  }

  else
  {
    criticalAlert = v6->_criticalAlert;
    v6->_criticalAlert = &unk_28544B508;
  }

LABEL_23:
  return v6;
}

@end