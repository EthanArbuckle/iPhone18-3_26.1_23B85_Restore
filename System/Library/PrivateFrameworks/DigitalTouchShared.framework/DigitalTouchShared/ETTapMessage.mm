@interface ETTapMessage
- (CGPoint)pointAtIndex:(unint64_t)index;
- (ETTapMessage)init;
- (ETTapMessage)initWithArchiveData:(id)data;
- (double)messageDuration;
- (double)timeDeltaAtIndex:(unint64_t)index;
- (id).cxx_construct;
- (id)_animateCircleInner0:(double)inner0 inner1:(double)inner1 outer0:(double)outer0 outer1:(double)outer1 duration:(double)duration;
- (id)archiveData;
- (unint64_t)tapCount;
- (void)_displayInScene:(id)scene point:(CGPoint)point color:(id)color filled:(BOOL)filled withWisp:(BOOL)wisp;
- (void)addTapAtPoint:(CGPoint)point time:(double)time color:(id)color;
- (void)displayInScene:(id)scene;
@end

@implementation ETTapMessage

- (ETTapMessage)init
{
  v8.receiver = self;
  v8.super_class = ETTapMessage;
  v2 = [(ETMessage *)&v8 init];
  v3 = v2;
  if (v2)
  {
    preVisualizeScene = v2->_preVisualizeScene;
    v2->_preVisualizeScene = 0;

    v3->_baseTime = -1.0;
  }

  array = [MEMORY[0x277CBEB18] array];
  colors = v3->_colors;
  v3->_colors = array;

  return v3;
}

- (ETTapMessage)initWithArchiveData:(id)data
{
  v67 = *MEMORY[0x277D85DE8];
  v64.receiver = self;
  v64.super_class = ETTapMessage;
  dataCopy = data;
  v3 = [(ETMessage *)&v64 initWithArchiveData:?];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_47;
  }

  v3->_noiseFieldLock._os_unfair_lock_opaque = 0;
  v5 = [[ETPTap alloc] initWithData:dataCopy];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_48;
  }

  v55 = v5;
  timeDeltas = [(ETPTap *)v5 timeDeltas];
  points = [(ETPTap *)v6 points];
  colors = [(ETPTap *)v6 colors];
  v7 = [timeDeltas length];
  v8 = [points length];
  v63 = [colors length];
  v9 = timeDeltas;
  bytes = [timeDeltas bytes];
  v10 = points;
  bytes2 = [points bytes];
  v12 = colors;
  bytes3 = [colors bytes];
  v56 = v7 >> 1;
  v54 = v8 >> 2;
  if (v7 >> 1 == v8 >> 2)
  {
    if (v7 < 0x2A)
    {
      v15 = v7 >> 1;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v66 = v7 >> 1;
          _os_log_impl(&dword_248D00000, v14, OS_LOG_TYPE_INFO, "itemCount (%zu) higher than the limit", buf, 0xCu);
        }
      }

      v15 = 20;
    }

    if (v63 >= 8 && !v4->_colors)
    {
      array = [MEMORY[0x277CBEB18] array];
      colors = v4->_colors;
      v4->_colors = array;
    }

    if (v15)
    {
      v19 = 0;
      p_begin = &v4->_times.__begin_;
      v21 = (bytes2 + 2);
      do
      {
        v22 = *(v21 - 1);
        LOWORD(v13) = *(bytes + 2 * v19);
        v23 = *v21;
        end = v4->_times.__end_;
        cap = v4->_times.__cap_;
        v26 = *&v13 / 1000.0;
        if (end >= cap)
        {
          v28 = *p_begin;
          v29 = end - *p_begin;
          v30 = v29 >> 3;
          v31 = (v29 >> 3) + 1;
          if (v31 >> 61)
          {
            _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE20__throw_length_errorB8ne200100Ev();
          }

          v32 = cap - v28;
          if (v32 >> 2 > v31)
          {
            v31 = v32 >> 2;
          }

          v33 = v32 >= 0x7FFFFFFFFFFFFFF8;
          v34 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v33)
          {
            v34 = v31;
          }

          if (v34)
          {
            _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&v4->_times, v34);
          }

          *(8 * v30) = v26;
          v27 = 8 * v30 + 8;
          memcpy(0, v28, v29);
          v35 = *p_begin;
          *p_begin = 0;
          v4->_times.__end_ = v27;
          v4->_times.__cap_ = 0;
          if (v35)
          {
            operator delete(v35);
          }
        }

        else
        {
          *end = v26;
          v27 = (end + 1);
        }

        v4->_times.__end_ = v27;
        v36 = v22 / 32767.0 + -1.0;
        v13 = v23 / 32767.0;
        v37 = v13 + -1.0;
        v38 = &v4->_points.__begin_;
        p_x = &v4->_points.__end_->x;
        v39 = v4->_points.__cap_;
        if (p_x >= v39)
        {
          v42 = *v38;
          v43 = p_x - *v38;
          v44 = v43 >> 4;
          v45 = (v43 >> 4) + 1;
          if (v45 >> 60)
          {
            _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE20__throw_length_errorB8ne200100Ev();
          }

          v46 = v39 - v42;
          if (v46 >> 3 > v45)
          {
            v45 = v46 >> 3;
          }

          v33 = v46 >= 0x7FFFFFFFFFFFFFF0;
          v47 = 0xFFFFFFFFFFFFFFFLL;
          if (!v33)
          {
            v47 = v45;
          }

          if (v47)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(&v4->_points, v47);
          }

          v48 = (16 * v44);
          *v48 = v36;
          v48[1] = v37;
          v41 = 16 * v44 + 16;
          memcpy(0, v42, v43);
          v49 = *v38;
          *v38 = 0;
          v4->_points.__end_ = v41;
          v4->_points.__cap_ = 0;
          if (v49)
          {
            operator delete(v49);
          }
        }

        else
        {
          *p_x = v36;
          p_x[1] = v37;
          v41 = (p_x + 2);
        }

        v4->_points.__end_ = v41;
        if (v63 >= 8 && v19 < v63 >> 2)
        {
          v50 = v4->_colors;
          v51 = [MEMORY[0x277D75348] colorWithRed:*(bytes3 + 4 * v19) / 255.0 green:BYTE1(*(bytes3 + 4 * v19)) / 255.0 blue:BYTE2(*(bytes3 + 4 * v19)) / 255.0 alpha:HIBYTE(*(bytes3 + 4 * v19)) / 255.0];
          [(NSMutableArray *)v50 addObject:v51];
        }

        v21 += 2;
        ++v19;
      }

      while (v15 != v19);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248D00000, v16, OS_LOG_TYPE_INFO, "Corrupt tap message encountered", buf, 2u);
    }
  }

  if (v56 == v54)
  {
LABEL_47:
    v52 = v4;
  }

  else
  {
LABEL_48:
    v52 = 0;
  }

  return v52;
}

