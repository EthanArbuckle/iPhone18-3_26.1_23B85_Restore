@interface _EARUserProfileConfig
- (_EARPeopleSuggesterConfig)peopleSuggesterConfig;
- (_EARUserProfileConfig)initWithConfiguration:(id)a3 overrides:(id)a4;
@end

@implementation _EARUserProfileConfig

- (_EARUserProfileConfig)initWithConfiguration:(id)a3 overrides:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = _EARUserProfileConfig;
  [(_EARUserProfileConfig *)&v19 init];
  v8 = v7;
  v10 = 0;
  v11 = &v10;
  v12 = 0x5812000000;
  v13 = __Block_byref_object_copy__350;
  v14 = __Block_byref_object_dispose__351;
  v15 = &unk_1B5CADD23;
  memset(v16, 0, sizeof(v16));
  v17 = 1065353216;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___ZN10EARHelpers24DictionaryToUnorderedMapINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_Z57___EARUserProfileConfig_initWithConfiguration_overrides__E3__0S8_EENS1_13unordered_mapIT_T0_NS1_4hashISA_EENS1_8equal_toISA_EENS5_INS1_4pairIKSA_SB_EEEEEEP12NSDictionaryT1_T2__block_invoke;
  v20[3] = &unk_1E7C1A308;
  v20[4] = &v10;
  [v8 enumerateKeysAndObjectsUsingBlock:v20];
  std::unordered_map<std::string,std::string>::unordered_map(v18, (v11 + 6));
  _Block_object_dispose(&v10, 8);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v16);

  quasar::SystemConfig::SystemConfig(&v10);
}

- (_EARPeopleSuggesterConfig)peopleSuggesterConfig
{
  v2 = [[_EARPeopleSuggesterConfig alloc] initWithContactsCount:*self->lmeConfig.__ptr_ bestContactsCount:*(self->lmeConfig.__ptr_ + 1) bestContactsBonus:*(self->lmeConfig.__ptr_ + 2)];

  return v2;
}

@end