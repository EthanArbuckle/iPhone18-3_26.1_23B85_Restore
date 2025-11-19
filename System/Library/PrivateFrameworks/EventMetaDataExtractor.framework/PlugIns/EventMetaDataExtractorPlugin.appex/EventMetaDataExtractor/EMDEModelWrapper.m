@interface EMDEModelWrapper
- (BOOL)prepareInputsForText:(id)a3 error:(id *)a4;
- (__CFArray)runEncoderForInput:()vector<float;
- (basic_string<char,)allowedHelperWords;
- (basic_string<char,)inputStringLowercased;
- (basic_string<char,)inputStringLowercasedForTitles;
- (id).cxx_construct;
- (id)runBeamInferenceForDate;
- (id)runBeamInferenceForTitle;
- (vector<float,)inputTokens;
- (void)dealloc;
- (void)loadConfigFromFile:(id)a3 assetFolderPath:(id)a4 error:(id *)a5;
- (void)setInputTokens:()vector<float;
@end

@implementation EMDEModelWrapper

- (void)loadConfigFromFile:(id)a3 assetFolderPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v9)
  {
    [EMDEUtils loadConfigFromFile:v8 assetFolderPath:v9 error:a5];
    self->_lexicon = 0;
    v11 = +[EMDEUtils config];
    v12 = [v11 objectForKeyedSubscript:@"EMDE_DISABLE_OVS_VALIDATION"];
    if (v12)
    {
      v13 = +[EMDEUtils config];
      v14 = [v13 objectForKeyedSubscript:@"EMDE_DISABLE_OVS_VALIDATION"];

      if (v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, kLXLexiconLocaleKey, @"en");
    v19 = LXLexiconCreate();
    self->_lexicon = v19;
    if (!v19)
    {
      v20 = CFErrorCopyDescription(0);
      v21 = extractionLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10008BB28();
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    CFRelease(Mutable);
  }

  else
  {
    v15 = modelLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10008BB98();
    }

    if (a5)
    {
      v22 = NSLocalizedDescriptionKey;
      v16 = [NSString stringWithFormat:@"Found nil in input parameters for loadConfigFromFile"];
      v23 = v16;
      v17 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

      *a5 = [NSError errorWithDomain:@"com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin" code:500 userInfo:v17];
    }
  }

LABEL_17:
}

