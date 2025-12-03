@interface ETSketchMessage
- (BOOL)_decodeWithDoodle:(id)doodle;
- (ETSketchMessage)init;
- (ETSketchMessage)initWithArchiveData:(id)data;
- (double)messageDuration;
- (id)archiveData;
- (void)addSketchPoint:(CGPoint)point;
- (void)addStrokeWithColor:(id)color;
- (void)convertToSimulatedPlaybackSpeed;
- (void)didEndWisp;
- (void)didReachRendererLimit;
- (void)setParentMessage:(id)message;
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
    array = [MEMORY[0x277CBEB18] array];
    strokes = v2->_strokes;
    v2->_strokes = array;

    array2 = [MEMORY[0x277CBEB18] array];
    colorsInMessage = v2->_colorsInMessage;
    v2->_colorsInMessage = array2;

    v7 = v2;
  }

  return v2;
}

- (void)didReachRendererLimit
{
  delegate = [(ETMessage *)self delegate];
  [delegate messageWillReachSizeLimit:self];
}

- (void)addStrokeWithColor:(id)color
{
  colorCopy = color;
  [(ETMessage *)self setColor:colorCopy];
  [(NSMutableArray *)self->_colorsInMessage addObject:colorCopy];

  strokes = self->_strokes;
  array = [MEMORY[0x277CBEB18] array];
  [(NSMutableArray *)strokes addObject:array];
}

- (void)addSketchPoint:(CGPoint)point
{
  v4 = (point.x + 1.0) * 32767.0;
  v5 = llroundf(v4);
  v6 = (point.y + 1.0) * 32767.0;
  v11 = v5 | (llroundf(v6) << 16);
  timeSource = [(ETMessage *)self timeSource];
  [timeSource elapsedTimeSinceStartOfMessage:self];
  v12 = llround(v8 * 1000.0);

  lastObject = [(NSMutableArray *)self->_strokes lastObject];
  v10 = [MEMORY[0x277CCAE60] valueWithBytes:&v11 objCType:"{?={?=SS}{?=S}}"];
  [lastObject addObject:v10];
}

- (BOOL)_decodeWithDoodle:(id)doodle
{
  doodleCopy = doodle;
  doodleCount = [doodleCopy doodleCount];
  doodleData = [doodleCopy doodleData];
  bytes = [doodleData bytes];
  v33 = doodleData;
  v7 = [doodleData length] >> 1;
  colorData = [doodleCopy colorData];
  bytes2 = [colorData bytes];
  v32 = colorData;
  v9 = [colorData length];
  v38 = v9 >> 2;
  self->_hasMultipleColors = v9 > 7;
  v34 = doodleCopy;
  pointTimeDeltaData = [doodleCopy pointTimeDeltaData];
  bytes3 = [pointTimeDeltaData bytes];
  v31 = pointTimeDeltaData;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = [pointTimeDeltaData length] >> 1;
  v37 = bytes + 2;
  v35 = bytes + 6;
  selfCopy = self;
  do
  {
    v15 = v11;
    if (v11 == doodleCount)
    {
      break;
    }

    array = [MEMORY[0x277CBEB18] array];
    [(NSMutableArray *)self->_strokes addObject:array];
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
      v19 = *(bytes2 + 4 * v11);
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
          v43 = *(bytes3 + 2 * v12);
        }

        v27 = [MEMORY[0x277CCAE60] valueWithBytes:&v42 objCType:"{?={?=SS}{?=S}}"];
        [array addObject:v27];

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
    self = selfCopy;
  }

  while (v23);

  return v15 >= doodleCount;
}

