@interface SNNError
+ (id)errorWithCode:(int64_t)a3 description:(id)a4;
+ (id)invalidEspressoConfigurationErrorForMethod:(id)a3 description:(id)a4;
+ (id)invalidEspressoContextErrorForMethod:(id)a3 description:(id)a4;
+ (id)invalidEspressoNetworkErrorForMethod:(id)a3 description:(id)a4;
+ (id)invalidEspressoPlanErrorForMethod:(id)a3 description:(id)a4;
+ (id)invalidInputErrorForMethod:(id)a3 description:(id)a4;
+ (id)invalidMILProgramErrorForMethod:(id)a3 description:(id)a4;
+ (id)invalidStateErrorForMethod:(id)a3 description:(id)a4;
@end

@implementation SNNError

+ (id)errorWithCode:(int64_t)a3 description:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MEMORY[0x277CCA9B8];
  v16 = *MEMORY[0x277CCA450];
  v17[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v8 = [v6 errorWithDomain:@"com.apple.coreml.foundation" code:a3 userInfo:v7];

  v9 = +[SNNLogging framework];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_25BA90000, v9, OS_LOG_TYPE_INFO, "%@ : %@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)invalidStateErrorForMethod:(id)a3 description:(id)a4
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid state : %@", a3, a4];
  v6 = [a1 errorWithCode:-1 description:v5];

  return v6;
}

+ (id)invalidInputErrorForMethod:(id)a3 description:(id)a4
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid inputs : %@", a3, a4];
  v6 = [a1 errorWithCode:-2 description:v5];

  return v6;
}

+ (id)invalidMILProgramErrorForMethod:(id)a3 description:(id)a4
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid MIL program : %@", a3, a4];
  v6 = [a1 errorWithCode:-3 description:v5];

  return v6;
}

+ (id)invalidEspressoContextErrorForMethod:(id)a3 description:(id)a4
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid Espresso context : %@", a3, a4];
  v6 = [a1 errorWithCode:-4 description:v5];

  return v6;
}

+ (id)invalidEspressoPlanErrorForMethod:(id)a3 description:(id)a4
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid Espresso plan : %@", a3, a4];
  v6 = [a1 errorWithCode:-5 description:v5];

  return v6;
}

+ (id)invalidEspressoNetworkErrorForMethod:(id)a3 description:(id)a4
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid Espresso network : %@", a3, a4];
  v6 = [a1 errorWithCode:-6 description:v5];

  return v6;
}

+ (id)invalidEspressoConfigurationErrorForMethod:(id)a3 description:(id)a4
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid Espresso configuration : %@", a3, a4];
  v6 = [a1 errorWithCode:-7 description:v5];

  return v6;
}

@end