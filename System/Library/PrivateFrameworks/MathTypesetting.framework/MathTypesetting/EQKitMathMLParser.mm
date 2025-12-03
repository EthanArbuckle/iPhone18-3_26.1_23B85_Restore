@interface EQKitMathMLParser
- (BOOL)isElement:(int)element allowedInState:(int)state;
- (EQKitMathMLParser)initWithDocument:(_xmlDoc *)document node:(_xmlNode *)RootElement source:(id)source attribution:(id)attribution environment:(id)environment;
- (id).cxx_construct;
- (id)parse;
- (id)parseChildrenAsArrayFromXMLNode:(_xmlNode *)node;
- (id)parseChildrenAsNodeFromXMLNode:(_xmlNode *)node;
- (id)parseChildrenAsTokenContentFromXMLNode:(_xmlNode *)node;
- (id)parseNode:(_xmlNode *)node;
- (id)sourceAttributionForOffset:(unint64_t)offset length:(unint64_t)length;
- (int)state;
- (void)dealloc;
- (void)parseAttributesForNode:(id)node withXMLNode:(_xmlNode *)lNode;
- (void)popState;
- (void)reportError:(int64_t)error withNode:(_xmlNode *)node;
@end

@implementation EQKitMathMLParser

- (EQKitMathMLParser)initWithDocument:(_xmlDoc *)document node:(_xmlNode *)RootElement source:(id)source attribution:(id)attribution environment:(id)environment
{
  sourceAttribution = [environment sourceAttribution];
  if (attribution && sourceAttribution)
  {
    v14 = [objc_msgSend(objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(attribution length:"bytes") encoding:{objc_msgSend(attribution, "length"), 4), "dataUsingEncoding:", 2617245952}];
    bytes = [v14 bytes];
    v16 = [v14 length];
    if (v16 >= 0xFFFFFFFFFFFFFFE0)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = v16 >> 2;
    if (v16 >= 0x14)
    {
      if ((v17 | 1) == 5)
      {
        v18 = 7;
      }

      else
      {
        v18 = (v17 | 1) + 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(&__dst, v18);
    }

    HIBYTE(v24) = v16 >> 2;
    if (v16 >= 4)
    {
      memmove(&__dst, bytes, v16 & 0xFFFFFFFFFFFFFFFCLL);
    }

    *(&__dst + v17) = 0;
    if (*(&self->mAttribution.__rep_.__l + 23) < 0)
    {
      operator delete(self->mAttribution.__rep_.__l.__data_);
    }

    *self->mAttribution.__rep_.__s.__data_ = __dst;
    *(&self->mAttribution.__rep_.__l + 2) = v24;
  }

  if (document && !RootElement)
  {
    RootElement = xmlDocGetRootElement(document);
  }

  v22.receiver = self;
  v22.super_class = EQKitMathMLParser;
  v19 = [(EQKitMathMLParser *)&v22 init];
  v20 = v19;
  if (v19)
  {
    v19->mRootNode = RootElement;
    v19->mNS = xmlSearchNsByHref(document, RootElement, "http://www.w3.org/1998/Math/MathML");
    v20->mEnvironment = environment;
    v20->mSource = source;
  }

  return v20;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLParser;
  [(EQKitMathMLParser *)&v3 dealloc];
}

- (id)sourceAttributionForOffset:(unint64_t)offset length:(unint64_t)length
{
  size = *(&self->mAttribution.__rep_.__l + 23);
  if ((size & 0x8000000000000000) != 0)
  {
    size = self->mAttribution.__rep_.__l.__size_;
    if (!length)
    {
      return 0;
    }
  }

  else if (!length)
  {
    return 0;
  }

  v8 = length + offset;
  if (size)
  {
    v9 = size >= v8;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    return 0;
  }

  v11 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:size];
  v12 = v11;
  if (offset)
  {
    _appendFromWideString(v11, &self->mAttribution.__rep_.__l, 0, offset);
  }

  v13 = [v12 length];
  _appendFromWideString(v12, &self->mAttribution.__rep_.__l, offset, length);
  v14 = [v12 length];
  if (size > v8)
  {
    _appendFromWideString(v12, &self->mAttribution.__rep_.__l, v8, size - v8);
  }

  v15 = [EQKitSourceAttribution alloc];

  return [(EQKitSourceAttribution *)v15 initWithSource:v12 range:v13, v14 - v13];
}

- (void)reportError:(int64_t)error withNode:(_xmlNode *)node
{
  if (!self->mError)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    name = "";
    if (node && node->name)
    {
      name = node->name;
    }

    v9 = [v7 initWithUTF8String:name];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    if (error <= 6 && (v11 = [mainBundle localizedStringForKey:*(&off_27987BB80 + error) value:&stru_28696C228 table:0]) != 0)
    {
      v12 = MEMORY[0x277CBEAC0];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:v11, v9];
      v14 = [v12 dictionaryWithObjectsAndKeys:{v13, *MEMORY[0x277CCA450], 0}];
    }

    else
    {
      v14 = 0;
    }

    self->mError = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"EQKitErrorDomain" code:error userInfo:v14];
  }
}