- (ETSketchMessage)initWithArchiveData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = ETSketchMessage;
  v5 = [(ETMessage *)&v9 initWithArchiveData:dataCopy];
  if (!v5)
  {
LABEL_4:
    v6 = v5;
    goto LABEL_6;
  }

  v6 = [[ETPDoodle alloc] initWithData:dataCopy];
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
  selfCopy = self;
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
  data = [MEMORY[0x277CBEB28] data];
  [data setLength:4 * (v8 + v4)];
  mutableBytes = [data mutableBytes];
  data2 = [MEMORY[0x277CBEB28] data];
  [data2 setLength:4 * v4];
  mutableBytes2 = [data2 mutableBytes];
  v38 = data;
  v39 = v3;
  v37 = data2;
  if ([(ETMessage *)selfCopy supportsPlaybackTimeOffset])
  {
    data3 = [MEMORY[0x277CBEB28] data];
    v14 = data3;
    if (data3)
    {
      [data3 setLength:2 * v8];
      mutableBytes3 = [v14 mutableBytes];
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
  }

  mutableBytes3 = 0;
LABEL_15:
  v36 = v14;
  v16 = [v14 length];
  v41 = [(NSMutableArray *)selfCopy->_strokes count];
  if (v41)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = v16 >> 1;
    v40 = vdupq_n_s64(0x406FE00000000000uLL);
    do
    {
      v21 = [(NSMutableArray *)selfCopy->_strokes objectAtIndexedSubscript:v18];
      v22 = [(NSMutableArray *)selfCopy->_colorsInMessage objectAtIndexedSubscript:v18];
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
      *(mutableBytes2 + 4 * v18) = v26 | (v24 << 16) | llroundf(*v25.f64) | HIDWORD(v25.f64[0]);

      v27 = (mutableBytes + 2 * v17);
      *v27 = 0;
      v27[1] = [v21 count];
      v28 = [v21 count];
      v29 = v17 + 2;
      if (v28)
      {
        v30 = v28;
        v31 = 0;
        v32 = mutableBytes + 6 + 2 * v17;
        do
        {
          WORD2(v52) = 0;
          LODWORD(v52) = 0;
          v33 = [v21 objectAtIndexedSubscript:v31];
          [v33 getValue:&v52];

          if (mutableBytes3 && v19 < v20)
          {
            *(mutableBytes3 + 2 * v19++) = WORD2(v52);
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
  data4 = [(ETPDoodle *)v39 data];

  return data4;
}

- (void)willBeginWisp
{
  self->_didDrawPoints = 1;
  if ([(ETMessage *)self delayWisp])
  {
    parentMessage = [(ETMessage *)self parentMessage];
    [parentMessage childMessageDidDelayWisp:self];
  }

  delegate = [(ETMessage *)self delegate];
  [delegate messageWillStopPlaying:self];
}

- (void)didEndWisp
{
  self->_didEndWisping = 1;
  delegate = [(ETMessage *)self delegate];
  [delegate messageDidStopPlaying:self];
}

- (void)setParentMessage:(id)message
{
  v5.receiver = self;
  v5.super_class = ETSketchMessage;
  [(ETMessage *)&v5 setParentMessage:?];
  [(ETMessage *)self setDelayWisp:message != 0];
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
  selfCopy = self;
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
        v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count", v17, selfCopy)}];
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

  v16 = *(&selfCopy->super.super.isa + v17);
  *(&selfCopy->super.super.isa + v17) = v21;

  [(ETMessage *)selfCopy setSupportsPlaybackTimeOffset:1];
}

- (double)messageDuration
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(ETMessage *)self supportsPlaybackTimeOffset])
  {
    lastObject = [(NSMutableArray *)self->_strokes lastObject];
    v3LastObject = [lastObject lastObject];

    if (v3LastObject)
    {
      v18 = 0;
      v17 = 0;
      [(NSMutableArray *)v3LastObject getValue:&v17];
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
    v3LastObject = self->_strokes;
    v7 = [(NSMutableArray *)v3LastObject countByEnumeratingWithState:&v13 objects:v19 count:16];
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
            objc_enumerationMutation(v3LastObject);
          }

          v10 = v10 + [*(*(&v13 + 1) + 8 * i) count] * 0.01666 + 0.3;
        }

        v8 = [(NSMutableArray *)v3LastObject countByEnumeratingWithState:&v13 objects:v19 count:16];
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