- (id)archiveData
{
  v24 = objc_alloc_init(ETPTap);
  tapCount = [(ETTapMessage *)self tapCount];
  data = [MEMORY[0x277CBEB28] data];
  data2 = [MEMORY[0x277CBEB28] data];
  data3 = [MEMORY[0x277CBEB28] data];
  [data setLength:2 * tapCount];
  [data2 setLength:4 * tapCount];
  [data3 setLength:4 * tapCount];
  mutableBytes = [data mutableBytes];
  mutableBytes2 = [data2 mutableBytes];
  mutableBytes3 = [data3 mutableBytes];
  if (tapCount)
  {
    v6 = mutableBytes3;
    v7 = 0;
    v8 = 0;
    v9 = (mutableBytes2 + 2);
    v25 = vdupq_n_s64(0x406FE00000000000uLL);
    do
    {
      *(mutableBytes + 2 * v8) = llround(self->_times.__begin_[v8] * 1000.0);
      v10 = &self->_points.__begin_[v7];
      y = v10->y;
      v12 = (v10->x + 1.0) * 32767.0;
      LOWORD(v10) = llroundf(v12);
      v13 = (y + 1.0) * 32767.0;
      *(v9 - 1) = v10;
      *v9 = llroundf(v13);
      v14 = [(NSMutableArray *)self->_colors objectAtIndexedSubscript:v8];
      v29 = 0.0;
      v30 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      [v14 getRed:&v30 green:&v29 blue:&v28 alpha:&v27];
      v15 = v28 * 255.0;
      v16 = llroundf(v15);
      v17.f64[0] = v27;
      v17.f64[1] = v29;
      *&v17.f64[0] = vshl_u32(vcvt_s32_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(v17, v25)))), 0x800000018);
      v18 = LODWORD(v17.f64[0]);
      *v17.f64 = v30 * 255.0;
      *(v6 + 4 * v8) = v18 | (v16 << 16) | llroundf(*v17.f64) | HIDWORD(v17.f64[0]);

      ++v8;
      v9 += 2;
      ++v7;
    }

    while (tapCount != v8);
  }

  [(ETPTap *)v24 setTimeDeltas:data];
  [(ETPTap *)v24 setPoints:data2];
  [(ETPTap *)v24 setColors:data3];
  data4 = [(ETPTap *)v24 data];

  return data4;
}