- (id)parse
{
  if (EQKitXMLIsNamedElement(self->mRootNode, self->mNS, "math"))
  {
    v3 = [[EQKitMathMLMath alloc] initFromXMLNode:self->mRootNode parser:self];
    [(EQKitMathMLParser *)self parseAttributesForNode:v3 withXMLNode:self->mRootNode];
    if (v3 && !self->mError)
    {
      v4 = [[EQKitEquation alloc] initWithRoot:v3 source:self->mSource];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    [(EQKitMathMLParser *)self reportError:1 withNode:self->mRootNode];
    return 0;
  }

  return v4;
}

- (id)parseChildrenAsArrayFromXMLNode:(_xmlNode *)node
{
  array = [MEMORY[0x277CBEB18] array];
  if (node)
  {
    for (i = node->children; i; i = i->next)
    {
      if (EQKitXMLIsElement(i))
      {
        v7 = [(EQKitMathMLParser *)self parseNode:i];
        if (!v7)
        {
          return 0;
        }

        [array addObject:v7];
      }
    }
  }

  return array;
}

- (id)parseChildrenAsNodeFromXMLNode:(_xmlNode *)node
{
  result = [(EQKitMathMLParser *)self parseChildrenAsArrayFromXMLNode:node];
  if (result)
  {
    v4 = result;
    if ([result count] == 1)
    {
      v5 = [v4 objectAtIndex:0];
    }

    else
    {
      v5 = [[EQKitMathMLMRow alloc] initWithChildren:v4];
    }

    return v5;
  }

  return result;
}

- (void)parseAttributesForNode:(id)node withXMLNode:(_xmlNode *)lNode
{
  mathMLAttributes = [node mathMLAttributes];
  properties = lNode->properties;
  if (properties)
  {
    v9 = mathMLAttributes;
    v10 = (mathMLAttributes + 8);
    v98 = *(MEMORY[0x277D82820] + 24);
    v99 = *MEMORY[0x277D82820];
    while (1)
    {
      ns = properties->ns;
      if (ns)
      {
        v12 = ns == lNode->ns;
      }

      else
      {
        v12 = 1;
      }

      if (!v12 || !self->mAttributeCollection)
      {
        goto LABEL_105;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, properties->name);
      v13 = EQKitTypes::Attributes::attributeFromMathMLString(&__p, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v13 != 1 || !v9)
      {
        goto LABEL_22;
      }

      v14 = *v10;
      if (!*v10)
      {
        goto LABEL_105;
      }

      v15 = v10;
      do
      {
        if (v14[7] >= 2)
        {
          v15 = v14;
        }

        v14 = *&v14[2 * (v14[7] < 2)];
      }

      while (v14);
      if (v15 != v10 && v15[7] < 3)
      {
        v13 = 2;
      }

      else
      {
        if (v13 != 10 || !v9)
        {
          goto LABEL_32;
        }

LABEL_22:
        v16 = *v10;
        if (!*v10)
        {
          goto LABEL_105;
        }

        v17 = v10;
        do
        {
          if (v16[7] >= 32)
          {
            v17 = v16;
          }

          v16 = *&v16[2 * (v16[7] < 32)];
        }

        while (v16);
        if (v17 != v10 && v17[7] < 33)
        {
          v13 = 32;
        }

        else
        {
          if (v13 != 26 || !v9)
          {
            goto LABEL_42;
          }

LABEL_32:
          v18 = *v10;
          if (!*v10)
          {
            goto LABEL_105;
          }

          v19 = v10;
          do
          {
            if (v18[7] >= 29)
            {
              v19 = v18;
            }

            v18 = *&v18[2 * (v18[7] < 29)];
          }

          while (v18);
          if (v19 != v10 && v19[7] < 30)
          {
            v13 = 29;
          }

          else
          {
            if (v13 != 27 || !v9)
            {
              goto LABEL_52;
            }

LABEL_42:
            v20 = *v10;
            if (!*v10)
            {
              goto LABEL_105;
            }

            v21 = v10;
            do
            {
              if (v20[7] >= 30)
              {
                v21 = v20;
              }

              v20 = *&v20[2 * (v20[7] < 30)];
            }

            while (v20);
            if (v21 != v10 && v21[7] < 31)
            {
              v13 = 30;
            }

            else
            {
              if (v13 != 28 || !v9)
              {
                goto LABEL_217;
              }

LABEL_52:
              v22 = *v10;
              if (!*v10)
              {
                goto LABEL_105;
              }

              v23 = v10;
              do
              {
                if (v22[7] >= 31)
                {
                  v23 = v22;
                }

                v22 = *&v22[2 * (v22[7] < 31)];
              }

              while (v22);
              if (v23 != v10 && v23[7] < 32)
              {
                v13 = 31;
              }

              else
              {
LABEL_217:
                if (v13 == 48)
                {
                  EQKitXMLAttributeValueAsString(lNode, properties, &__p);
                  v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    p_p = &__p;
                  }

                  else
                  {
                    p_p = __p.__r_.__value_.__r.__words[0];
                  }

                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = __p.__r_.__value_.__l.__size_;
                  }

                  if (size >= 1)
                  {
                    v27 = p_p + size;
                    v28 = p_p;
                    do
                    {
                      v29 = memchr(v28, 44, size);
                      if (!v29)
                      {
                        break;
                      }

                      if (*v29 == 44)
                      {
                        if (v29 != v27)
                        {
                          v30 = v29 - p_p;
                          if (v29 - p_p != -1)
                          {
                            v31 = std::string::basic_string(&__str, &__p, 0, v30, &nodeCopy11);
                            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                            {
                              v33 = __str.__r_.__value_.__r.__words[0];
                              v32 = atoi(__str.__r_.__value_.__l.__data_);
                              operator delete(v33);
                            }

                            else
                            {
                              v32 = atoi(v31);
                            }

                            v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                            {
                              v34 = __p.__r_.__value_.__l.__size_;
                            }

                            v35 = std::string::basic_string(&__str, &__p, v30 + 1, v34 - (v30 + 1), &nodeCopy11);
                            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                            {
                              v37 = __str.__r_.__value_.__r.__words[0];
                              v36 = atoi(__str.__r_.__value_.__l.__data_);
                              operator delete(v37);
                            }

                            else
                            {
                              v36 = atoi(v35);
                            }

                            [node setSourceAttribution:{-[EQKitMathMLParser sourceAttributionForOffset:length:](self, "sourceAttributionForOffset:length:", v32, v36)}];
                            v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                          }
                        }

                        break;
                      }

                      v28 = (v29 + 1);
                      size = v27 - v28;
                    }

                    while (v27 - v28 >= 1);
                  }

                  if (v24 < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  v13 = 48;
                }
              }
            }
          }
        }
      }

      if (v9)
      {
        v38 = *v10;
        if (*v10)
        {
          v39 = v10;
          do
          {
            if (v38[7] >= v13)
            {
              v39 = v38;
            }

            v38 = *&v38[2 * (v38[7] < v13)];
          }

          while (v38);
          if (v39 != v10 && v13 >= v39[7])
          {
            break;
          }
        }
      }

      if (v13 == 44)
      {
        EQKitXMLAttributeValueAsString(lNode, properties, &__str);
LABEL_98:
        v40 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v40 = __str.__r_.__value_.__l.__size_;
        }

        if (v40)
        {
          CGColorFromString = EQKitMathMLParserCreateCGColorFromString(&__str);
          v42 = CGColorFromString;
          if (CGColorFromString)
          {
            v109[0] = CFRetain(CGColorFromString);
            mAttributeCollection = self->mAttributeCollection;
            __p.__r_.__value_.__r.__words[0] = node;
            LODWORD(__p.__r_.__value_.__r.__words[1]) = 44;
            nodeCopy11 = &__p;
            v44 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::CFRetainRelease>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(mAttributeCollection + 536, &__p);
            EQKitTypes::CFRetainRelease::operator=((v44 + 48), v109);
            CGColorRelease(v42);
            EQKitTypes::CFRetainRelease::~CFRetainRelease(v109);
          }
        }

        goto LABEL_103;
      }

LABEL_105:
      properties = properties->next;
      if (!properties)
      {
        return;
      }
    }

    EQKitXMLAttributeValueAsString(lNode, properties, &__str);
    switch(v13)
    {
      case 1:
      case 24:
      case 25:
        v47 = EQKitTypes::Align::alignFromMathMLString(&__str, 0);
        if (!v47)
        {
          goto LABEL_103;
        }

        v50 = self->mAttributeCollection;
        __p.__r_.__value_.__r.__words[0] = node;
        LODWORD(__p.__r_.__value_.__r.__words[1]) = v13;
        nodeCopy11 = &__p;
        v49 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v50 + 128, &__p);
        goto LABEL_115;
      case 2:
        v65 = EQKitTypes::VAlign::vAlignFromMathMLString(&__str, 0);
        if (!v65)
        {
          goto LABEL_103;
        }

        v74 = self->mAttributeCollection;
        __p.__r_.__value_.__r.__words[0] = node;
        LODWORD(__p.__r_.__value_.__r.__words[1]) = 2;
        nodeCopy11 = &__p;
        v67 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v74 + 152, &__p);
        goto LABEL_183;
      case 3:
        EQKitTypes::VAlign::vAlignVectorFromMathMLString(&__str, &__p.__r_.__value_.__l.__data_);
        v70 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[0])
        {
          goto LABEL_174;
        }

        v75 = self->mAttributeCollection;
        nodeCopy11 = node;
        LODWORD(v108) = 3;
        EQKit::AttributeCollection::setValueForKey<std::vector<EQKitTypes::VAlign::Enum>>(v75, v75 + 248, &__p.__r_.__value_.__l.__data_, &nodeCopy11);
        goto LABEL_173;
      case 4:
        EQKitTypes::Align::alignVectorFromMathMLString(&__str, &__p.__r_.__value_.__l.__data_);
        v70 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[0])
        {
          goto LABEL_174;
        }

        v76 = self->mAttributeCollection;
        nodeCopy11 = node;
        LODWORD(v108) = 4;
        EQKit::AttributeCollection::setValueForKey<std::vector<EQKitTypes::VAlign::Enum>>(v76, v76 + 272, &__p.__r_.__value_.__l.__data_, &nodeCopy11);
        goto LABEL_173;
      case 5:
      case 6:
      case 8:
      case 14:
      case 16:
      case 39:
      case 45:
        v47 = EQKitTypes::Boolean::BOOLeanFromMathMLString(&__str, 0);
        if (!v47)
        {
          goto LABEL_103;
        }

        v48 = self->mAttributeCollection;
        __p.__r_.__value_.__r.__words[0] = node;
        LODWORD(__p.__r_.__value_.__r.__words[1]) = v13;
        nodeCopy11 = &__p;
        v49 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v48 + 8, &__p);
