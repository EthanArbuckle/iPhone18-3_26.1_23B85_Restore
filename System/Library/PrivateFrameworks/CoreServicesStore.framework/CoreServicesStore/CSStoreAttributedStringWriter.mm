@interface CSStoreAttributedStringWriter
+ (id)new;
+ (id)newWithBuffer:(id)buffer;
+ (id)newWithStore:(__CSStore *)store buffer:(id)buffer;
- (NSAttributedString)attributedString;
- (id).cxx_construct;
- (id)init:(__CSStore *)init outBuffer:(id)buffer;
- (id)linkURL:(id)l;
- (id)linkURL:(id)l linkedAttributedText:(id)text;
- (id)linkURL:(id)l linkedText:(id)text;
- (void)beginBitfieldFlags:(id)flags;
- (void)beginFlags:(id)flags flags:(unint64_t)a4;
- (void)endFlags;
- (void)flag:(unint64_t)flag name:(id)name;
- (void)flag:(unint64_t)flag name:(id)name color:(unsigned int)color;
- (void)missingFlag:(unint64_t)flag name:(id)name;
- (void)missingFlag:(unint64_t)flag name:(id)name color:(unsigned int)color;
- (void)setLocale:(id)locale;
- (void)setVisualizer:(id)visualizer;
- (void)write:(id)write BOOL:(BOOL)l;
- (void)write:(id)write interval:(double)interval;
- (void)writeNumber:(id)number;
@end

@implementation CSStoreAttributedStringWriter

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 264) = 0;
  return self;
}

- (void)write:(id)write BOOL:(BOOL)l
{
  if (l)
  {
    v5 = @"true ";
  }

  else
  {
    v5 = @"false";
  }

  CSStore2::AttributedStringWriter::string(&self->_writer, write, &v5->isa);
}

- (id)linkURL:(id)l linkedText:(id)text
{
  v4 = CSStore2::AttributedStringWriter::link(&self->_writer, l, text);

  return v4;
}

- (id)linkURL:(id)l
{
  v3 = CSStore2::AttributedStringWriter::link(&self->_writer, l, 0);

  return v3;
}

- (void)write:(id)write interval:(double)interval
{
  v7 = objc_autoreleasePoolPush();
  impl = self->_writer.var0.__val_._impl;
  if (*(impl + 3))
  {
    v9 = CSStore2::AttributedStringWriter::Impl::getDateFormatter(void)const::$_0::operator()();
    [v9 setLocale:*(impl + 3)];
  }

  else
  {
    block = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = ___ZNK8CSStore222AttributedStringWriter4Impl16getDateFormatterEv_block_invoke;
    v31 = &__block_descriptor_33_e5_v8__0l;
    if (CSStore2::AttributedStringWriter::Impl::getDateFormatter(void)const::once != -1)
    {
      dispatch_once(&CSStore2::AttributedStringWriter::Impl::getDateFormatter(void)const::once, &block);
    }

    v9 = CSStore2::AttributedStringWriter::Impl::getDateFormatter(void)const::df;
  }

  v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:interval];
  v11 = [v9 stringFromDate:v10];
  [v10 timeIntervalSinceNow];
  v13 = v12;
  v14 = &stru_1F37D5878;
  if (v12 != 0.0)
  {
    v27 = v11;
    v15 = v7;
    v16 = self->_writer.var0.__val_._impl;
    if (*(v16 + 3))
    {
      v17 = objc_alloc_init(MEMORY[0x1E696AB70]);
      [v17 setAllowsFractionalUnits:1];
      [v17 setUnitsStyle:5];
      [v17 setCollapsesLargestUnit:1];
      v18 = MEMORY[0x1E695DEE8];
      calendarIdentifier = [*(v16 + 3) calendarIdentifier];
      v20 = [v18 calendarWithIdentifier:calendarIdentifier];

      if (v20)
      {
        [v20 setLocale:*(v16 + 3)];
        [v17 setCalendar:v20];
      }

      v7 = v15;
    }

    else
    {
      block = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = ___ZNK8CSStore222AttributedStringWriter4Impl26getDateComponentsFormatterEv_block_invoke;
      v31 = &__block_descriptor_33_e5_v8__0l;
      if (CSStore2::AttributedStringWriter::Impl::getDateComponentsFormatter(void)const::once != -1)
      {
        dispatch_once(&CSStore2::AttributedStringWriter::Impl::getDateComponentsFormatter(void)const::once, &block);
      }

      v7 = v15;
      v17 = CSStore2::AttributedStringWriter::Impl::getDateComponentsFormatter(void)const::dcf;
    }

    v11 = v27;
    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    v22 = [v17 stringFromTimeInterval:-v13];
    v14 = [v21 initWithFormat:@", 𝛥 %@", v22];
  }

  p_writer = &self->_writer;
  block = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = ___ZN8CSStore222AttributedStringWriter9timestampEP8NSStringd_block_invoke;
  v31 = &unk_1E7ED34C0;
  v36 = &self->_writer;
  intervalCopy = interval;
  v24 = v10;
  v32 = v24;
  writeCopy = write;
  v25 = v11;
  v34 = v25;
  v26 = v14;
  v35 = v26;
  v38 = v13;
  CSStore2::AttributedStringWriter::withAppliedAttribute(p_writer, @"_CSVTime", v24, &block);

  objc_autoreleasePoolPop(v7);
}