- (unint64_t)tapCount
{
  v2 = self->_times.__end_ - self->_times.__begin_;
  end = self->_points.__end_;
  if (end - self->_points.__begin_ >= (v2 >> 3))
  {
    return v2 >> 3;
  }

  else
  {
    return end - self->_points.__begin_;
  }
}

- (CGPoint)pointAtIndex:(unint64_t)index
{
  if ([(ETTapMessage *)self tapCount]< index)
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"tapIndex > number of taps" userInfo:0];
    objc_exception_throw(v8);
  }

  v5 = &self->_points.__begin_[index];
  x = v5->x;
  y = v5->y;
  result.y = y;
  result.x = x;
  return result;
}

- (double)timeDeltaAtIndex:(unint64_t)index
{
  if ([(ETTapMessage *)self tapCount]< index)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"tapIndex > number of taps" userInfo:0];
    objc_exception_throw(v6);
  }

  return self->_times.__begin_[index];
}

- (void)addTapAtPoint:(CGPoint)point time:(double)time color:(id)color
{
  y = point.y;
  x = point.x;
  v41 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  [(ETMessage *)self setColor:colorCopy];
  baseTime = self->_baseTime;
  if (baseTime >= 0.0)
  {
    v11 = time - baseTime;
  }

  else
  {
    v11 = 0.0;
  }

  self->_baseTime = time;
  p_points = &self->_points;
  end = self->_points.__end_;
  cap = self->_points.__cap_;
  if (end >= cap)
  {
    begin = p_points->__begin_;
    v17 = end - p_points->__begin_;
    v18 = v17 >> 4;
    v19 = (v17 >> 4) + 1;
    if (v19 >> 60)
    {
      _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE20__throw_length_errorB8ne200100Ev();
    }

    v20 = cap - begin;
    if (v20 >> 3 > v19)
    {
      v19 = v20 >> 3;
    }

    v21 = v20 >= 0x7FFFFFFFFFFFFFF0;
    v22 = 0xFFFFFFFFFFFFFFFLL;
    if (!v21)
    {
      v22 = v19;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(&self->_points, v22);
    }

    v23 = (16 * v18);
    *v23 = x;
    v23[1] = y;
    v15 = (16 * v18 + 16);
    memcpy(0, begin, v17);
    v24 = p_points->__begin_;
    p_points->__begin_ = 0;
    self->_points.__end_ = v15;
    self->_points.__cap_ = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    end->x = x;
    end->y = y;
    v15 = end + 1;
  }

  self->_points.__end_ = v15;
  p_times = &self->_times;
  v27 = self->_times.__end_;
  v26 = self->_times.__cap_;
  if (v27 >= v26)
  {
    v29 = p_times->__begin_;
    v30 = v27 - p_times->__begin_;
    v31 = v30 >> 3;
    v32 = (v30 >> 3) + 1;
    if (v32 >> 61)
    {
      _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE20__throw_length_errorB8ne200100Ev();
    }

    v33 = v26 - v29;
    if (v33 >> 2 > v32)
    {
      v32 = v33 >> 2;
    }

    v21 = v33 >= 0x7FFFFFFFFFFFFFF8;
    v34 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v21)
    {
      v34 = v32;
    }

    if (v34)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&self->_times, v34);
    }

    *(8 * v31) = v11;
    v28 = (8 * v31 + 8);
    memcpy(0, v29, v30);
    v35 = p_times->__begin_;
    p_times->__begin_ = 0;
    self->_times.__end_ = v28;
    self->_times.__cap_ = 0;
    if (v35)
    {
      operator delete(v35);
    }
  }

  else
  {
    *v27 = v11;
    v28 = v27 + 1;
  }

  self->_times.__end_ = v28;
  [(NSMutableArray *)self->_colors addObject:colorCopy];
  if (self->_preVisualizeScene)
  {
    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        date = [MEMORY[0x277CBEAA8] date];
        v38 = [ETUtility dateFormatWithMilliseconds:date];
        v39 = 138412290;
        v40 = v38;
        _os_log_impl(&dword_248D00000, v36, OS_LOG_TYPE_INFO, "(%@) ETTapMessage playing tap haptic", &v39, 0xCu);
      }
    }

    [(ETTapMessage *)self _displayInScene:self->_preVisualizeScene point:colorCopy color:0 filled:1 withWisp:x, y];
  }
}