LABEL_115:
        *(v49 + 48) = v47;
        goto LABEL_103;
      case 7:
        v65 = EQKitTypes::Display::displayFromMathMLString(&__str, 0);
        if (!v65)
        {
          goto LABEL_103;
        }

        v73 = self->mAttributeCollection;
        __p.__r_.__value_.__r.__words[0] = node;
        LODWORD(__p.__r_.__value_.__r.__words[1]) = 7;
        nodeCopy11 = &__p;
        v67 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v73 + 320, &__p);
        goto LABEL_183;
      case 9:
        nodeCopy11 = 0;
        LOBYTE(v108) = 1;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v105, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        }

        else
        {
          v105 = __str;
        }

        v88 = EQKit::ScriptLevel::fromString(&v105, &nodeCopy11);
        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v105.__r_.__value_.__l.__data_);
        }

        if (v88)
        {
          v89 = self->mAttributeCollection;
          __p.__r_.__value_.__r.__words[0] = node;
          LODWORD(__p.__r_.__value_.__r.__words[1]) = 9;
          v109[0] = &__p;
          v90 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKit::ScriptLevel>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKit::ScriptLevel,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKit::ScriptLevel>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v89 + 296, &__p);
          *(v90 + 48) = nodeCopy11;
          *(v90 + 56) = v108;
        }

        goto LABEL_103;
      case 10:
      case 11:
      case 26:
      case 27:
      case 28:
      case 40:
      case 41:
      case 43:
        EQKitLength::EQKitLength(&nodeCopy11, &__str, 0);
        if (nodeCopy11)
        {
          v45 = self->mAttributeCollection;
          __p.__r_.__value_.__r.__words[0] = node;
          LODWORD(__p.__r_.__value_.__r.__words[1]) = v13;
          v109[0] = &__p;
          v46 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKitLength,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKitLength>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v45 + 32, &__p);
          *(v46 + 48) = nodeCopy11;
          *(v46 + 56) = v108;
          goto LABEL_103;
        }

        if (v13 != 41)
        {
          goto LABEL_103;
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__str.__r_.__value_.__l.__size_ != 8)
          {
            goto LABEL_103;
          }

          p_str = __str.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) != 8)
          {
            goto LABEL_103;
          }

          p_str = &__str;
        }

        if (p_str->__r_.__value_.__r.__words[0] == 0x7974696E69666E69)
        {
          v84 = self->mAttributeCollection;
          __p.__r_.__value_.__r.__words[0] = node;
          LODWORD(__p.__r_.__value_.__r.__words[1]) = 41;
          v109[0] = &__p;
          v85 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKitLength,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKitLength>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v84 + 32, &__p);
          *(v85 + 48) = 1;
          *(v85 + 56) = 0x7FEFFFFFFFFFFFFFLL;
        }

        goto LABEL_103;
      case 12:
      case 13:
      case 18:
      case 19:
        EQKit::AttributeCollection::setValueForKey(self->mAttributeCollection, &__str, v13, node);
        goto LABEL_103;
      case 15:
        v65 = EQKit::Config::Operator::formFromMathMLString(&__str, 0);
        if (!v65)
        {
          goto LABEL_103;
        }

        v66 = self->mAttributeCollection;
        __p.__r_.__value_.__r.__words[0] = node;
        LODWORD(__p.__r_.__value_.__r.__words[1]) = 15;
        nodeCopy11 = &__p;
        v67 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v66 + 344, &__p);
        goto LABEL_183;
      case 17:
        v65 = EQKit::Script::variantFromMathMLString(&__str, 0);
        if (!v65)
        {
          goto LABEL_103;
        }

        v68 = self->mAttributeCollection;
        __p.__r_.__value_.__r.__words[0] = node;
        LODWORD(__p.__r_.__value_.__r.__words[1]) = 17;
        nodeCopy11 = &__p;
        v67 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v68 + 368, &__p);
        goto LABEL_183;
      case 20:
        EQKitTypes::Strings::separatorsFromString(&__str, &__p);
        v63 = self->mAttributeCollection;
        nodeCopy11 = node;
        LODWORD(v108) = 20;
        EQKit::AttributeCollection::setValueForKey<std::vector<std::string>>(v63, v63 + 104, &__p, &nodeCopy11);
        nodeCopy11 = &__p;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&nodeCopy11);
        goto LABEL_103;
      case 21:
      case 22:
        LOBYTE(v100) = 0;
        v52 = EQKitTypes::Integer::integerFromMathMLString(&__str, &v100);
        if (LOBYTE(v100) == 1)
        {
          v53 = self->mAttributeCollection;
          __p.__r_.__value_.__r.__words[0] = node;
          LODWORD(__p.__r_.__value_.__r.__words[1]) = v13;
          nodeCopy11 = &__p;
          *(std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,double>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v53 + 392, &__p) + 48) = v52;
        }

        goto LABEL_103;
      case 23:
        LOBYTE(v100) = 0;
        v81 = EQKitTypes::UInteger::uIntegerFromMathMLString(&__str, &v100);
        if (LOBYTE(v100) == 1)
        {
          v82 = self->mAttributeCollection;
          __p.__r_.__value_.__r.__words[0] = node;
          LODWORD(__p.__r_.__value_.__r.__words[1]) = 23;
          nodeCopy11 = &__p;
          *(std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,double>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v82 + 416, &__p) + 48) = v81;
        }

        goto LABEL_103;
      case 29:
        EQKitPseudoUnitLength::EQKitPseudoUnitLength(&__p, &__str, 1);
        if (!LODWORD(__p.__r_.__value_.__l.__data_))
        {
          goto LABEL_103;
        }

        v78 = self->mAttributeCollection;
        nodeCopy11 = node;
        LODWORD(v108) = 29;
        v109[0] = &nodeCopy11;
        v55 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKitPseudoUnitLength,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKitPseudoUnitLength>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v78 + 464, &nodeCopy11);
        goto LABEL_178;
      case 30:
        EQKitPseudoUnitLength::EQKitPseudoUnitLength(&__p, &__str, 2);
        if (!LODWORD(__p.__r_.__value_.__l.__data_))
        {
          goto LABEL_103;
        }

        v77 = self->mAttributeCollection;
        nodeCopy11 = node;
        LODWORD(v108) = 30;
        v109[0] = &nodeCopy11;
        v55 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKitPseudoUnitLength,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKitPseudoUnitLength>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v77 + 464, &nodeCopy11);
        goto LABEL_178;
      case 31:
        EQKitPseudoUnitLength::EQKitPseudoUnitLength(&__p, &__str, 3);
        if (!LODWORD(__p.__r_.__value_.__l.__data_))
        {
          goto LABEL_103;
        }

        v80 = self->mAttributeCollection;
        nodeCopy11 = node;
        LODWORD(v108) = 31;
        v109[0] = &nodeCopy11;
        v55 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKitPseudoUnitLength,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKitPseudoUnitLength>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v80 + 464, &nodeCopy11);
        goto LABEL_178;
      case 32:
      case 33:
        EQKitPseudoUnitLength::EQKitPseudoUnitLength(&__p, &__str, 0);
        if (!LODWORD(__p.__r_.__value_.__l.__data_))
        {
          goto LABEL_103;
        }

        v54 = self->mAttributeCollection;
        nodeCopy11 = node;
        LODWORD(v108) = v13;
        v109[0] = &nodeCopy11;
        v55 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitPseudoUnitLength>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKitPseudoUnitLength,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKitPseudoUnitLength>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v54 + 464, &nodeCopy11);