- (BOOL)prepareInputsForText:(id)a3 error:(id *)a4
{
  v6 = a3;
  v136 = v6;
  if (!v6)
  {
    v13 = modelLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10008BC5C();
    }

    if (!a4)
    {
      v16 = 0;
      goto LABEL_212;
    }

    v184 = NSLocalizedDescriptionKey;
    v14 = [NSString stringWithFormat:@"Found nil in input parameters for prepareInputsForText"];
    v185 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v185 forKeys:&v184 count:1];

    [NSError errorWithDomain:@"com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin" code:500 userInfo:v15];
    *a4 = v16 = 0;
    goto LABEL_211;
  }

  v7 = [EMDEUtils preProcessInputMessage:v6];
  v143 = [v7 mutableCopy];

  v8 = +[EMDEUtils config];
  v9 = [v8 objectForKeyedSubscript:@"EMDE_TOKENISER_VERSION"];
  if (v9)
  {
    v10 = +[EMDEUtils config];
    v11 = [v10 objectForKeyedSubscript:@"EMDE_TOKENISER_VERSION"];
    v12 = [v11 intValue];

    if (v12 != 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  [v143 insertString:@" " atIndex:0];
LABEL_11:
  [EMDEUtils tokenizeInputSequence:v143];
  begin = self->_inputTokens.__begin_;
  if (begin)
  {
    self->_inputTokens.__end_ = begin;
    operator delete(begin);
    self->_inputTokens.__begin_ = 0;
    self->_inputTokens.__end_ = 0;
    self->_inputTokens.__cap_ = 0;
  }

  v18 = *buf;
  self->_inputTokens.__begin_ = *buf;
  v19 = *&buf[8];
  *&self->_inputTokens.__end_ = *&buf[8];
  if (v19 != v18)
  {
    v20 = +[EMDEUtils config];
    v21 = [v20 objectForKeyedSubscript:@"EMDE_DISABLE_OVS_VALIDATION"];
    v148 = self;
    if (v21)
    {
      v22 = +[EMDEUtils config];
      v23 = [v22 objectForKeyedSubscript:@"EMDE_DISABLE_OVS_VALIDATION"];
      v24 = v23 == 0;

      if (!v24)
      {
        goto LABEL_31;
      }
    }

    else
    {
    }

    v27 = [EMDEUtils profaneRangesForText:v143 usingLexicon:self->_lexicon];
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v28 = [v27 reverseObjectEnumerator];
    v29 = [v28 countByEnumeratingWithState:&v167 objects:v181 count:16];
    if (v29)
    {
      v30 = *v168;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v168 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = [*(*(&v167 + 1) + 8 * i) rangeValue];
          [v143 replaceCharactersInRange:v32 withString:{v33, &stru_1000AF768}];
        }

        v29 = [v28 countByEnumeratingWithState:&v167 objects:v181 count:16];
      }

      while (v29);
    }

    self = v148;
LABEL_31:
    v34 = [v143 lowercaseString];
    v35 = v34;
    sub_100009A74(buf, [v34 UTF8String]);
    if (*(&self->_inputStringLowercased.__rep_.__l + 23) < 0)
    {
      operator delete(self->_inputStringLowercased.__rep_.__l.__data_);
    }

    *self->_inputStringLowercased.__rep_.__s.__data_ = *buf;
    *(&self->_inputStringLowercased.__rep_.__l + 2) = *&buf[16];
    buf[23] = 0;
    buf[0] = 0;

    __s = &self->_inputStringLowercasedForTitles;
    std::string::operator=(&self->_inputStringLowercasedForTitles, &self->_inputStringLowercased);
    v36 = +[EMDEUtils config];
    v37 = [v36 objectForKeyedSubscript:@"EMDE_DISCARD_TITLE_BEAMS_WITH_DATES"];
    v38 = v37 == 0;

    if (!v38)
    {
      v140 = objc_alloc_init(DDScannerHelper);
      v39 = +[NSLocale currentLocale];
      v141 = [(DDScannerHelper *)v140 runDataDetectorsOnBody:v143 locale:v39];

      v40 = [v141 objectForKeyedSubscript:@"error"];
      LODWORD(v39) = v40 == 0;

      if (v39)
      {
        v165 = 0u;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
        v41 = [v141 objectForKeyedSubscript:@"extractions"];
        obj = [v41 reverseObjectEnumerator];

        v42 = [obj countByEnumeratingWithState:&v163 objects:v180 count:16];
        if (v42)
        {
          v43 = *v164;
          do
          {
            for (j = 0; j != v42; j = j + 1)
            {
              if (*v164 != v43)
              {
                objc_enumerationMutation(obj);
              }

              v45 = *(*(&v163 + 1) + 8 * j);
              v46 = [v45 objectForKeyedSubscript:@"type"];
              if ([v46 isEqualToString:@"NSTextCheckingTypeDate"])
              {
                v47 = [v45 objectForKeyedSubscript:@"containsContextualWords"];
                v48 = [v47 BOOLValue];

                if ((v48 & 1) == 0)
                {
                  v49 = modelLogHandle();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                  {
                    v50 = [v45 objectForKeyedSubscript:@"text"];
                    *buf = 138477827;
                    *&buf[4] = v50;
                    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "EMDEModelWrapper - Removing date for title validation: %{private}@", buf, 0xCu);
                  }

                  v51 = [v45 objectForKeyedSubscript:@"range"];
                  v52 = [v51 objectForKeyedSubscript:@"start"];
                  v53 = [v52 intValue];

                  v54 = [v45 objectForKeyedSubscript:@"range"];
                  v55 = [v54 objectForKeyedSubscript:@"end"];
                  LODWORD(v52) = [v55 intValue];

                  [v143 replaceCharactersInRange:v53 withString:{v52 - v53, &stru_1000AF768}];
                }
              }

              else
              {
              }
            }

            v42 = [obj countByEnumeratingWithState:&v163 objects:v180 count:16];
          }

          while (v42);
        }
      }

      v56 = [v143 lowercaseString];
      v57 = v56;
      sub_100009A74(buf, [v56 UTF8String]);
      if (*(&self->_inputStringLowercasedForTitles.__rep_.__l + 23) < 0)
      {
        operator delete(__s->__rep_.__l.__data_);
      }

      *__s->__rep_.__s.__data_ = *buf;
      *(&self->_inputStringLowercasedForTitles.__rep_.__l + 2) = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
    }

    memset(&__str, 0, sizeof(__str));
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v58 = +[EMDEUtils config];
    v59 = [v58 objectForKeyedSubscript:@"EMDE_ALLOWED_KEYWORDS_SINGLE_EVENT"];
    v60 = v59;
    sub_100009A74(&__p, [v59 UTF8String]);
    sub_10000F0B8(buf, &__p, 8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    while (1)
    {
      v61 = sub_10000F23C(buf, &v159);
      if ((*(v61 + *(*v61 - 24) + 32) & 5) != 0)
      {
        break;
      }

      sub_100009A74(&__dst, "");
      memset(&__p, 0, sizeof(__p));
      sub_10000CA74(&__p, &__dst, &v176, 1uLL);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v62 = +[EMDEUtils config];
      v63 = [v62 objectForKeyedSubscript:@"EMDE_VALIDATE_ONLY_ALLOWED_PREFIX"];
      v64 = v63 == 0;

      if (!v64)
      {
        +[EMDEUtils allowedPrefixes];
        sub_10000CF24(&__p);
        __p = __dst;
        memset(&__dst, 0, sizeof(__dst));
        v173[0] = &__dst;
        sub_10000CCE0(v173);
      }

      size = __p.__r_.__value_.__l.__size_;
      for (k = __p.__r_.__value_.__r.__words[0]; k != size; k += 24)
      {
        if (*(k + 23) < 0)
        {
          sub_100019AD4(&__dst, *k, *(k + 8));
        }

        else
        {
          v67 = *k;
          __dst.__r_.__value_.__r.__words[2] = *(k + 16);
          *&__dst.__r_.__value_.__l.__data_ = v67;
        }

        sub_10000C4D4(&__dst.__r_.__value_.__l.__data_, &v159, v173);
        v68 = *(&v148->_inputStringLowercasedForTitles.__rep_.__l + 23);
        if (v68 < 0)
        {
          data = v148->_inputStringLowercasedForTitles.__rep_.__l.__data_;
          v68 = v148->_inputStringLowercasedForTitles.__rep_.__l.__size_;
        }

        else
        {
          data = __s;
        }

        v70 = SHIBYTE(v174);
        v71 = v173[0];
        if (v174 >= 0)
        {
          v72 = v173;
        }

        else
        {
          v72 = v173[0];
        }

        if (v174 >= 0)
        {
          v73 = HIBYTE(v174);
        }

        else
        {
          v73 = v173[1];
        }

        if (!v73)
        {
          v76 = 0;
          if ((SHIBYTE(v174) & 0x80000000) == 0)
          {
            goto LABEL_93;
          }

LABEL_92:
          operator delete(v71);
          goto LABEL_93;
        }

        v74 = &data->__rep_.__s.__data_[v68];
        if (v68 >= v73)
        {
          v77 = *v72;
          v78 = data;
          do
          {
            v79 = v68 - v73;
            if (v79 == -1)
            {
              break;
            }

            v80 = memchr(v78, v77, v79 + 1);
            if (!v80)
            {
              break;
            }

            v75 = v80;
            if (!memcmp(v80, v72, v73))
            {
              goto LABEL_85;
            }

            v78 = (v75 + 1);
            v68 = v74 - (v75 + 1);
          }

          while (v68 >= v73);
          v75 = v74;
        }

        else
        {
          v75 = &data->__rep_.__s.__data_[v68];
        }

LABEL_85:
        v76 = v75 == v74 || v75 - data == -1;
        if (v70 < 0)
        {
          goto LABEL_92;
        }

LABEL_93:
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (!v76)
        {
          goto LABEL_118;
        }
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v82 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v82 = __str.__r_.__value_.__l.__size_;
      }

      sub_10000D358(&__dst, v82 + 1);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if (v82)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        memmove(p_dst, p_str, v82);
      }

      *(&p_dst->__r_.__value_.__l.__data_ + v82) = 32;
      if (v161 >= 0)
      {
        v85 = &v159;
      }

      else
      {
        v85 = v159;
      }

      if (v161 >= 0)
      {
        v86 = HIBYTE(v161);
      }

      else
      {
        v86 = v160;
      }

      v87 = std::string::append(&__dst, v85, v86);
      v88 = v87->__r_.__value_.__r.__words[0];
      v173[0] = v87->__r_.__value_.__l.__size_;
      *(v173 + 7) = *(&v87->__r_.__value_.__r.__words[1] + 7);
      v89 = HIBYTE(v87->__r_.__value_.__r.__words[2]);
      v87->__r_.__value_.__l.__size_ = 0;
      v87->__r_.__value_.__r.__words[2] = 0;
      v87->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str.__r_.__value_.__r.__words[0] = v88;
      __str.__r_.__value_.__l.__size_ = v173[0];
      *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v173 + 7);
      *(&__str.__r_.__value_.__s + 23) = v89;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