- (void)displayInScene:(id)scene
{
  sceneCopy = scene;
  array = [MEMORY[0x277CBEB18] array];
  v29 = sceneCopy;
  objc_initWeak(location, sceneCopy);
  v6 = [(NSMutableArray *)self->_colors count];
  if (v6)
  {
    color = 0;
  }

  else
  {
    color = [(ETMessage *)self color];
  }

  for (i = 0; [(ETTapMessage *)self tapCount]> i; ++i)
  {
    [(ETTapMessage *)self pointAtIndex:i];
    v10 = v9;
    v12 = v11;
    [(ETTapMessage *)self timeDeltaAtIndex:i];
    v14 = v13;
    if (v6)
    {
      colors = self->_colors;
      if (v6 <= i)
      {
        [(NSMutableArray *)colors objectAtIndexedSubscript:v6 - 1];
      }

      else
      {
        [(NSMutableArray *)colors objectAtIndexedSubscript:i];
      }
      v16 = ;

      color = v16;
    }

    if ([(ETMessage *)self isRenderingOffscreen])
    {
      WeakRetained = objc_loadWeakRetained(location);
      v18 = *&v14 > 0.5 || i == [(ETTapMessage *)self tapCount]- 1;
      [(ETTapMessage *)self _displayInScene:WeakRetained point:color color:1 filled:v18 withWisp:*&v10, *&v12];
    }

    else
    {
      v19 = [getSKActionClass() waitForDuration:*&v14];
      [array addObject:v19];

      SKActionClass = getSKActionClass();
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __31__ETTapMessage_displayInScene___block_invoke;
      v35[3] = &unk_278F7A370;
      v35[4] = self;
      objc_copyWeak(v37, location);
      v37[1] = v10;
      v37[2] = v12;
      v36 = color;
      v37[3] = v14;
      v38 = i;
      v21 = [SKActionClass runBlock:v35];
      [array addObject:v21];

      objc_destroyWeak(v37);
    }
  }

  if (![(ETMessage *)self isRenderingOffscreen])
  {
    objc_initWeak(&from, self);
    v22 = [getSKActionClass() waitForDuration:1.0];
    [array addObject:v22];

    v23 = getSKActionClass();
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __31__ETTapMessage_displayInScene___block_invoke_13;
    v32[3] = &unk_278F7A398;
    objc_copyWeak(&v33, &from);
    v24 = [v23 runBlock:v32 queue:MEMORY[0x277D85CD0]];
    [array addObject:v24];

    v25 = [getSKActionClass() waitForDuration:1.0];
    [array addObject:v25];

    v26 = getSKActionClass();
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __31__ETTapMessage_displayInScene___block_invoke_2;
    v30[3] = &unk_278F7A398;
    objc_copyWeak(&v31, &from);
    v27 = [v26 runBlock:v30 queue:MEMORY[0x277D85CD0]];
    [array addObject:v27];

    v28 = [getSKActionClass() sequence:array];
    [v29 runAction:v28];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&from);
  }

  objc_destroyWeak(location);
}

void __31__ETTapMessage_displayInScene___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [MEMORY[0x277CBEAA8] date];
      v4 = [ETUtility dateFormatWithMilliseconds:v3];
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_248D00000, v2, OS_LOG_TYPE_INFO, "(%@) ETTapMessage playing tap haptic", &v12, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 40);
  if (*(a1 + 72) <= 0.5)
  {
    v11 = *(a1 + 80);
    v10 = [*(a1 + 32) tapCount] - 1 == v11;
  }

  else
  {
    v10 = 1;
  }

  [v5 _displayInScene:WeakRetained point:v9 color:1 filled:v10 withWisp:{v7, v8}];
}

void __31__ETTapMessage_displayInScene___block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 messageWillStopPlaying:v3];
}

void __31__ETTapMessage_displayInScene___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 messageDidStopPlaying:v3];
}

- (id)_animateCircleInner0:(double)inner0 inner1:(double)inner1 outer0:(double)outer0 outer1:(double)outer1 duration:(double)duration
{
  v10 = inner1 - inner0;
  v11 = outer1 - outer0;
  SKActionClass = getSKActionClass();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__ETTapMessage__animateCircleInner0_inner1_outer0_outer1_duration___block_invoke;
  v15[3] = &__block_descriptor_64_e19_v24__0__SKNode_8d16l;
  *&v15[4] = duration;
  *&v15[5] = outer0;
  v16 = v11;
  v17 = v10;
  *&v15[6] = inner0;
  v13 = [SKActionClass customActionWithDuration:v15 actionBlock:duration];

  return v13;
}

void __67__ETTapMessage__animateCircleInner0_inner1_outer0_outer1_duration___block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = a3 / *(a1 + 32);
  v8 = v5;
  CirclePath = createCirclePath(*(a1 + 40) + *(a1 + 56) * v6, *(a1 + 48) + *(a1 + 60) * v6);
  [v8 setPath:CirclePath];
  CGPathRelease(CirclePath);
}