LABEL_178:
        *(v55 + 48) = __p.__r_.__value_.__l.__data_;
        *(v55 + 56) = *&__p.__r_.__value_.__r.__words[1];
        goto LABEL_103;
      case 34:
        EQKitTypes::Crossout::crossoutVectorFromMathMLString(&__str, &__p.__r_.__value_.__l.__data_);
        v70 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[0])
        {
          goto LABEL_174;
        }

        v71 = self->mAttributeCollection;
        nodeCopy11 = node;
        LODWORD(v108) = 34;
        EQKit::AttributeCollection::setValueForKey<std::vector<EQKitTypes::VAlign::Enum>>(v71, v71 + 200, &__p.__r_.__value_.__l.__data_, &nodeCopy11);
        goto LABEL_173;
      case 35:
        v58 = objc_alloc(MEMORY[0x277CCACA8]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = &__str;
        }

        else
        {
          v59 = __str.__r_.__value_.__r.__words[0];
        }

        v60 = [v58 initWithUTF8String:v59];
        if ([v60 length] == 1)
        {
          v61 = [v60 characterAtIndex:0];
          if (([objc_msgSend(MEMORY[0x277CCA900] "whitespaceAndNewlineCharacterSet")] & 1) == 0)
          {
            v62 = self->mAttributeCollection;
            __p.__r_.__value_.__r.__words[0] = node;
            LODWORD(__p.__r_.__value_.__r.__words[1]) = 35;
            nodeCopy11 = &__p;
            *(std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,unsigned short>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v62 + 488, &__p) + 48) = v61;
          }
        }

        goto LABEL_103;
      case 36:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__str.__r_.__value_.__l.__size_ == 4 && *__str.__r_.__value_.__l.__data_ == 1852401780)
          {
LABEL_210:
            data = 5;
            v95 = 0.5;
            goto LABEL_214;
          }

          if (__str.__r_.__value_.__l.__size_ == 6 && *__str.__r_.__value_.__l.__data_ == 1768187245 && *(__str.__r_.__value_.__r.__words[0] + 4) == 28021)
          {
            goto LABEL_213;
          }

          if (__str.__r_.__value_.__l.__size_ != 5)
          {
LABEL_211:
            EQKitLength::EQKitLength(&__p, &__str, 5);
            data = __p.__r_.__value_.__l.__data_;
            if (!LODWORD(__p.__r_.__value_.__l.__data_))
            {
              goto LABEL_103;
            }

            v95 = *&__p.__r_.__value_.__l.__size_;
            goto LABEL_214;
          }

          v87 = __str.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (HIBYTE(__str.__r_.__value_.__r.__words[2]) == 4)
          {
            if (LODWORD(__str.__r_.__value_.__l.__data_) == 1852401780)
            {
              goto LABEL_210;
            }

            goto LABEL_211;
          }

          if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 5)
          {
            if (HIBYTE(__str.__r_.__value_.__r.__words[2]) != 6)
            {
              goto LABEL_211;
            }

            if (LODWORD(__str.__r_.__value_.__l.__data_) != 1768187245 || WORD2(__str.__r_.__value_.__r.__words[0]) != 28021)
            {
              goto LABEL_211;
            }

LABEL_213:
            data = 5;
            v95 = 1.0;
LABEL_214:
            v96 = self->mAttributeCollection;
            __p.__r_.__value_.__r.__words[0] = node;
            LODWORD(__p.__r_.__value_.__r.__words[1]) = 36;
            nodeCopy11 = &__p;
            v97 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,EQKitLength>,std::__map_value_compare<EQKitTypes::Attributes::Enum,EQKitLength,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<EQKitLength>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v96 + 32, &__p);
            *(v97 + 48) = data;
            *(v97 + 56) = v95;
