@interface PSSpecifier(DASettingsAdditions)
+ (id)buttonSpecifierWithTitle:()DASettingsAdditions target:action:confirmationInfo:;
+ (id)switchSpecifierWithTitle:()DASettingsAdditions target:setter:getter:key:;
@end

@implementation PSSpecifier(DASettingsAdditions)

+ (id)switchSpecifierWithTitle:()DASettingsAdditions target:setter:getter:key:
{
  v11 = a7;
  v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:a3 target:a4 set:a5 get:a6 detail:0 cell:6 edit:0];
  v13 = v12;
  if (v11)
  {
    [v12 setProperty:v11 forKey:*MEMORY[0x277D3FFF0]];
  }

  return v13;
}

+ (id)buttonSpecifierWithTitle:()DASettingsAdditions target:action:confirmationInfo:
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = 0x277D3FAD8;
  if (v11)
  {
    v12 = 0x277D3F9C8;
  }

  v13 = *v12;
  v14 = [objc_opt_class() preferenceSpecifierNamed:v9 target:v10 set:0 get:0 detail:0 cell:13 edit:0];
  v15 = v14;
  *&v14[*MEMORY[0x277D3FC80]] = a5;
  if (v11)
  {
    [v14 setupWithDictionary:v11];
  }

  return v15;
}

@end