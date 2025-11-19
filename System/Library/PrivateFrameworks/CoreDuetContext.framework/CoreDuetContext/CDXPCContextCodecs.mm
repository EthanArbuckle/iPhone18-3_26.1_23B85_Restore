@interface CDXPCContextCodecs
@end

@implementation CDXPCContextCodecs

uint64_t __50___CDXPCContextCodecs_supportedClassesToUnarchive__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFA8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v5 = supportedClassesToUnarchive_supportedClasses;
  supportedClassesToUnarchive_supportedClasses = v4;

  v6 = supportedClassesToUnarchive_supportedClasses;
  v7 = +[_CDContextValue supportedContextValueClasses];
  [v6 unionSet:v7];

  v8 = supportedClassesToUnarchive_supportedClasses;
  v9 = *(a1 + 32);

  return [v8 unionSet:v9];
}

@end