LABEL_103:
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            goto LABEL_105;
          }

          v87 = &__str;
        }

        v91 = v87->__r_.__value_.__l.__data_;
        v92 = v87->__r_.__value_.__s.__data_[4];
        if (v91 == 1667852404 && v92 == 107)
        {
          data = 5;
          v95 = 2.0;
          goto LABEL_214;
        }

        goto LABEL_211;
      case 37:
        v65 = EQKitTypes::GroupAlign::groupAlignFromMathMLString(&__str, 0);
        if (!v65)
        {
          goto LABEL_103;
        }

        v72 = self->mAttributeCollection;
        __p.__r_.__value_.__r.__words[0] = node;
        LODWORD(__p.__r_.__value_.__r.__words[1]) = 37;
        nodeCopy11 = &__p;
        v67 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v72 + 176, &__p);
        goto LABEL_183;
      case 38:
        v65 = EQKitTypes::Edge::edgeFromMathMLString(&__str, 0);
        if (!v65)
        {
          goto LABEL_103;
        }

        v83 = self->mAttributeCollection;
        __p.__r_.__value_.__r.__words[0] = node;
        LODWORD(__p.__r_.__value_.__r.__words[1]) = 38;
        nodeCopy11 = &__p;
        v67 = std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>,std::__map_value_compare<EQKitTypes::Attributes::Enum,objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<objc_object  {objcproto15EQKitLayoutNode}*::Align::Enum>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v83 + 512, &__p);