LABEL_118:
      __dst.__r_.__value_.__r.__words[0] = &__p;
      sub_10000CCE0(&__dst);
      self = v148;
    }

    std::string::operator=(&self->_allowedHelperWords, &__str);
    v90 = +[EMDEUtils config];
    v91 = [v90 objectForKeyedSubscript:@"EMDE_ALLOWED_KEYWORDS_DUAL_EVENT"];
    v92 = v91 == 0;

    if (!v92)
    {
      sub_100009A74(&__dst, " ");
      v93 = +[EMDEUtils config];
      v94 = [v93 objectForKeyedSubscript:@"EMDE_ALLOWED_KEYWORDS_DUAL_EVENT"];
      v95 = v94;
      v96 = std::string::append(&__dst, [v94 UTF8String]);
      v97 = *&v96->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v97;
      v96->__r_.__value_.__l.__size_ = 0;
      v96->__r_.__value_.__r.__words[2] = 0;
      v96->__r_.__value_.__r.__words[0] = 0;

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      sub_10000C4D4(&__p.__r_.__value_.__l.__data_, &__p.__r_.__value_.__l.__data_, &__dst);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v98 = &__dst;
      }

      else
      {
        v98 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v99 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v99 = __dst.__r_.__value_.__l.__size_;
      }

      std::string::append(&self->_allowedHelperWords, v98, v99);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v100 = +[EMDEUtils config];
    v101 = [v100 objectForKeyedSubscript:@"EMDE_ALLOWED_KEYWORDS_CONDITIONAL"];

    if (v101)
    {
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v142 = v101;
      v102 = [v142 countByEnumeratingWithState:&v154 objects:v172 count:16];
      if (!v102)
      {
        goto LABEL_203;
      }

      v137 = v101;
      v138 = *v155;
      while (1)
      {
        v103 = 0;
        v139 = v102;
        do
        {
          if (*v155 != v138)
          {
            objc_enumerationMutation(v142);
          }

          v104 = *(*(&v154 + 1) + 8 * v103);
          sub_100009A74(&__dst, "");
          memset(&__p, 0, sizeof(__p));
          sub_10000CA74(&__p, &__dst, &v176, 1uLL);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v105 = +[EMDEUtils config];
          v106 = [v105 objectForKeyedSubscript:@"EMDE_VALIDATE_ONLY_ALLOWED_PREFIX"];
          v144 = v103;
          v107 = v106 == 0;

          if (!v107)
          {
            +[EMDEUtils allowedPrefixes];
            sub_10000CF24(&__p);
            __p = __dst;
            memset(&__dst, 0, sizeof(__dst));
            v173[0] = &__dst;
            sub_10000CCE0(v173);
          }

          v108 = v104;
          sub_100009A74(&__dst, [v104 UTF8String]);
          obja = v104;
          v110 = __p.__r_.__value_.__l.__size_;
          for (m = __p.__r_.__value_.__r.__words[0]; m != v110; m += 24)
          {
            if (*(m + 23) < 0)
            {
              sub_100019AD4(v173, *m, *(m + 8));
            }

            else
            {
              v111 = *m;
              v174 = *(m + 16);
              *v173 = v111;
            }

            sub_10000C4D4(v173, &__dst.__r_.__value_.__l.__data_, &v153);
            v112 = *(&v148->_inputStringLowercasedForTitles.__rep_.__l + 23);
            if (v112 < 0)
            {
              v113 = v148->_inputStringLowercasedForTitles.__rep_.__l.__data_;
              v112 = v148->_inputStringLowercasedForTitles.__rep_.__l.__size_;
            }

            else
            {
              v113 = __s;
            }

            v114 = SHIBYTE(v153.__r_.__value_.__r.__words[2]);
            v115 = *&v153.__r_.__value_.__l.__data_;
            if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v116 = &v153;
            }

            else
            {
              v116 = v153.__r_.__value_.__r.__words[0];
            }

            if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v117 = HIBYTE(v153.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v117 = v153.__r_.__value_.__l.__size_;
            }

            if (v117)
            {
              v118 = &v113->__rep_.__s.__data_[v112];
              if (v112 >= v117)
              {
                v122 = v116->__r_.__value_.__s.__data_[0];
                v123 = v113;
                do
                {
                  v124 = v112 - v117;
                  if (v124 == -1)
                  {
                    break;
                  }

                  v125 = memchr(v123, v122, v124 + 1);
                  if (!v125)
                  {
                    break;
                  }

                  v119 = v125;
                  if (!memcmp(v125, v116, v117))
                  {
                    goto LABEL_159;
                  }

                  v123 = (v119 + 1);
                  v112 = v118 - (v119 + 1);
                }

                while (v112 >= v117);
              }

              v119 = v118;
LABEL_159:
              v121 = v119 == v118 || v119 - v113 == -1;
              if (v114 < 0)
              {
LABEL_166:
                operator delete(v115);
              }
            }

            else
            {
              v121 = 0;
              if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_166;
              }
            }

            if (SHIBYTE(v174) < 0)
            {
              operator delete(v173[0]);
            }

            if (!v121)
            {
              goto LABEL_199;
            }
          }

          v126 = [v142 objectForKeyedSubscript:obja];
          v151 = 0u;
          v152 = 0u;
          v149 = 0u;
          v150 = 0u;
          v127 = v126;
          v128 = [v127 countByEnumeratingWithState:&v149 objects:v171 count:16];
          if (v128)
          {
            v129 = *v150;
            while (2)
            {
              for (n = 0; n != v128; n = n + 1)
              {
                if (*v150 != v129)
                {
                  objc_enumerationMutation(v127);
                }

                if ([v143 rangeOfString:*(*(&v149 + 1) + 8 * n) options:1] != 0x7FFFFFFFFFFFFFFFLL)
                {
                  sub_100009A74(&v153, [obja UTF8String]);
                  v131 = std::string::insert(&v153, 0, " ");
                  v132 = *&v131->__r_.__value_.__l.__data_;
                  v174 = v131->__r_.__value_.__r.__words[2];
                  *v173 = v132;
                  v131->__r_.__value_.__l.__size_ = 0;
                  v131->__r_.__value_.__r.__words[2] = 0;
                  v131->__r_.__value_.__r.__words[0] = 0;
                  if (v174 >= 0)
                  {
                    v133 = v173;
                  }

                  else
                  {
                    v133 = v173[0];
                  }

                  if (v174 >= 0)
                  {
                    v134 = HIBYTE(v174);
                  }

                  else
                  {
                    v134 = v173[1];
                  }

                  std::string::append(&v148->_allowedHelperWords, v133, v134);
                  if (SHIBYTE(v174) < 0)
                  {
                    operator delete(v173[0]);
                  }

                  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v153.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_198;
                }
              }

              v128 = [v127 countByEnumeratingWithState:&v149 objects:v171 count:16];
              if (v128)
              {
                continue;
              }

              break;
            }
          }

LABEL_198:

LABEL_199:
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst.__r_.__value_.__r.__words[0] = &__p;
          sub_10000CCE0(&__dst);
          v103 = v144 + 1;
          v101 = v137;
        }

        while ((v144 + 1) != v139);
        v102 = [v142 countByEnumeratingWithState:&v154 objects:v172 count:16];
        if (!v102)
        {
LABEL_203:

          break;
        }
      }
    }

    if (v179 < 0)
    {
      operator delete(v178[7].__locale_);
    }

    std::locale::~locale(v178);
    std::istream::~istream();
    std::ios::~ios();
    v15 = v143;
    if (SHIBYTE(v161) < 0)
    {
      operator delete(v159);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v16 = 1;
    goto LABEL_211;
  }

  v25 = modelLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_10008BC1C();
  }

  if (a4)
  {
    v182 = NSLocalizedDescriptionKey;
    v183 = @"Tokenisation failed.";
    v26 = [NSDictionary dictionaryWithObjects:&v183 forKeys:&v182 count:1];
    *a4 = [NSError errorWithDomain:@"com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin" code:500 userInfo:v26];
  }

  v16 = 0;
  v15 = v143;
