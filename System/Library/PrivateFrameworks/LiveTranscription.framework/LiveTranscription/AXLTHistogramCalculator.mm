@interface AXLTHistogramCalculator
+ (id)histogramForAudioPCMBuffer:(id)buffer;
+ (id)histogramForAudioQueueBuffer:(AudioQueueBuffer *)buffer packetCount:(int64_t)count channelsCount:(int64_t)channelsCount format:(unint64_t)format;
+ (id)histogramForFloat32MonoBuffer:(float *)buffer samplesCount:(int64_t)count;
+ (id)histogramForInt16MonoBuffer:(signed __int16 *)buffer samplesCount:(int64_t)count;
@end

@implementation AXLTHistogramCalculator

+ (id)histogramForAudioPCMBuffer:(id)buffer
{
  bufferCopy = buffer;
  format = [bufferCopy format];
  channelCount = [format channelCount];

  if (channelCount <= 1 && (v7 = [bufferCopy frameLength], objc_msgSend(bufferCopy, "format"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "commonFormat"), v8, v9 == 1))
  {
    v10 = [self histogramForFloat32MonoBuffer:*(objc_msgSend(bufferCopy samplesCount:{"audioBufferList") + 16), v7}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)histogramForAudioQueueBuffer:(AudioQueueBuffer *)buffer packetCount:(int64_t)count channelsCount:(int64_t)channelsCount format:(unint64_t)format
{
  v9 = 0;
  if (channelsCount <= 1 && format == 3)
  {
    v9 = [self histogramForInt16MonoBuffer:buffer->mAudioData samplesCount:{channelsCount * count, v6}];
  }

  return v9;
}

+ (id)histogramForInt16MonoBuffer:(signed __int16 *)buffer samplesCount:(int64_t)count
{
  v40 = *MEMORY[0x277D85DE8];
  if (buffer)
  {
    v6 = objc_opt_new();
    v34 = objc_opt_new();
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = count / 16;
    v11 = count / 16;
    do
    {
      if (count >= v11)
      {
        countCopy = v11;
      }

      else
      {
        countCopy = count;
      }

      v13 = v9 * v10;
      if (++v9 * v10 >= count)
      {
        countCopy2 = count;
      }

      else
      {
        countCopy2 = v9 * v10;
      }

      if (v13 < countCopy2)
      {
        v15 = 0;
        v16 = 0;
        v17 = countCopy + v7;
        do
        {
          LODWORD(v18) = buffer[v13];
          if (v18 < 0)
          {
            LODWORD(v18) = -v18;
          }

          v19 = v18 >= 0xA;
          if (v18 >= 0xA)
          {
            v18 = v18;
          }

          else
          {
            v18 = 0;
          }

          if (!v19)
          {
            ++v16;
          }

          v15 += v18;
          ++v13;
        }

        while (v13 < countCopy2);
        if (v16 <= v17 >> 1)
        {
          if (v17)
          {
            v20 = (v15 / v17);
            if (v20 > v8)
            {
              v8 = v20;
            }

            v21 = [MEMORY[0x277CCABB0] numberWithDouble:?];
            [v34 addObject:v21];
          }
        }

        else
        {
          [v34 addObject:&unk_28681A5F8];
        }
      }

      v11 += v10;
      v7 -= v10;
    }

    while (v9 != 16);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = v34;
    v23 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 2000;
      if (v8 > 2000)
      {
        v25 = v8;
      }

      v26 = v25;
      v27 = *v36;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v36 != v27)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v35 + 1) + 8 * i) floatValue];
          v30 = v29 * 0.9 / v26;
          if (v30 < 0.1)
          {
            v30 = 0.1;
          }

          v31 = [MEMORY[0x277CCABB0] numberWithDouble:{fmin(v30, 1.0)}];
          [v6 addObject:v31];
        }

        v24 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v24);
    }
  }

  else
  {
    v6 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)histogramForFloat32MonoBuffer:(float *)buffer samplesCount:(int64_t)count
{
  v38 = *MEMORY[0x277D85DE8];
  if (buffer)
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v8 = 0;
    v9 = 0;
    v10 = count / 16;
    v11 = count / 16;
    v12 = 0.0;
    do
    {
      if (count >= v11)
      {
        countCopy = v11;
      }

      else
      {
        countCopy = count;
      }

      v14 = v9 * v10;
      countCopy2 = ++v9 * v10;
      if (v9 * v10 >= count)
      {
        countCopy2 = count;
      }

      if (v14 < countCopy2)
      {
        v16 = 0;
        v17 = countCopy + v8;
        v18 = 0.0;
        do
        {
          v19 = fabsf(buffer[v14]);
          if (v19 < 0.001)
          {
            v19 = 0.0;
            ++v16;
          }

          v18 = v18 + v19;
          ++v14;
        }

        while (v14 < countCopy2);
        if (v16 <= v17 >> 1)
        {
          if (v17)
          {
            v20 = v18 / v17;
            if (v20 > v12)
            {
              v12 = v20;
            }

            v21 = [MEMORY[0x277CCABB0] numberWithDouble:?];
            [v7 addObject:v21];
          }
        }

        else
        {
          [v7 addObject:{&unk_28681A5F8, v18}];
        }
      }

      v11 += v10;
      v8 -= v10;
    }

    while (v9 != 16);
    if (v12 >= 0.025)
    {
      v22 = v12;
    }

    else
    {
      v22 = 0.025;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v23 = v7;
    v24 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v34;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v33 + 1) + 8 * i) floatValue];
          v29 = v28 * 0.9 / v22;
          if (v29 < 0.1)
          {
            v29 = 0.1;
          }

          v30 = [MEMORY[0x277CCABB0] numberWithDouble:{fmin(v29, 1.0)}];
          [v6 addObject:v30];
        }

        v25 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v25);
    }
  }

  else
  {
    v6 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v6;
}

@end