LABEL_183:
        *(v67 + 48) = v65;
        goto LABEL_103;
      case 42:
        std::istringstream::basic_istringstream[abi:ne200100](&__p, &__str, 8);
        v100 = 0.0;
        MEMORY[0x259C7C9E0](&__p, &v100);
        if ((*(&v102[1].__locale_ + *(__p.__r_.__value_.__r.__words[0] - 24)) & 7) == 2)
        {
          v56 = self->mAttributeCollection;
          v57 = v100;
          nodeCopy11 = node;
          LODWORD(v108) = 42;
          v109[0] = &nodeCopy11;
          *(std::__tree<std::__value_type<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,double>,std::__map_value_compare<EQKitTypes::Attributes::Enum,std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>,std::less<EQKitTypes::Attributes::Enum>,true>,std::allocator<std::pair<objc_object  {objcproto15EQKitLayoutNode}*,EQKitTypes::Attributes::Enum>>>::__emplace_unique_key_args<EQKitTypes::Attributes::Enum,std::piecewise_construct_t const&,std::tuple<EQKitTypes::Attributes::Enum const&>,std::piecewise_construct_t const&<>>(v56 + 440, &nodeCopy11) + 48) = v57;
        }

        __p.__r_.__value_.__r.__words[0] = v99;
        *(__p.__r_.__value_.__r.__words + *(v99 - 24)) = v98;
        __p.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
        if (v103 < 0)
        {
          operator delete(v102[7].__locale_);
        }

        __p.__r_.__value_.__r.__words[2] = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v102);
        std::istream::~istream();
        MEMORY[0x259C7CB20](&v104);
        goto LABEL_103;
      case 44:
        goto LABEL_98;
      case 46:
        memset(&__p, 0, sizeof(__p));
        if (EQKitLength::lengthVectorFromString(&__str, &__p))
        {
          v69 = self->mAttributeCollection;
          nodeCopy11 = node;
          LODWORD(v108) = 46;
          EQKit::AttributeCollection::setValueForKey<std::vector<EQKitLength>>(v69, v69 + 56, &__p, &nodeCopy11);
        }

        goto LABEL_173;
      case 47:
        EQKitTypes::Notation::notationVectorFromMathMLString(&__str, &__p.__r_.__value_.__l.__data_);
        v70 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[0])
        {
          goto LABEL_174;
        }

        v79 = self->mAttributeCollection;
        nodeCopy11 = node;
        LODWORD(v108) = 47;
        EQKit::AttributeCollection::setValueForKey<std::vector<EQKitTypes::VAlign::Enum>>(v79, v79 + 224, &__p.__r_.__value_.__l.__data_, &nodeCopy11);
