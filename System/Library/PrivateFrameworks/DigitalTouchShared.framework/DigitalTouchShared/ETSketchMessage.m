@interface ETSketchMessage
- (BOOL)_decodeWithDoodle:(id)a3;
- (ETSketchMessage)init;
- (ETSketchMessage)initWithArchiveData:(id)a3;
- (double)messageDuration;
- (id)archiveData;
- (void)addSketchPoint:(CGPoint)a3;
- (void)addStrokeWithColor:(id)a3;
- (void)convertToSimulatedPlaybackSpeed;
- (void)didEndWisp;
- (void)didReachRendererLimit;
- (void)setParentMessage:(id)a3;
- (void)willBeginWisp;
@end

@implementation ETSketchMessage

- (ETSketchMessage)init
{
  v9.receiver = self;
  v9.super_class = ETSketchMessage;
  v2 = [(ETMessage *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    strokes = v2->_strokes;
    v2->_strokes = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    colorsInMessage = v2->_colorsInMessage;
    v2->_colorsInMessage = v5;

    v7 = v2;
  }

  return v2;
}

- (void)didReachRendererLimit
{
  v3 = [(ETMessage *)self delegate];
  [v3 messageWillReachSizeLimit:self];
}

- (void)addStrokeWithColor:(id)a3
{
  v4 = a3;
  [(ETMessage *)self setColor:v4];
  [(NSMutableArray *)self->_colorsInMessage addObject:v4];

  strokes = self->_strokes;
  v6 = [MEMORY[0x277CBEB18] array];
  [(NSMutableArray *)strokes addObject:v6];
}

- (void)addSketchPoint:(CGPoint)a3
{
  v4 = (a3.x + 1.0) * 32767.0;
  v5 = llroundf(v4);
  v6 = (a3.y + 1.0) * 32767.0;
  v11 = v5 | (llroundf(v6) << 16);
  v7 = [(ETMessage *)self timeSource];
  [v7 elapsedTimeSinceStartOfMessage:self];
  v12 = llround(v8 * 1000.0);

  v9 = [(NSMutableArray *)self->_strokes lastObject];
  v10 = [MEMORY[0x277CCAE60] valueWithBytes:&v11 objCType:"{?={?=SS}{?=S}}"];
  [v9 addObject:v10];
}

- (BOOL)_decodeWithDoodle:(id)a3
{
  v4 = a3;
  v40 = [v4 doodleCount];
  v5 = [v4 doodleData];
  v6 = [v5 bytes];
  v33 = v5;
  v7 = [v5 length] >> 1;
  v8 = [v4 colorData];
  v36 = [v8 bytes];
  v32 = v8;
  v9 = [v8 length];
  v38 = v9 >> 2;
  self->_hasMultipleColors = v9 > 7;
  v34 = v4;
  v10 = [v4 pointTimeDeltaData];
  v41 = [v10 bytes];
  v31 = v10;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = [v10 length] >> 1;
  v37 = v6 + 2;
  v35 = v6 + 6;
  v39 = self;
  do
  {
    v15 = v11;
    if (v11 == v40)
    {
      break;
    }

    v16 = [MEMORY[0x277CBEB18] array];
    [(NSMutableArray *)self->_strokes addObject:v16];
    v17 = v13 + 2;
    if (v13 + 2 > v7)
    {

      v15 = v11;
      break;
    }

    if (!self->_hasMultipleColors || v11 >= v38)
    {
      v19 = -1;
    }

    else
    {
      v19 = *(v36 + 4 * v11);
    }

    v20 = *(v37 + 2 * v13);
    colorsInMessage = self->_colorsInMessage;
    v22 = [MEMORY[0x277D75348] colorWithRed:v19 / 255.0 green:BYTE1(v19) / 255.0 blue:BYTE2(v19) / 255.0 alpha:HIBYTE(v19) / 255.0];
    [(NSMutableArray *)colorsInMessage addObject:v22];

    v23 = v20 == 0;
    if (v20 && v13 + 4 <= v7)
    {
      v24 = 0;
      v25 = v13 + 6;
      v26 = v35 + 2 * v13;
      do
      {
        v42 = *(v26 - 2);
        v43 = 0;
        if (v12 < v14)
        {
          v43 = *(v41 + 2 * v12);
        }

        v27 = [MEMORY[0x277CCAE60] valueWithBytes:&v42 objCType:"{?={?=SS}{?=S}}"];
        [v16 addObject:v27];

        ++v12;
        ++v24;
        v28 = v25 + 2;
        v23 = v24 >= v20;
        if (v24 >= v20)
        {
          break;
        }

        v26 += 4;
        v29 = v25 > v7;
        v25 += 2;
      }

      while (!v29);
      v17 = v28 - 4;
    }

    v15 = v11++;

    v13 = v17;
    self = v39;
  }

  while (v23);

  return v15 >= v40;
}

- (ETSketchMessage)initWithArchiveData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ETSketchMessage;
  v5 = [(ETMessage *)&v9 initWithArchiveData:v4];
  if (!v5)
  {
LABEL_4:
    v6 = v5;
    goto LABEL_6;
  }

  v6 = [[ETPDoodle alloc] initWithData:v4];
  if (v6)
  {
    v7 = [(ETSketchMessage *)v5 _decodeWithDoodle:v6];

    if (!v7)
    {
      v6 = 0;
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_6:

  return v6;
}

- (id)archiveData
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(ETPDoodle);
  v4 = [(NSMutableArray *)self->_strokes count];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v44 = self;
  v5 = self->_strokes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v46;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 += [*(*(&v45 + 1) + 8 * i) count];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  [(ETPDoodle *)v3 setDoodleCount:v4];
  v11 = [MEMORY[0x277CBEB28] data];
  [v11 setLength:4 * (v8 + v4)];
  v43 = [v11 mutableBytes];
  v12 = [MEMORY[0x277CBEB28] data];
  [v12 setLength:4 * v4];
  v42 = [v12 mutableBytes];
  v38 = v11;
  v39 = v3;
  v37 = v12;
  if ([(ETMessage *)v44 supportsPlaybackTimeOffset])
  {
    v13 = [MEMORY[0x277CBEB28] data];
    v14 = v13;
    if (v13)
    {
      [v13 setLength:2 * v8];
      v15 = [v14 mutableBytes];
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = 0;
LABEL_15:
  v36 = v14;
  v16 = [v14 length];
  v41 = [(NSMutableArray *)v44->_strokes count];
  if (v41)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = v16 >> 1;
    v40 = vdupq_n_s64(0x406FE00000000000uLL);
    do
    {
      v21 = [(NSMutableArray *)v44->_strokes objectAtIndexedSubscript:v18];
      v22 = [(NSMutableArray *)v44->_colorsInMessage objectAtIndexedSubscript:v18];
      v51 = 0.0;
      v52 = 0.0;
      v49 = 0.0;
      v50 = 0.0;
      [v22 getRed:&v52 green:&v51 blue:&v50 alpha:&v49];
      v23 = v50 * 255.0;
      v24 = llroundf(v23);
      v25.f64[0] = v49;
      v25.f64[1] = v51;
      *&v25.f64[0] = vshl_u32(vcvt_s32_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(v25, v40)))), 0x800000018);
      v26 = LODWORD(v25.f64[0]);
      *v25.f64 = v52 * 255.0;
      *(v42 + 4 * v18) = v26 | (v24 << 16) | llroundf(*v25.f64) | HIDWORD(v25.f64[0]);

      v27 = (v43 + 2 * v17);
      *v27 = 0;
      v27[1] = [v21 count];
      v28 = [v21 count];
      v29 = v17 + 2;
      if (v28)
      {
        v30 = v28;
        v31 = 0;
        v32 = v43 + 6 + 2 * v17;
        do
        {
          WORD2(v52) = 0;
          LODWORD(v52) = 0;
          v33 = [v21 objectAtIndexedSubscript:v31];
          [v33 getValue:&v52];

          if (v15 && v19 < v20)
          {
            *(v15 + 2 * v19++) = WORD2(v52);
          }

          *(v32 - 2) = LODWORD(v52);
          ++v31;
          v29 += 2;
          v32 += 4;
        }

        while (v30 != v31);
      }

      ++v18;
      v17 = v29;
    }

    while (v18 != v41);
  }

  [(ETPDoodle *)v39 setDoodleData:v38];
  [(ETPDoodle *)v39 setColorData:v37];
  [(ETPDoodle *)v39 setPointTimeDeltaData:v36];
  v34 = [(ETPDoodle *)v39 data];

  return v34;
}