LABEL_211:

LABEL_212:
  return v16;
}

- (id)runBeamInferenceForDate
{
  v3 = modelLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "EMDEModelWrapper - Beginning to run inference for date generation", buf, 2u);
  }

  *buf = 0;
  v66 = 0;
  v67 = 0;
  sub_100011160(buf, self->_inputTokens.__begin_, self->_inputTokens.__end_, self->_inputTokens.__end_ - self->_inputTokens.__begin_);
  v4 = +[EMDEUtils config];
  v5 = [v4 objectForKeyedSubscript:@"EMDE_DATE_TRIGGER_TOKEN_ID"];
  v6 = v5 == 0;

  if (!v6)
  {
    v7 = +[EMDEUtils config];
    v8 = [v7 objectForKeyedSubscript:@"EMDE_TOKENISER_VERSION"];
    if (v8)
    {
      v9 = +[EMDEUtils config];
      v10 = [v9 objectForKeyedSubscript:@"EMDE_TOKENISER_VERSION"];
      v11 = [v10 intValue] > 1;

      if (v11)
      {
        v12 = *buf;
        v13 = +[EMDEUtils config];
        v14 = [v13 objectForKeyedSubscript:@"EMDE_DATE_TRIGGER_TOKEN_ID"];
        [v14 floatValue];
        LODWORD(__src.__r_.__value_.__l.__data_) = v15;
        sub_1000114E4(buf, (v12 + 4), &__src, &__src.__r_.__value_.__s.__data_[4], 1);

        goto LABEL_9;
      }
    }

    else
    {
    }

    v16 = *buf;
    v17 = +[EMDEUtils config];
    v18 = [v17 objectForKeyedSubscript:@"EMDE_DATE_TRIGGER_TOKEN_ID"];
    [v18 floatValue];
    LODWORD(__src.__r_.__value_.__l.__data_) = v19;
    v20 = +[EMDEUtils config];
    v21 = [v20 objectForKeyedSubscript:@"EMDE_COLON_TOKEN_ID"];
    [v21 floatValue];
    HIDWORD(__src.__r_.__value_.__r.__words[0]) = v22;
    sub_1000114E4(buf, (v16 + 4), &__src, &__src.__r_.__value_.__s.__data_[8], 2);
  }