- (void)_displayInScene:(id)scene point:(CGPoint)point color:(id)color filled:(BOOL)filled withWisp:(BOOL)wisp
{
  filledCopy = filled;
  y = point.y;
  x = point.x;
  v174 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  colorCopy = color;
  v142[0] = 0;
  v142[1] = v142;
  baseTime = self->_baseTime;
  v142[2] = 0x2020000000;
  *&v142[3] = baseTime;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      date = [MEMORY[0x277CBEAA8] date];
      v15 = [ETUtility dateFormatWithMilliseconds:date];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_248D00000, v13, OS_LOG_TYPE_INFO, "(%@) ETTapMessage displaying tap in scene", &buf, 0xCu);
    }
  }

  os_unfair_lock_lock(&self->_noiseFieldLock);
  noiseField = self->_noiseField;
  if (!noiseField)
  {
    v143 = 0.0;
    v144 = &v143;
    v145 = 0x2050000000;
    v17 = getSKFieldNodeClass(void)::softClass;
    v146 = getSKFieldNodeClass(void)::softClass;
    if (!getSKFieldNodeClass(void)::softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v171 = ___ZL19getSKFieldNodeClassv_block_invoke;
      v172 = &unk_278F7A428;
      v173 = &v143;
      ___ZL19getSKFieldNodeClassv_block_invoke(&buf);
      v17 = *(v144 + 3);
    }

    v18 = v17;
    _Block_object_dispose(&v143, 8);
    v19 = [v17 noiseFieldWithSmoothness:drand48() * 0.1 + 0.5 animationSpeed:60.0];
    v20 = self->_noiseField;
    self->_noiseField = v19;

    LODWORD(v21) = 1.0;
    [(SKFieldNode *)self->_noiseField setStrength:v21];
    [(SKFieldNode *)self->_noiseField setCategoryBitMask:2];
    noiseField = self->_noiseField;
  }

  parent = [(SKFieldNode *)noiseField parent];
  v23 = parent == 0;

  if (v23)
  {
    [sceneCopy addChild:self->_noiseField];
  }

  isRenderingOffscreen = [(ETMessage *)self isRenderingOffscreen];
  if (!isRenderingOffscreen)
  {
    v24 = self->_noiseField;
    SKActionClass = getSKActionClass();
    v26 = [getSKActionClass() waitForDuration:3.0];
    v169[0] = v26;
    removeFromParent = [getSKActionClass() removeFromParent];
    v169[1] = removeFromParent;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v169 count:2];
    v29 = [SKActionClass sequence:v28];
    [(SKFieldNode *)v24 runAction:v29 withKey:@"removal"];
  }

  os_unfair_lock_unlock(&self->_noiseFieldLock);
  [sceneCopy size];
  v31 = fmax(v30 / 156.0, 1.0);
  if (v31 <= 3.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = 3.0;
  }

  node = [getSKNodeClass() node];
  [sceneCopy frame];
  v34 = v33;
  [sceneCopy frame];
  [node setPosition:{x * v34 * 0.5, y * v35 * 0.5}];
  [node setScale:v32];
  [sceneCopy addChild:node];
  node2 = [getSKNodeClass() node];
  [node addChild:node2];
  v143 = 0.0;
  v144 = &v143;
  v145 = 0x2050000000;
  v36 = getSKShapeNodeClass(void)::softClass;
  v146 = getSKShapeNodeClass(void)::softClass;
  if (!getSKShapeNodeClass(void)::softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v171 = ___ZL19getSKShapeNodeClassv_block_invoke;
    v172 = &unk_278F7A428;
    v173 = &v143;
    ___ZL19getSKShapeNodeClassv_block_invoke(&buf);
    v36 = *(v144 + 3);
  }

  v37 = v36;
  _Block_object_dispose(&v143, 8);
  node3 = [v36 node];
  [node3 setFillColor:colorCopy];
  [node3 setStrokeColor:colorCopy];
  [node3 setZPosition:1.0];
  [node addChild:node3];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v171 = 0x2020000000;
  LODWORD(v172) = 0;
  v39 = getSKActionClass();
  v140[0] = MEMORY[0x277D85DD0];
  v140[1] = 3221225472;
  v140[2] = __60__ETTapMessage__displayInScene_point_color_filled_withWisp___block_invoke;
  v140[3] = &unk_278F7A3E0;
  v140[4] = self;
  v140[5] = v142;
  wispCopy = wisp;
  v140[6] = &buf;
  v128 = [v39 customActionWithDuration:v140 actionBlock:0.200000003];
  v129 = [getSKActionClass() customActionWithDuration:&__block_literal_global_5 actionBlock:0.0];
  v40 = _dots;
  if (!_dots)
  {
    v41 = ETFrameworkBundle();
    ET_SKSetResourceBundle(v41);

    v42 = [getSKEmitterNodeClass() nodeWithFileNamed:@"doodle_wisp_stroke"];
    v43 = _dots;
    _dots = v42;

    v44 = [objc_alloc(getSKKeyframeSequenceClass()) initWithKeyframeValues:&unk_285BC0DF8 times:&unk_285BC0E10];
    [v44 setInterpolationMode:2];
    [v44 setRepeatMode:1];
    [_dots setParticleScaleSequence:v44];
    [_dots setZPosition:-1.0];
    [_dots setParticleSpeedRange:6.0];
    [_dots setParticleSpeed:10.0];
    [_dots setYAcceleration:0.0];
    [_dots setXAcceleration:0.0];
    [_dots setParticleLifetime:1.5];
    [_dots setParticleLifetimeRange:0.5];
    [_dots setDensityBased:0];
    [_dots setParticleBirthRate:0.0];
    [_dots setParticleDensity:1.0];
    [_dots setEmissionAngleRange:6.28318531];
    [_dots setEmissionDistance:29.75];
    [_dots setEmissionDistanceRange:2.0];
    [_dots setFieldBitMask:2];
    v45 = [objc_alloc(getSKKeyframeSequenceClass()) initWithKeyframeValues:&unk_285BC0E28 times:&unk_285BC0E40];
    [v45 setInterpolationMode:1];
    [_dots setFieldInfluenceSequence:v45];
    [_dots setPosition:{0.0, 0.0}];

    v40 = _dots;
  }

  v46 = [v40 copy];
  v47 = colorCopy;
  v143 = 0.0;
  v156 = 0.0;
  v157 = 0.0;
  v155 = 0.0;
  v138 = v46;
  [v47 getRed:&v143 green:&v157 blue:&v156 alpha:&v155];
  particleColorSequence = [v46 particleColorSequence];
  if (particleColorSequence)
  {
    for (i = 0; [particleColorSequence count] > i; ++i)
    {
      v50 = [particleColorSequence getKeyframeValueForIndex:i];
      v153 = 0.0;
      v154 = 0.0;
      v151 = 0.0;
      v152 = 0.0;
      v149 = 0.0;
      v150 = 0.0;
      v147 = 0;
      v148 = 0.0;
      [v50 getRed:&v154 green:&v153 blue:&v152 alpha:&v151];
      v51 = [MEMORY[0x277D75348] colorWithRed:v143 green:v157 blue:v156 alpha:v151];
      [v51 getHue:&v150 saturation:&v149 brightness:&v148 alpha:&v147];
      v52 = v150 + (v154 + -0.5) * 2.0;
      v53 = v149 + (v153 + -0.5) * 2.0;
      v149 = fmaxf(fminf(v53, 1.0), 0.0);
      v150 = fmaxf(fminf(v52, 1.0), 0.0);
      v54 = v148 + (v152 + -0.5) * 2.0;
      v148 = fmaxf(fminf(v54, 1.0), 0.0);
      if (v143 == v157 && v157 == v156)
      {
        v55 = [MEMORY[0x277D75348] colorWithRed:v143 green:v157 blue:v156 alpha:v151];
      }

      else
      {
        v55 = [MEMORY[0x277D75348] colorWithHue:? saturation:? brightness:? alpha:?];
      }

      v56 = v55;
      [particleColorSequence setKeyframeValue:v55 forIndex:i];
    }

    [v138 setParticleColorSequence:particleColorSequence];
  }

  else
  {
    [v46 setParticleColor:v47];
  }

  [v138 setTargetNode:node2];
  [node addChild:v138];
  v57 = _smoke;
  if (!_smoke)
  {
    v58 = ETFrameworkBundle();
    ET_SKSetResourceBundle(v58);

    v59 = [getSKEmitterNodeClass() nodeWithFileNamed:@"doodle_wisp_dots"];
    v60 = _smoke;
    _smoke = v59;

    v61 = [objc_alloc(getSKKeyframeSequenceClass()) initWithKeyframeValues:&unk_285BC0E58 times:&unk_285BC0E70];
    [v61 setInterpolationMode:2];
    [v61 setRepeatMode:1];
    [_smoke setParticleScaleSequence:v61];
    [_smoke setZPosition:-2.0];
    [_smoke setParticleSpeedRange:6.0];
    [_smoke setParticleSpeed:10.0];
    [_smoke setYAcceleration:0.0];
    [_smoke setXAcceleration:0.0];
    [_smoke setParticleLifetime:1.5];
    [_smoke setParticleLifetimeRange:0.5];
    [_smoke setDensityBased:0];
    [_smoke setParticleBirthRate:0.0];
    [_smoke setParticleDensity:0.6];
    [_smoke setEmissionAngleRange:6.28318531];
    [_smoke setEmissionDistance:29.75];
    [_smoke setEmissionDistanceRange:2.0];
    [_smoke setFieldBitMask:2];
    v62 = [objc_alloc(getSKKeyframeSequenceClass()) initWithKeyframeValues:&unk_285BC0E88 times:&unk_285BC0EA0];
    [v62 setInterpolationMode:1];
    [_smoke setFieldInfluenceSequence:v62];
    [_smoke setPosition:{0.0, 0.0}];

    v57 = _smoke;
  }

  v63 = [v57 copy];
  v134 = v47;
  particleColorSequence2 = [v63 particleColorSequence];
  v65 = particleColorSequence2;
  if (particleColorSequence2)
  {
    v66 = [particleColorSequence2 count];
    v143 = 0.0;
    v156 = 0.0;
    v157 = 0.0;
    v155 = 0.0;
    [v134 getHue:&v143 saturation:&v157 brightness:&v156 alpha:&v155];
    if (v66)
    {
      for (j = 0; j != v66; ++j)
      {
        v68 = [v65 getKeyframeValueForIndex:j];
        v153 = 0.0;
        v154 = 0.0;
        v151 = 0.0;
        v152 = 0.0;
        [v68 getHue:&v154 saturation:&v153 brightness:&v152 alpha:&v151];
        v155 = [MEMORY[0x277D75348] colorWithHue:v143 saturation:v157 brightness:v152 alpha:v151 * v155];

        [v65 setKeyframeValue:v155 forIndex:j];
      }
    }

    [v63 setParticleColorSequence:v65];
  }

  else
  {
    [v63 setParticleColor:v134];
  }

  [v63 setTargetNode:node2];
  [node addChild:v63];
  if (filledCopy)
  {
    CirclePath = createCirclePath(32.5, 37.5);
    [node3 setPath:CirclePath];
    CGPathRelease(CirclePath);
    v133 = [(ETTapMessage *)self _animateCircleInner0:0.0 inner1:35.0 outer0:35.0 outer1:35.0 duration:0.649999976];
    [v133 setTimingMode:1];
    [node3 runAction:v133];
    [node3 setScale:0.0];
    v131 = [getSKActionClass() scaleTo:1.0 duration:0.649999976];
    [v131 setTimingMode:3];
    v71 = getSKActionClass();
    v168 = v131;
    v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v168 count:1];
    v73 = [v71 sequence:v72];
    [node3 runAction:v73];

    if (isRenderingOffscreen)
    {
      goto LABEL_45;
    }

    v74 = getSKActionClass();
    v75 = [getSKActionClass() waitForDuration:0.649999976];
    v167[0] = v75;
    v76 = [getSKActionClass() fadeOutWithDuration:0.227499992];
    v167[1] = v76;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:2];
    v78 = [v74 sequence:v77];
    [node3 runAction:v78];

    [node setAlpha:0.0];
    v79 = getSKActionClass();
    v80 = [getSKActionClass() fadeInWithDuration:0.3];
    v166[0] = v80;
    v81 = [getSKActionClass() waitForDuration:1.8];
    v166[1] = v81;
    v82 = [getSKActionClass() fadeOutWithDuration:0.5];
    v166[2] = v82;
    removeFromParent2 = [getSKActionClass() removeFromParent];
    v166[3] = removeFromParent2;
    v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:4];
    v85 = [v79 sequence:v84];
    [node runAction:v85];

    *(*(&buf + 1) + 24) = 1065353216;
    v86 = getSKActionClass();
    v87 = [getSKActionClass() waitForDuration:0.454999983];
    v165[0] = v87;
    v165[1] = v128;
    v165[2] = v129;
    v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v165 count:3];
    v89 = [v86 sequence:v88];
    [v138 runAction:v89];

    v90 = getSKActionClass();
    v91 = [getSKActionClass() waitForDuration:0.454999983];
    v164[0] = v91;
    v164[1] = v128;
    v164[2] = v129;
    v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v164 count:3];
    v93 = [v90 sequence:v92];
    [v63 runAction:v93];
    goto LABEL_43;
  }

  v94 = createCirclePath(32.5, 37.5);
  [node3 setPath:v94];
  CGPathRelease(v94);
  v133 = [(ETTapMessage *)self _animateCircleInner0:51.0 inner1:32.5 outer0:54.0 outer1:37.5 duration:0.324999988];
  v131 = [(ETTapMessage *)self _animateCircleInner0:32.5 inner1:35.0 outer0:37.5 outer1:35.0 duration:0.649999976];
  [v133 setTimingMode:2];
  [v131 setTimingMode:1];
  v95 = getSKActionClass();
  v163[0] = v133;
  v163[1] = v131;
  v96 = [MEMORY[0x277CBEA60] arrayWithObjects:v163 count:2];
  v97 = [v95 sequence:v96];
  [node3 runAction:v97];

  [node3 setScale:1.0];
  v91 = [getSKActionClass() scaleTo:0.8 duration:0.649999976];
  [v91 setTimingMode:3];
  v98 = getSKActionClass();
  v99 = [getSKActionClass() waitForDuration:0.129999995];
  v162[0] = v99;
  v162[1] = v91;
  v100 = [MEMORY[0x277CBEA60] arrayWithObjects:v162 count:2];
  v101 = [v98 sequence:v100];
  [node3 runAction:v101];

  if (!isRenderingOffscreen)
  {
    v102 = getSKActionClass();
    v103 = [getSKActionClass() waitForDuration:0.649999976];
    v161[0] = v103;
    v104 = [getSKActionClass() fadeOutWithDuration:0.227499992];
    v161[1] = v104;
    v105 = [MEMORY[0x277CBEA60] arrayWithObjects:v161 count:2];
    v106 = [v102 sequence:v105];
    [node3 runAction:v106];

    [node setAlpha:0.0];
    v107 = getSKActionClass();
    v108 = [getSKActionClass() fadeInWithDuration:0.3];
    v160[0] = v108;
    v109 = [getSKActionClass() waitForDuration:1.8];
    v160[1] = v109;
    v110 = [getSKActionClass() fadeOutWithDuration:0.5];
    v160[2] = v110;
    removeFromParent3 = [getSKActionClass() removeFromParent];
    v160[3] = removeFromParent3;
    v112 = [MEMORY[0x277CBEA60] arrayWithObjects:v160 count:4];
    v113 = [v107 sequence:v112];
    [node runAction:v113];

    *(*(&buf + 1) + 24) = -1082130432;
    v114 = getSKActionClass();
    v115 = [getSKActionClass() waitForDuration:0.454999983];
    v159[0] = v115;
    v159[1] = v128;
    v159[2] = v129;
    v116 = [MEMORY[0x277CBEA60] arrayWithObjects:v159 count:3];
    v117 = [v114 sequence:v116];
    [v138 runAction:v117];

    v118 = getSKActionClass();
    v92 = [getSKActionClass() waitForDuration:0.454999983];
    v158[0] = v92;
    v158[1] = v128;
    v158[2] = v129;
    v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v158 count:3];
    v119 = [v118 sequence:v93];
    [v63 runAction:v119];

