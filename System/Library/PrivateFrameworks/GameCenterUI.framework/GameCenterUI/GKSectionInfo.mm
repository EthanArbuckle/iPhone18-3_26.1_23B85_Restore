@interface GKSectionInfo
- (id)description;
@end

@implementation GKSectionInfo

- (id)description
{
  items = [(GKSectionInfo *)self items];
  v4 = [items count];

  v22 = MEMORY[0x277CCACA8];
  v23.receiver = self;
  v23.super_class = GKSectionInfo;
  v5 = [(GKSectionInfo *)&v23 description];
  section = self->_section;
  if (section == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = &stru_28612D290;
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = _gkBeautifyVariableName();
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:self->_section];
    v20 = v9;
    v7 = [v8 stringWithFormat:@" %@: %@", v9, v19];
  }

  title = self->_title;
  if (title)
  {
    v11 = MEMORY[0x277CCACA8];
    v21 = _gkBeautifyVariableName();
    v12 = [v11 stringWithFormat:@" %@: %@", v21, self->_title];
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = &stru_28612D290;
    if (v4)
    {
LABEL_6:
      v13 = MEMORY[0x277CCACA8];
      v14 = _gkBeautifyVariableName();
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
      v16 = [v13 stringWithFormat:@" %@: %@", v14, v15];
      v17 = [v22 stringWithFormat:@"%@%@%@%@", v5, v7, v12, v16];

      if (!title)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v17 = [v22 stringWithFormat:@"%@%@%@%@", v5, v7, v12, &stru_28612D290];
  if (title)
  {
LABEL_7:
  }

LABEL_8:
  if (section != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  return v17;
}

@end