LABEL_9:
  v23 = +[EMDEUtils config];
  v24 = [v23 objectForKeyedSubscript:@"EMDE_MAX_INPUT_LEN"];
  v25 = [v24 intValue];
  v26 = +[EMDEUtils config];
  v27 = [v26 objectForKeyedSubscript:@"EMDE_DATE_DECODER_LEN"];
  v28 = [v27 intValue];

  v30 = v66;
  v31 = (v66 - *buf) >> 2;
  if (v31 > (v25 - v28))
  {
    v29 = v25 - v28;
    if (*buf + 4 * (v25 - v28) != v66)
    {
      v30 = *buf + 4 * v29;
      v66 = v30;
      v31 = (4 * v29) >> 2;
    }
  }

  __p = 0;
  v63 = 0;
  v64 = 0;
  sub_100011160(&__p, *buf, v30, v31);
  v32 = [(EMDEModelWrapper *)self runEncoderForInput:&__p];
  if (__p)
  {
    v63 = __p;
    operator delete(__p);
  }

  if (v32)
  {
    v33 = *buf;
    v34 = v66;
    v59 = +[EMDEUtils config];
    v56 = [v59 objectForKeyedSubscript:@"EMDE_BEAM_WIDTH"];
    v35 = [v56 intValue];
    v58 = +[EMDEUtils config];
    v57 = [v58 objectForKeyedSubscript:@"EMDE_DATE_LENGTH_PENALTY"];
    [v57 floatValue];
    v37 = v36;
    v54 = +[EMDEUtils config];
    [v54 objectForKeyedSubscript:@"EMDE_DATE_DECODER_LEN"];
    v55 = v38 = v35;
    v39 = [v55 intValue];
    v40 = +[EMDEUtils config];
    v41 = [v40 objectForKeyedSubscript:@"EMDE_DEFAULT_TOKEN_THRESHOLD"];
    [v41 floatValue];
    v43 = v42;
    if (*(&self->_allowedHelperWords.__rep_.__l + 23) >= 0)
    {
      size = *(&self->_allowedHelperWords.__rep_.__l + 23);
    }

    else
    {
      size = self->_allowedHelperWords.__rep_.__l.__size_;
    }

    p_src = &__src;
    sub_10000D358(&__src, size + 1);
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if (*(&self->_allowedHelperWords.__rep_.__l + 23) >= 0)
      {
        p_allowedHelperWords = &self->_allowedHelperWords;
      }

      else
      {
        p_allowedHelperWords = self->_allowedHelperWords.__rep_.__l.__data_;
      }

      memmove(p_src, p_allowedHelperWords, size);
    }

    *(&p_src->__r_.__value_.__l.__data_ + size) = 32;
    v47 = *(&self->_inputStringLowercased.__rep_.__l + 23);
    if (v47 >= 0)
    {
      p_inputStringLowercased = &self->_inputStringLowercased;
    }

    else
    {
      p_inputStringLowercased = self->_inputStringLowercased.__rep_.__l.__data_;
    }

    if (v47 >= 0)
    {
      v49 = *(&self->_inputStringLowercased.__rep_.__l + 23);
    }

    else
    {
      v49 = self->_inputStringLowercased.__rep_.__l.__size_;
    }

    v50 = std::string::append(&__src, p_inputStringLowercased->__rep_.__s.__data_, v49);
    v51 = *&v50->__r_.__value_.__l.__data_;
    v61 = v50->__r_.__value_.__r.__words[2];
    *v60 = v51;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    LODWORD(v51) = v37;
    v52 = [(EMDEModelWrapper *)self runBeamDecodingOnStates:v32 startPosition:(v34 - v33) >> 2 beamWidth:v38 lengthPenalty:v39 maxDecoderLen:v43 tokenThreshold:v60 allowedWords:*&v51];
    if (SHIBYTE(v61) < 0)
    {
      operator delete(v60[0]);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v52 = 0;
  }

  if (*buf)
  {
    v66 = *buf;
    operator delete(*buf);
  }

  return v52;
}

