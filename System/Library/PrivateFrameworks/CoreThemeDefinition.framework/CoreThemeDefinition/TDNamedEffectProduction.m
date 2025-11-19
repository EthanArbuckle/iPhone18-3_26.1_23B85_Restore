@interface TDNamedEffectProduction
- (id)displayName;
@end

@implementation TDNamedEffectProduction

- (id)displayName
{
  if ([(TDNamedEffectProduction *)self name])
  {
    v3 = [-[TDNamedEffectProduction name](self "name")];
  }

  else
  {
    v3 = -[TDNamedEffectProduction _nameAssociatedWithNameIdentifier:](self, "_nameAssociatedWithNameIdentifier:", [-[TDNamedEffectProduction baseKeySpec](self "baseKeySpec")]);
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v3];
}

@end