- (void)beginBitfieldFlags:(id)flags
{
  impl = self->_writer.var0.__val_._impl;
  if (*(impl + 152) == 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void CSStore2::AttributedStringWriter::beginBitfieldFlags(NSString *const __strong _Nonnull)"];
    [currentHandler handleFailureInFunction:v9 file:@"CSAttributedStringWriter.mm" lineNumber:840 description:@"Nesting flag lists is not supported. Possible missing call to endFlags()?"];
  }

  v5 = [flags copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F37D5878;
  }

  objc_storeStrong(impl + 7, v7);

  *(impl + 76) = 257;
}

- (void)writeNumber:(id)number
{
  number = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", number];
  CSStore2::AttributedStringWriter::string(&self->_writer, number);
}

- (id)linkURL:(id)l linkedAttributedText:(id)text
{
  v4 = CSStore2::AttributedStringWriter::link(&self->_writer, l, text);

  return v4;
}

- (void)missingFlag:(unint64_t)flag name:(id)name color:(unsigned int)color
{
  colorCopy = color;
  v6 = 1;
  CSStore2::AttributedStringWriter::missingFlag(self->_writer.var0.__val_._impl, flag, name, &colorCopy);
}

- (void)missingFlag:(unint64_t)flag name:(id)name
{
  LOBYTE(v4) = 0;
  v5 = 0;
  CSStore2::AttributedStringWriter::missingFlag(self->_writer.var0.__val_._impl, flag, name, &v4);
}

- (void)flag:(unint64_t)flag name:(id)name color:(unsigned int)color
{
  colorCopy = color;
  v6 = 1;
  CSStore2::AttributedStringWriter::flag(self->_writer.var0.__val_._impl, flag, name, &colorCopy);
}

- (void)flag:(unint64_t)flag name:(id)name
{
  LOBYTE(v4) = 0;
  v5 = 0;
  CSStore2::AttributedStringWriter::flag(self->_writer.var0.__val_._impl, flag, name, &v4);
}

- (void)endFlags
{
  v50 = *MEMORY[0x1E69E9840];
  impl = self->_writer.var0.__val_._impl;
  if ((*(impl + 152) & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void CSStore2::AttributedStringWriter::endFlags()"];
    [currentHandler handleFailureInFunction:v31 file:@"CSAttributedStringWriter.mm" lineNumber:925 description:@"Called endFlags() without calling beginFlags() first."];
  }

  v3 = objc_autoreleasePoolPush();
  context = v3;
  if (*(impl + 7))
  {
    v3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:*(impl + 7)];
    v34 = v3;
  }

  else
  {
    v34 = 0;
  }

  v4 = *(impl + 12);
  if (!v4 && (*(self->_writer.var0.__val_._impl + 168) & 1) != 0)
  {
    goto LABEL_26;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:nn200100](v4);
    }

    std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
  }

  if (*(impl + 11))
  {
    std::allocator<unsigned long>::allocate_at_least[abi:nn200100](1uLL);
  }

  v3 = std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
  if (v5)
  {
    v3 = [v5 count];
    if (v3)
    {
      v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v42 objects:buf count:16];
      if (v8)
      {
        v9 = *v43;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v43 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v42 + 1) + 8 * i);
            if ([(NSAttributedString *)v6 length])
            {
              v12 = CSStore2::getAttributedStringWithCharacter(0x20);
              [(NSAttributedString *)v6 appendAttributedString:v12];

              v13 = CSStore2::getAttributedStringWithCharacter(0x20);
              [(NSAttributedString *)v6 appendAttributedString:v13];
            }

            [(NSAttributedString *)v6 appendAttributedString:v11];
          }

          v8 = [v7 countByEnumeratingWithState:&v42 objects:buf count:16];
        }

        while (v8);
      }

      if (*(impl + 153))
      {
        goto LABEL_33;
      }

      v14 = objc_alloc(MEMORY[0x1E696AAB0]);
      context = [MEMORY[0x1E696AEC0] stringWithFormat:@" (%016llx)", *(impl + 8), context];
      v16 = [v14 initWithString:context];
      [(NSAttributedString *)v6 appendAttributedString:v16];