- (id)runBeamInferenceForTitle
{
  v3 = modelLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "EMDEModelWrapper - Beginning to run inference for title generation", buf, 2u);
  }

  *buf = 0;
  v74 = 0;
  v75 = 0;
  sub_100011160(buf, self->_inputTokens.__begin_, self->_inputTokens.__end_, self->_inputTokens.__end_ - self->_inputTokens.__begin_);
  v4 = +[EMDEUtils config];
  v5 = [v4 objectForKeyedSubscript:@"EMDE_TITLE_TRIGGER_TOKEN_ID"];
  v6 = v5 == 0;

  if (!v6)
  {
    v7 = +[EMDEUtils config];
    v8 = [v7 objectForKeyedSubscript:@"EMDE_TOKENISER_VERSION"];
    if (v8)
    {
      v9 = +[EMDEUtils config];
      v10 = [v9 objectForKeyedSubscript:@"EMDE_TOKENISER_VERSION"];
      v11 = [v10 intValue] > 1;

      if (v11)
      {
        v12 = *buf;
        v13 = +[EMDEUtils config];
        v14 = [v13 objectForKeyedSubscript:@"EMDE_TITLE_TRIGGER_TOKEN_ID"];
        [v14 floatValue];
        LODWORD(__src.__r_.__value_.__l.__data_) = v15;
        sub_1000114E4(buf, (v12 + 4), &__src, &__src.__r_.__value_.__s.__data_[4], 1);

        goto LABEL_9;
      }
    }

    else
    {
    }

    v16 = *buf;
    v17 = +[EMDEUtils config];
    v18 = [v17 objectForKeyedSubscript:@"EMDE_TITLE_TRIGGER_TOKEN_ID"];
    [v18 floatValue];
    LODWORD(__src.__r_.__value_.__l.__data_) = v19;
    v20 = +[EMDEUtils config];
    v21 = [v20 objectForKeyedSubscript:@"EMDE_COLON_TOKEN_ID"];
    [v21 floatValue];
    HIDWORD(__src.__r_.__value_.__r.__words[0]) = v22;
    sub_1000114E4(buf, (v16 + 4), &__src, &__src.__r_.__value_.__s.__data_[8], 2);
  }