LABEL_43:
  }

LABEL_45:
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v121 = [standardUserDefaults persistentDomainForName:@"com.apple.ET"];
  v122 = [v121 objectForKey:@"ETSceneLoggingEnabled"];
  bOOLValue = [v122 BOOLValue];

  if (bOOLValue)
  {
    v124 = MEMORY[0x277CCACA8];
    date2 = [MEMORY[0x277CBEAA8] date];
    v125 = [v124 stringWithFormat:@"/tmp/ETTapMessage-%@.sks", date2];

    v127 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:sceneCopy requiringSecureCoding:1 error:0];
    [v127 writeToFile:v125 atomically:1];
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(v142, 8);
}

void __60__ETTapMessage__displayInScene_point_color_filled_withWisp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 168) == *(*(*(a1 + 40) + 8) + 24) && (*(a1 + 56) & 1) != 0)
  {
    [v3 setParticleSpeed:(*(*(*(a1 + 48) + 8) + 24) * 10.0)];
    [v4 setDensityBased:0];
    [v4 setParticleBirthRate:1000.0];
  }

  else
  {
    [v3 resetSimulation];
  }
}

void __60__ETTapMessage__displayInScene_point_color_filled_withWisp___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setDensityBased:0];
  [v2 setParticleBirthRate:0.0];
}

- (double)messageDuration
{
  begin = self->_times.__begin_;
  end = self->_times.__end_;
  if (begin == end)
  {
    return 1.3;
  }

  v4 = 0.0;
  do
  {
    v5 = *begin++;
    v4 = v4 + v5;
  }

  while (begin != end);
  return v4 + 1.3;
}

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 14) = 0;
  *(self + 18) = 0;
  *(self + 19) = 0;
  *(self + 17) = 0;
  return self;
}

@end