LABEL_32:
LABEL_33:
      v17 = v7;
      goto LABEL_35;
    }

    v17 = v5;
  }

  else
  {
LABEL_26:
    v17 = 0;
  }

  if (*(self->_writer.var0.__val_._impl + 168) == 1)
  {
    context = CSStore2::getLog(v3);
    if (os_log_type_enabled(context, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(impl + 8);
      *buf = 134218242;
      v47 = v29;
      v48 = 2114;
      v49 = v34;
      _os_log_debug_impl(&dword_1B9D5B000, context, OS_LOG_TYPE_DEBUG, "Eliding empty flags value (%016llx) for title %{public}@", buf, 0x16u);
    }

    v6 = 0;
    v7 = v17;
    goto LABEL_32;
  }

  v6 = CSStore2::getAttributedStringWithCharacter(0x23);
LABEL_35:

  objc_autoreleasePoolPop(context);
  if (v6)
  {
    if (*(impl + 153) == 1)
    {
      CSStore2::AttributedStringWriter::attributedString(&self->_writer, v34, v6);
    }

    else
    {
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(impl + 8)];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = ___ZN8CSStore222AttributedStringWriter8endFlagsEv_block_invoke;
      v38[3] = &unk_1E7ED33F8;
      p_writer = &self->_writer;
      v39 = v34;
      v40 = v6;
      CSStore2::AttributedStringWriter::withAppliedAttribute(&self->_writer, @"_CSVNum", v18, v38);
    }
  }

  memset(v35, 0, sizeof(v35));
  v36 = 1065353216;
  v37 = 0;
  v19 = *(impl + 7);
  *(impl + 7) = 0;

  *(impl + 8) = 0;
  if (*(impl + 12))
  {
    std::__hash_table<std::__hash_value_type<unsigned long,NSString * {__strong}>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,NSString * {__strong}>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,NSString * {__strong}>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,NSString * {__strong}>>>::__deallocate_node(*(impl + 11));
    *(impl + 11) = 0;
    v20 = *(impl + 10);
    if (v20)
    {
      for (j = 0; j != v20; ++j)
      {
        *(*(impl + 9) + 8 * j) = 0;
      }
    }

    *(impl + 12) = 0;
  }

  v22 = *(impl + 9);
  *(impl + 9) = 0;
  if (v22)
  {
    operator delete(v22);
  }

  *(impl + 10) = 0;
  *(impl + 11) = 0;
  *(impl + 12) = 0;
  *(impl + 26) = 1065353216;
  if (*(impl + 17))
  {
    v23 = *(impl + 16);
    if (v23)
    {
      do
      {
        v24 = *v23;
        operator delete(v23);
        v23 = v24;
      }

      while (v24);
    }

    *(impl + 16) = 0;
    v25 = *(impl + 15);
    if (v25)
    {
      for (k = 0; k != v25; ++k)
      {
        *(*(impl + 14) + 8 * k) = 0;
      }
    }

    *(impl + 17) = 0;
  }

  *&v35[0] = 0;
  v27 = *(impl + 14);
  *(impl + 14) = 0;
  if (v27)
  {
    operator delete(v27);
  }

  *(impl + 15) = 0;
  *(impl + 16) = 0;
  *(&v35[0] + 1) = 0;
  *(impl + 17) = 0;
  *(impl + 36) = 1065353216;
  *(impl + 76) = v37;
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v35);
  std::__hash_table<std::__hash_value_type<unsigned long,NSString * {__strong}>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,NSString * {__strong}>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,NSString * {__strong}>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,NSString * {__strong}>>>::__deallocate_node(0);

  v28 = *MEMORY[0x1E69E9840];
}

- (void)beginFlags:(id)flags flags:(unint64_t)a4
{
  impl = self->_writer.var0.__val_._impl;
  if (*(impl + 152) == 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void CSStore2::AttributedStringWriter::beginFlags(NSString *const __strong _Nonnull, uintmax_t)"}];
    [currentHandler handleFailureInFunction:v11 file:@"CSAttributedStringWriter.mm" lineNumber:828 description:@"Nesting flag lists is not supported. Possible missing call to endFlags()?"];
  }

  v7 = [flags copy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F37D5878;
  }

  objc_storeStrong(impl + 7, v9);

  *(impl + 8) = a4;
  *(impl + 76) = 1;
}