LABEL_9:
  v23 = +[EMDEUtils config];
  v24 = [v23 objectForKeyedSubscript:@"EMDE_MAX_INPUT_LEN"];
  v25 = [v24 intValue];
  v26 = +[EMDEUtils config];
  v27 = [v26 objectForKeyedSubscript:@"EMDE_TITLE_DECODER_LEN"];
  v28 = [v27 intValue];

  v30 = v74;
  v31 = (v74 - *buf) >> 2;
  if (v31 > (v25 - v28))
  {
    v29 = v25 - v28;
    if (*buf + 4 * (v25 - v28) != v74)
    {
      v30 = *buf + 4 * v29;
      v74 = v30;
      v31 = (4 * v29) >> 2;
    }
  }

  __p = 0;
  v71 = 0;
  v72 = 0;
  sub_100011160(&__p, *buf, v30, v31);
  v32 = [(EMDEModelWrapper *)self runEncoderForInput:&__p];
  if (__p)
  {
    v71 = __p;
    operator delete(__p);
  }

  if (v32)
  {
    v33 = *buf;
    v34 = v74;
    v67 = +[EMDEUtils config];
    v64 = [v67 objectForKeyedSubscript:@"EMDE_BEAM_WIDTH"];
    v35 = [v64 intValue];
    v66 = +[EMDEUtils config];
    v63 = [v66 objectForKeyedSubscript:@"EMDE_TITLE_LENGTH_PENALTY"];
    [v63 floatValue];
    v37 = v36;
    v65 = +[EMDEUtils config];
    v62 = [v65 objectForKeyedSubscript:@"EMDE_TITLE_DECODER_LEN"];
    v38 = [v62 intValue];
    v39 = +[EMDEUtils config];
    v40 = [v39 objectForKeyedSubscript:@"EMDE_DEFAULT_TOKEN_THRESHOLD"];
    [v40 floatValue];
    v42 = v41;
    if (*(&self->_allowedHelperWords.__rep_.__l + 23) >= 0)
    {
      size = *(&self->_allowedHelperWords.__rep_.__l + 23);
    }

    else
    {
      size = self->_allowedHelperWords.__rep_.__l.__size_;
    }

    p_src = &__src;
    sub_10000D358(&__src, size + 1);
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if (*(&self->_allowedHelperWords.__rep_.__l + 23) >= 0)
      {
        p_allowedHelperWords = &self->_allowedHelperWords;
      }

      else
      {
        p_allowedHelperWords = self->_allowedHelperWords.__rep_.__l.__data_;
      }

      memmove(p_src, p_allowedHelperWords, size);
    }

    *(&p_src->__r_.__value_.__l.__data_ + size) = 32;
    v46 = *(&self->_inputStringLowercasedForTitles.__rep_.__l + 23);
    if (v46 >= 0)
    {
      p_inputStringLowercasedForTitles = &self->_inputStringLowercasedForTitles;
    }

    else
    {
      p_inputStringLowercasedForTitles = self->_inputStringLowercasedForTitles.__rep_.__l.__data_;
    }

    if (v46 >= 0)
    {
      v48 = *(&self->_inputStringLowercasedForTitles.__rep_.__l + 23);
    }

    else
    {
      v48 = self->_inputStringLowercasedForTitles.__rep_.__l.__size_;
    }

    v49 = std::string::append(&__src, p_inputStringLowercasedForTitles->__rep_.__s.__data_, v48);
    v50 = *&v49->__r_.__value_.__l.__data_;
    v69 = v49->__r_.__value_.__r.__words[2];
    *v68 = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
    LODWORD(v50) = v37;
    v51 = [(EMDEModelWrapper *)self runBeamDecodingOnStates:v32 startPosition:(v34 - v33) >> 2 beamWidth:v35 lengthPenalty:v38 maxDecoderLen:v42 tokenThreshold:v68 allowedWords:*&v50];
    if (SHIBYTE(v69) < 0)
    {
      operator delete(v68[0]);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    v52 = +[EMDEUtils config];
    v53 = [v52 objectForKeyedSubscript:@"EMDE_DISABLE_OVS_VALIDATION"];
    if (v53)
    {
      v54 = +[EMDEUtils config];
      v55 = [v54 objectForKeyedSubscript:@"EMDE_DISABLE_OVS_VALIDATION"];
      v56 = v55 == 0;
    }

    else
    {
      v56 = 1;
    }

    if (v51)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    if (v57)
    {
      v58 = [v51 objectForKey:@"prediction"];
      v59 = [EMDEUtils profaneRangesForText:v58 usingLexicon:self->_lexicon];
      if ([v59 count])
      {
        v60 = extractionLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          LOWORD(__src.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "EMDEEventExtractor - Title predicted contains OVS language. Ignoring prediction.", &__src, 2u);
        }

        v51 = 0;
      }
    }
  }

  else
  {
    v51 = 0;
  }

  if (*buf)
  {
    v74 = *buf;
    operator delete(*buf);
  }

  return v51;
}