LABEL_173:
        v70 = __p.__r_.__value_.__r.__words[0];
LABEL_174:
        if (v70)
        {
          __p.__r_.__value_.__l.__size_ = v70;
          operator delete(v70);
        }

        goto LABEL_103;
      default:
        goto LABEL_103;
    }
  }
}

- (id)parseChildrenAsTokenContentFromXMLNode:(_xmlNode *)node
{
  nodeCopy = node;
  v18 = 0;
  memset(&__str, 0, sizeof(__str));
  v16 = 0;
  v15 = 1;
  if (!node)
  {
    goto LABEL_20;
  }

  children = node->children;
  if (!children)
  {
LABEL_18:
    LODWORD(nodeCopy) = 0;
    goto LABEL_20;
  }

  while (1)
  {
    if (!EQKitXMLIsElement(children))
    {
      if (xmlNodeIsText(children))
      {
        v16 = 1;
        EQKitXMLTextContentAsString(children, 0, &__p);
        v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
        std::string::append(&__str, v8, v9);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_17;
    }

    _contentAppendStringIfNeeded(&v18, &__str, &v16, &v15, 0);
    [(EQKitMathMLParser *)self pushState:1];
    v6 = [(EQKitMathMLParser *)self parseNode:nodeCopy];
    [(EQKitMathMLParser *)self popState];
    if (!v6)
    {
      break;
    }

    v7 = v18;
    if (!v18)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v18 = v7;
    }

    [v7 addObject:v6];

LABEL_17:
    children = children->next;
    if (!children)
    {
      goto LABEL_18;
    }
  }

  LODWORD(nodeCopy) = 1;
LABEL_20:
  _contentAppendStringIfNeeded(&v18, &__str, &v16, &v15, 1);
  if (nodeCopy)
  {
    v10 = 0;
    v11 = v18;
  }

  else
  {
    v12 = [EQKitMathMLTokenContent alloc];
    v11 = v18;
    v10 = [(EQKitMathMLTokenContent *)v12 initWithChildren:v18];
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v10;
}

- (id)parseNode:(_xmlNode *)node
{
  if (!EQKitXMLIsNsElement(node, self->mNS))
  {
    goto LABEL_10;
  }

  name = node->name;
  if (!name)
  {
    goto LABEL_10;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, name);
  v6 = EQKitMathMLElement::fromString(__p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (![(EQKitMathMLParser *)self isElement:v6 allowedInState:[(EQKitMathMLParser *)self state]])
  {
    v7 = 3;
    goto LABEL_9;
  }

  if ((v6 - 40) < 0x88)
  {
    v7 = 6;
LABEL_9:
    [(EQKitMathMLParser *)self reportError:v7 withNode:node];
    goto LABEL_10;
  }

  v10 = off_279871B60;
  switch(v6)
  {
    case 1:
      break;
    case 2:
      v10 = off_279871B78;
      break;
    case 3:
      v10 = off_279871B80;
      break;
    case 4:
      v10 = off_279871BA8;
      break;
    case 5:
      v10 = &off_279871C50;
      break;
    case 6:
      v10 = off_279871B28;
      break;
    case 7:
      v10 = off_279871B58;
      break;
    case 8:
      v10 = off_279871B98;
      break;
    case 9:
      v10 = off_279871C00;
      break;
    case 10:
      v10 = off_279871C10;
      break;
    case 11:
      v10 = off_279871C08;
      break;
    case 12:
      v10 = off_279871B50;
      break;
    case 13:
      v10 = off_279871BF8;
      break;
    case 14:
      v10 = off_279871C38;
      break;
    case 15:
      v10 = off_279871B88;
      break;
    case 16:
      v10 = off_279871C40;
      break;
    case 17:
      v10 = off_279871BC0;
      break;
    case 18:
      v10 = off_279871BD8;
      break;
    case 19:
      v10 = off_279871BE8;
      break;
    case 20:
      v10 = off_279871BE0;
      break;
    case 21:
      v10 = off_279871BC8;
      break;
    case 22:
      v10 = off_279871BD0;
      break;
    case 23:
      v10 = off_279871B70;
      break;
    case 24:
      v10 = off_279871C18;
      break;
    case 25:
      v10 = off_279871C30;
      break;
    case 26:
      v10 = off_279871B68;
      break;
    case 27:
      v10 = off_279871C20;
      break;
    case 28:
      v10 = off_279871BA0;
      break;
    case 29:
      v10 = off_279871BB8;
      break;
    case 30:
      v10 = off_279871C48;
      break;
    case 32:
      v10 = off_279871BF0;
      break;
    case 33:
      v10 = off_279871C28;
      break;
    case 34:
      v10 = off_279871B30;
      break;
    case 35:
      v10 = off_279871BB0;
      break;
    case 36:
      v10 = off_279871B48;
      break;
    case 37:
      v10 = off_279871B90;
      break;
    case 38:
      v10 = off_279871B38;
      break;
    case 39:
      v10 = off_279871B40;
      break;
    default:
      v7 = 2;
      goto LABEL_9;
  }

  v11 = [objc_alloc(*v10) initFromXMLNode:node parser:self];
  if (v11)
  {
    v8 = v11;
    [(EQKitMathMLParser *)self parseAttributesForNode:v11 withXMLNode:node];
    return v8;
  }

LABEL_10:
  [(EQKitMathMLParser *)self reportError:4 withNode:node];
  return 0;
}

- (void)popState
{
  size = self->mState.c.__size_;
  if (size)
  {
    self->mState.c.__size_ = size - 1;
    std::deque<EQKitMathMLParserState>::__maybe_remove_back_spare[abi:ne200100](&self->mState.c.__map_.__first_, 1);
  }
}

- (int)state
{
  size = self->mState.c.__size_;
  if (size)
  {
    return (*(self->mState.c.__map_.__begin_ + (((size + self->mState.c.__start_ - 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[(size + self->mState.c.__start_ - 1) & 0x3FF];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isElement:(int)element allowedInState:(int)state
{
  v4 = (element - 25) < 2;
  v5 = element == 27;
  if (state != 3)
  {
    v5 = 1;
  }

  if (state != 2)
  {
    v4 = v5;
  }

  v7 = element == 31 || element == 39;
  v8 = state != 1 || v7;
  if (!state)
  {
    v8 = (element - 28) < 0xFFFFFFFD;
  }

  if (state <= 1)
  {
    return v8;
  }

  else
  {
    return v4;
  }
}

- (id).cxx_construct
{
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 3) = 0u;
  *(self + 7) = 0uLL;
  *(self + 13) = 0;
  return self;
}

@end