- (void)setVisualizer:(id)visualizer
{
  objc_storeStrong(self->_writer.var0.__val_._impl + 20, visualizer);
  userInfo = [visualizer userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"_CSAttributedStringWriterIsChildUnitWithTitle"];
  *(self->_writer.var0.__val_._impl + 170) = [v5 BOOLValue];
}

- (void)setLocale:(id)locale
{
  localeCopy = locale;
  v4 = [localeCopy copy];
  impl = self->_writer.var0.__val_._impl;
  v6 = *(impl + 3);
  *(impl + 3) = v4;
}

- (NSAttributedString)attributedString
{
  v2 = [(NSMutableAttributedString *)self->_attributedString copy];

  return v2;
}

- (id)init:(__CSStore *)init outBuffer:(id)buffer
{
  bufferCopy = buffer;
  v12.receiver = self;
  v12.super_class = CSStoreAttributedStringWriter;
  v8 = [(CSStoreAttributedStringWriter *)&v12 init];
  v9 = v8;
  if (v8)
  {
    p_writer = &v8->_writer;
    if (v9->_writer.__engaged_)
    {
      CSStore2::AttributedStringWriter::~AttributedStringWriter(p_writer);
      v9->_writer.__engaged_ = 0;
    }

    *v9->_writer.var0.__val_._reserved = 0u;
    v9->_writer.var0.__val_._vptr$AttributedStringWriter = &unk_1F37D4CE8;
    *&v9->_writer.var0.__val_._reserved[2] = 0u;
    *&v9->_writer.var0.__val_._reserved[4] = 0u;
    *&v9->_writer.var0.__val_._reserved[6] = 0u;
    *&v9->_writer.var0.__val_._reserved[8] = 0u;
    *&v9->_writer.var0.__val_._reserved[10] = 0u;
    *&v9->_writer.var0.__val_._reserved[12] = 0u;
    *&v9->_writer.var0.__val_._reserved[14] = 0u;
    *&v9->_writer.var0.__val_._reserved[16] = 0u;
    *&v9->_writer.var0.__val_._reserved[18] = 0u;
    *&v9->_writer.var0.__val_._reserved[20] = 0u;
    *&v9->_writer.var0.__val_._reserved[22] = 0u;
    *&v9->_writer.var0.__val_._reserved[24] = 0u;
    *&v9->_writer.var0.__val_._reserved[26] = 0u;
    *&v9->_writer.var0.__val_._reserved[28] = 0u;
    v9->_writer.var0.__val_._reserved[1] = bufferCopy;
    *&v9->_writer.var0.__val_._reserved[2] = 0u;
    *&v9->_writer.var0.__val_._reserved[4] = 0u;
    *&v9->_writer.var0.__val_._reserved[6] = 0u;
    *&v9->_writer.var0.__val_._reserved[8] = 0u;
    *&v9->_writer.var0.__val_._reserved[10] = 0u;
    v9->_writer.var0.__val_._reserved[12] = 0;
    LODWORD(v9->_writer.var0.__val_._reserved[13]) = 1065353216;
    *&v9->_writer.var0.__val_._reserved[14] = 0u;
    *&v9->_writer.var0.__val_._reserved[16] = 0u;
    LODWORD(v9->_writer.var0.__val_._reserved[18]) = 1065353216;
    LOWORD(v9->_writer.var0.__val_._reserved[19]) = 0;
    v9->_writer.var0.__val_._reserved[20] = 0;
    LOWORD(v9->_writer.var0.__val_._reserved[21]) = 257;
    BYTE2(v9->_writer.var0.__val_._reserved[21]) = 0;
    if (init)
    {
      objc_storeStrong(v9->_writer.var0.__val_._reserved, init);
    }

    v9->_writer.var0.__val_._impl = v9->_writer.var0.__val_._reserved;
    v9->_writer.__engaged_ = 1;
    objc_storeStrong(&v9->_attributedString, buffer);
  }

  return v9;
}

+ (id)newWithBuffer:(id)buffer
{
  bufferCopy = buffer;
  v4 = [[CSStoreAttributedStringWriter alloc] init:0 outBuffer:bufferCopy];

  return v4;
}

+ (id)new
{
  v2 = [CSStoreAttributedStringWriter alloc];
  v3 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v4 = [(CSStoreAttributedStringWriter *)v2 init:0 outBuffer:v3];

  return v4;
}

+ (id)newWithStore:(__CSStore *)store buffer:(id)buffer
{
  bufferCopy = buffer;
  v6 = [[CSStoreAttributedStringWriter alloc] init:store outBuffer:bufferCopy];

  return v6;
}

@end