- (__CFArray)runEncoderForInput:()vector<float
{
  v39 = 0;
  [EMDEUtils loadExtractionModelWithError:&v39];
  v4 = v39;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = cf == 0;
  }

  if (v5)
  {
    v6 = modelLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10008BC9C();
    }

    v7 = 0;
  }

  else
  {
    v8 = a3->__end_ - a3->__begin_;
    LODWORD(v35) = 0;
    sub_1000116E4(&v37, (v8 >> 2));
    if (v37 != v38)
    {
      v9 = 0;
      v10 = (v38 - v37 - 4) >> 2;
      v11 = vdupq_n_s64(v10);
      v12 = (v10 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v13 = (v37 + 8);
      do
      {
        v14 = vdupq_n_s64(v9);
        v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_100090CA0)));
        if (vuzp1_s16(v15, *v11.i8).u8[0])
        {
          *(v13 - 2) = v9;
        }

        if (vuzp1_s16(v15, *&v11).i8[2])
        {
          *(v13 - 1) = (v9 + 1);
        }

        if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_100090C90)))).i32[1])
        {
          *v13 = (v9 + 2);
          v13[1] = (v9 + 3);
        }

        v9 += 4;
        v13 += 4;
      }

      while (v12 != v9);
    }

    sub_1000116E4(&v35, (v8 >> 2));
    v31 = 1065353216;
    v33 = 0;
    v34 = 0;
    __p = 0;
    sub_1000040DC(&__p, &v31, &__p, 1uLL);
    v16 = kMRLNeuralNetworkTensorInfoInputDimensionKey;
    v43[0] = kMRLNeuralNetworkTensorInfoInputDimensionKey;
    v17 = [NSNumber numberWithInt:1];
    v18 = kMRLNeuralNetworkTensorInfoSequenceLengthKey;
    v43[1] = kMRLNeuralNetworkTensorInfoSequenceLengthKey;
    v44[0] = v17;
    v19 = [NSNumber numberWithInt:v8 >> 2];
    v44[1] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];

    v41[0] = v16;
    v21 = [NSNumber numberWithInt:1];
    v41[1] = v18;
    v42[0] = v21;
    v22 = [NSNumber numberWithInt:1];
    v42[1] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];

    v24 = MRLNeuralNetworkTensorCreate();
    v25 = MRLNeuralNetworkTensorCreate();
    v26 = MRLNeuralNetworkTensorCreate();
    v27 = MRLNeuralNetworkTensorCreate();
    begin = a3->__begin_;
    end = a3->__end_;
    MRLNeuralNetworkTensorAppendData();
    MRLNeuralNetworkTensorAppendData();
    MRLNeuralNetworkTensorAppendData();
    MRLNeuralNetworkTensorAppendData();
    MRLNeuralNetworkSetInputTensor();
    MRLNeuralNetworkSetInputTensor();
    MRLNeuralNetworkSetInputTensor();
    MRLNeuralNetworkSetInputTensor();
    MRLNeuralNetworkPredict();
    v7 = MRLNeuralNetworkCopyStates();
    MRLNeuralNetworkClear();
    CFRelease(v24);
    CFRelease(v25);
    CFRelease(v26);
    CFRelease(v27);
    a3->__end_ = a3->__begin_;
    v38 = v37;
    v36 = v35;
    v33 = __p;

    if (__p)
    {
      v33 = __p;
      operator delete(__p);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

- (void)dealloc
{
  lexicon = self->_lexicon;
  if (lexicon)
  {
    CFRelease(lexicon);
  }

  v4.receiver = self;
  v4.super_class = EMDEModelWrapper;
  [(EMDEModelWrapper *)&v4 dealloc];
}

- (vector<float,)inputTokens
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return sub_100011160(retstr, self->_inputTokens.__begin_, self->_inputTokens.__end_, self->_inputTokens.__end_ - self->_inputTokens.__begin_);
}

- (void)setInputTokens:()vector<float
{
  p_inputTokens = &self->_inputTokens;
  if (p_inputTokens != a3)
  {
    sub_1000111DC(p_inputTokens, a3->__begin_, a3->__end_, a3->__end_ - a3->__begin_);
  }
}

- (basic_string<char,)inputStringLowercased
{
  if (*(&result[2].__rep_.__l + 23) < 0)
  {
    return sub_100019AD4(retstr, result[2].__rep_.__l.__data_, result[2].__rep_.__l.__size_);
  }

  *retstr = result[2];
  return result;
}

- (basic_string<char,)inputStringLowercasedForTitles
{
  if (*(&result[3].__rep_.__l + 23) < 0)
  {
    return sub_100019AD4(retstr, result[3].__rep_.__l.__data_, result[3].__rep_.__l.__size_);
  }

  *retstr = result[3];
  return result;
}

- (basic_string<char,)allowedHelperWords
{
  if (*(&result[4].__rep_.__l + 23) < 0)
  {
    return sub_100019AD4(retstr, result[4].__rep_.__l.__data_, result[4].__rep_.__l.__size_);
  }

  *retstr = result[4];
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  return self;
}

@end