- (void)willBeginWisp
{
  self->_didDrawPoints = 1;
  if ([(ETMessage *)self delayWisp])
  {
    v3 = [(ETMessage *)self parentMessage];
    [v3 childMessageDidDelayWisp:self];
  }

  v4 = [(ETMessage *)self delegate];
  [v4 messageWillStopPlaying:self];
}

- (void)didEndWisp
{
  self->_didEndWisping = 1;
  v3 = [(ETMessage *)self delegate];
  [v3 messageDidStopPlaying:self];
}

- (void)setParentMessage:(id)a3
{
  v5.receiver = self;
  v5.super_class = ETSketchMessage;
  [(ETMessage *)&v5 setParentMessage:?];
  [(ETMessage *)self setDelayWisp:a3 != 0];
}

- (void)convertToSimulatedPlaybackSpeed
{
  v34 = *MEMORY[0x277D85DE8];
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_strokes, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = 96;
  v18 = self;
  obj = self->_strokes;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v20 = *v29;
    v5 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count", v17, v18)}];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v9 = v7;
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v25;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v25 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v24 + 1) + 8 * j);
              v23 = 0;
              v22 = 0;
              [v14 getValue:&v22];
              v23 = llround(v5 * 1000.0);
              v15 = [MEMORY[0x277CCAE60] valueWithBytes:&v22 objCType:"{?={?=SS}{?=S}}"];
              [v8 addObject:v15];

              v5 = v5 + 0.01666;
            }

            v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v11);
        }

        [v21 addObject:v8];
        v5 = v5 + 0.3;
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v4);
  }

  v16 = *(&v18->super.super.isa + v17);
  *(&v18->super.super.isa + v17) = v21;

  [(ETMessage *)v18 setSupportsPlaybackTimeOffset:1];
}

- (double)messageDuration
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(ETMessage *)self supportsPlaybackTimeOffset])
  {
    v3 = [(NSMutableArray *)self->_strokes lastObject];
    v4 = [v3 lastObject];

    if (v4)
    {
      v18 = 0;
      v17 = 0;
      [(NSMutableArray *)v4 getValue:&v17];
      LOWORD(v5) = v18;
      v6 = v5 / 1000.0 + 3.0;
    }

    else
    {
      v6 = 0.0;
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = self->_strokes;
    v7 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v10 = v10 + [*(*(&v13 + 1) + 8 * i) count] * 0.01666 + 0.3;
        }

        v8 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v8);
      v6 = v10 + 3.0;
    }

    else
    {
      v6 = 3.0;
    }
  }

  return v6;
}

@end