@interface ACAccount(CalUserManagement)
- (id)cal_personaIdentifier;
@end

@implementation ACAccount(CalUserManagement)

- (id)cal_personaIdentifier
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = *MEMORY[0x1E69597A0];
    while (1)
    {
      objc_opt_class();
      v4 = [v2 objectForKeyedSubscript:v3];
      v5 = (objc_opt_isKindOfClass() & 1) != 0 ? v4 : 0;

      if (v5)
      {
        break;
      }

      v6 = [v2 parentAccount];

      v2 = v6;
      if (!v6)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v5 = 0;
  }

  return v5;
}

@end