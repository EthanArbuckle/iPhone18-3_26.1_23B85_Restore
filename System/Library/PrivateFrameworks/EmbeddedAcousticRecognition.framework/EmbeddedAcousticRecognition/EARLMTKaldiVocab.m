@interface EARLMTKaldiVocab
@end

@implementation EARLMTKaldiVocab

void __52___EARLMTKaldiVocab_initWithContentsOfUrl_outError___block_invoke(void *a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (([v7 isEqualToString:&stru_1F2D44B60] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v9 = [v7 componentsSeparatedByCharactersInSet:v8];

    if ([v9 count] == 2)
    {
      v10 = [v9 objectAtIndex:0];
      v11 = [v9 objectAtIndex:1];
      if (a3 > 3)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, [v10 UTF8String]);
        v18 = a1[4];
        v19 = *(v18 + 64);
        v22 = __p;
        std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v18 + 40), __p)[5] = v19;
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else if ([v10 isEqualToString:@"<VocabSize>"])
      {
        *(*(a1[6] + 8) + 24) = [v11 intValue];
      }

      else if ([v10 isEqualToString:@"<UnknownWord>"])
      {
        objc_storeStrong((*(a1[7] + 8) + 40), v11);
      }

      else if ([v10 isEqualToString:@"<BeginOfSentenceWord>"])
      {
        objc_storeStrong((*(a1[8] + 8) + 40), v11);
      }

      else if ([v10 isEqualToString:@"<EndOfSentenceWord>"])
      {
        objc_storeStrong((*(a1[9] + 8) + 40), v11);
      }
    }

    else
    {
      v12 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Incorrect format of vocab file for line=%@", v7];
      v24[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v15 = [v12 errorWithDomain:@"com.apple.siri.languagemodeltraining" code:151 userInfo:v14];
      v16 = *(a1[5] + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      *a4 = 1;
    }
  }
}

@end