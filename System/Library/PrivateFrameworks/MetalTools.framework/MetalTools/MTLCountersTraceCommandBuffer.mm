@interface MTLCountersTraceCommandBuffer
- (id).cxx_construct;
- (id)blitCommandEncoder;
- (id)computeCommandEncoder;
- (id)init:(BOOL)a3;
- (id)renderCommandEncoder;
- (id)resourceStateCommandEncoder;
- (void)dealloc;
- (void)saveCommandBuffer:(const void *)a3 queue:(id)a4 profilingResults:(id)a5;
@end

@implementation MTLCountersTraceCommandBuffer

- (id)init:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MTLCountersTraceCommandBuffer;
  v4 = [(MTLCountersTraceCommandBuffer *)&v6 init];
  if (v4)
  {
    v4->_encoders = objc_opt_new();
    v4->_flags |= v3;
    v4->_timestamp = mach_absolute_time();
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLCountersTraceCommandBuffer;
  [(MTLCountersTraceCommandBuffer *)&v3 dealloc];
}

- (id)blitCommandEncoder
{
  v3 = [[MTLCountersTraceBlitCommandEncoder alloc] init:&self->_commands];
  [(NSMutableArray *)self->_encoders addObject:v3];

  return v3;
}

- (id)computeCommandEncoder
{
  v3 = [[MTLCountersTraceComputeCommandEncoder alloc] init:&self->_commands];
  [(NSMutableArray *)self->_encoders addObject:v3];

  return v3;
}

- (id)renderCommandEncoder
{
  v3 = [[MTLCountersTraceRenderCommandEncoder alloc] init:&self->_commands];
  [(NSMutableArray *)self->_encoders addObject:v3];

  return v3;
}

- (id)resourceStateCommandEncoder
{
  v3 = [[MTLCountersTraceResourceStateCommandEncoder alloc] init:&self->_commands];
  [(NSMutableArray *)self->_encoders addObject:v3];

  return v3;
}

- (void)saveCommandBuffer:(const void *)a3 queue:(id)a4 profilingResults:(id)a5
{
  v72 = *MEMORY[0x277D85DE8];
  v69 = 0;
  v68 = 0;
  memset(&v67.stream, 0, sizeof(v67.stream));
  v67._vptr$AppendBuffer = &unk_2841C0150;
  AppendBuffer::WriteBytes(&v67, &v67.stream, "{", 1uLL);
  AppendBuffer::WriteBytes(&v67, &v67.stream, "version:", 0xBuLL);
  AppendBuffer::WriteBytes(&v67, &v67.stream, "0.908", 5uLL);
  AppendBuffer::WriteBytes(&v67, &v67.stream, "", 1uLL);
  AppendBuffer::WriteBytes(&v67, &v67.stream, ",handle:", 0xBuLL);
  v8 = snprintf(__str, 0x20uLL, "%p", a3);
  AppendBuffer::WriteBytes(&v67, &v67.stream, __str, v8);
  AppendBuffer::WriteBytes(&v67, &v67.stream, "", 1uLL);
  AppendBuffer::WriteBytes(&v67, &v67.stream, ",device:{", 0xBuLL);
  v9 = [a4 device];
  AppendBuffer::WriteBytes(&v67, &v67.stream, "handle:", 0xAuLL);
  v10 = snprintf(__str, 0x20uLL, "%p", v9);
  AppendBuffer::WriteBytes(&v67, &v67.stream, __str, v10);
  AppendBuffer::WriteBytes(&v67, &v67.stream, "", 1uLL);
  v11 = [objc_msgSend(a4 "device")];
  AppendBuffer::WriteBytes(&v67, &v67.stream, ",name:", 9uLL);
  AppendBuffer::WriteBytes(&v67, &v67.stream, [v11 UTF8String], objc_msgSend(v11, "lengthOfBytesUsingEncoding:", 4));
  AppendBuffer::WriteBytes(&v67, &v67.stream, "", 1uLL);
  AppendBuffer::WriteBytes(&v67, &v67.stream, "}", 1uLL);
  AppendBuffer::WriteBytes(&v67, &v67.stream, ",queue:{", 0xAuLL);
  AppendBuffer::WriteBytes(&v67, &v67.stream, "handle:", 0xAuLL);
  v59 = a4;
  v12 = snprintf(__str, 0x20uLL, "%p", a4);
  AppendBuffer::WriteBytes(&v67, &v67.stream, __str, v12);
  AppendBuffer::WriteBytes(&v67, &v67.stream, "", 1uLL);
  AppendBuffer::WriteBytes(&v67, &v67.stream, "}", 1uLL);
  if (a5)
  {
    AppendBuffer::WriteBytes(&v67, &v67.stream, ",events:{", 0xBuLL);
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v13 = [a5 countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 1;
      v16 = *v64;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v64 != v16)
          {
            objc_enumerationMutation(a5);
          }

          v18 = *(*(&v63 + 1) + 8 * i);
          if ((v15 & 1) == 0)
          {
            AppendBuffer::WriteBytes(&v67, &v67.stream, ",", 1uLL);
          }

          v19 = [objc_msgSend(a5 objectForKey:{v18), "unsignedIntegerValue"}];
          AppendBuffer::WriteBytes(&v67, &v67.stream, "", 1uLL);
          AppendBuffer::WriteBytes(&v67, &v67.stream, [v18 UTF8String], objc_msgSend(v18, "lengthOfBytesUsingEncoding:", 4));
          AppendBuffer::WriteBytes(&v67, &v67.stream, ":", 2uLL);
          v20 = snprintf(__str, 0x20uLL, "%llu", v19);
          AppendBuffer::WriteBytes(&v67, &v67.stream, __str, v20);
          v15 = 0;
        }

        v14 = [a5 countByEnumeratingWithState:&v63 objects:v70 count:16];
        v15 = 0;
      }

      while (v14);
    }

    AppendBuffer::WriteBytes(&v67, &v67.stream, "}", 1uLL);
  }

  v21 = ",";
  v22 = self;
  v62 = (*(self->_commands._vptr$AppendBuffer + 3))(&self->_commands, &v69, &v68);
  v23 = "";
  if (v68)
  {
    AppendBuffer::WriteBytes(&v67, &v67.stream, ",methods:[", 0xCuLL);
    v24 = &qword_2787B3FA8;
    v25 = 137;
    do
    {
      if (v25 == 137)
      {
        v26 = "";
      }

      else
      {
        v26 = ",";
      }

      AppendBuffer::WriteBytes(&v67, &v67.stream, v26, v25 != 137);
      AppendBuffer::WriteBytes(&v67, &v67.stream, "{selector:", 0xDuLL);
      v27 = strlen(*(v24 - 1));
      AppendBuffer::WriteBytes(&v67, &v67.stream, *(v24 - 1), v27);
      AppendBuffer::WriteBytes(&v67, &v67.stream, "", 1uLL);
      if (*v24)
      {
        StringBuffer::Append<char [10],unsigned long long>(&v67, ",flags:", v24);
      }

      AppendBuffer::WriteBytes(&v67, &v67.stream, "}", 1uLL);
      v24 += 2;
      --v25;
    }

    while (v25);
    AppendBuffer::WriteBytes(&v67, &v67.stream, "]", 1uLL);
    StringBuffer::Append<char [14],NSData *,char [2]>(&v67, ",commands:", &v62, "");
    AppendBuffer::WriteBytes(&v67, &v67.stream, ",commandBufferLength:", 0x17uLL);
    v28 = snprintf(__str, 0x20uLL, "%llu", v68);
    AppendBuffer::WriteBytes(&v67, &v67.stream, __str, v28);
    v29 = 16;
    if (!v69)
    {
      v29 = 0;
    }

    v22 = self;
    self->_flags |= v29;
  }

  if ([(NSMutableArray *)v22->_encoders count])
  {
    AppendBuffer::WriteBytes(&v67, &v67.stream, ",encoders:[", 0xDuLL);
    v30 = [(NSMutableArray *)v22->_encoders count];
    if (v30)
    {
      v31 = v30;
      for (j = 0; j != v31; ++j)
      {
        v33 = [(NSMutableArray *)v22->_encoders objectAtIndexedSubscript:j];
        if (j)
        {
          v34 = ",";
        }

        else
        {
          v34 = "";
        }

        AppendBuffer::WriteBytes(&v67, &v67.stream, v34, j != 0);
        *__str = [v33 flags];
        StringBuffer::Append<char [10],unsigned long long>(&v67, "{flags:", __str);
        [v33 segment];
        if (v35)
        {
          v36 = [v33 segment];
          [v33 segment];
          v38 = v37;
          AppendBuffer::WriteBytes(&v67, &v67.stream, ",segment:{location:", 0x17uLL);
          v58 = v36;
          v22 = self;
          v39 = snprintf(__str, 0x20uLL, "%llu", v58);
          AppendBuffer::WriteBytes(&v67, &v67.stream, __str, v39);
          AppendBuffer::WriteBytes(&v67, &v67.stream, ",length:", 0xAuLL);
          v40 = snprintf(__str, 0x20uLL, "%llu", v38);
          AppendBuffer::WriteBytes(&v67, &v67.stream, __str, v40);
          AppendBuffer::WriteBytes(&v67, &v67.stream, "}", 1uLL);
        }

        AppendBuffer::WriteBytes(&v67, &v67.stream, "}", 1uLL);
      }
    }

    AppendBuffer::WriteBytes(&v67, &v67.stream, "]", 1uLL);
    v21 = ",";
  }

  v61 = (*(v22->_samples._vptr$AppendBuffer + 3))(&v22->_samples, &v69, &v68);
  if (v68)
  {
    v41 = (~[v59 getStatLocations] & 0xF300) == 0;
    v42 = v69 | (2 * v41);
    v43 = [v59 getRequestedCounters];
    AppendBuffer::WriteBytes(&v67, &v67.stream, ",statistics:{flags:", 0x17uLL);
    v44 = snprintf(__str, 0x20uLL, "%llu", v42);
    AppendBuffer::WriteBytes(&v67, &v67.stream, __str, v44);
    AppendBuffer::WriteBytes(&v67, &v67.stream, ",counters:[", 0xDuLL);
    v45 = [v43 count];
    if (v45)
    {
      v46 = v45;
      for (k = 0; k != v46; ++k)
      {
        v48 = v21;
        if (!k)
        {
          v21 = v23;
        }

        v49 = v23;
        v50 = [v43 objectAtIndexedSubscript:k];
        v51 = v21;
        v21 = v48;
        AppendBuffer::WriteBytes(&v67, &v67.stream, v51, k != 0);
        AppendBuffer::WriteBytes(&v67, &v67.stream, "{name:", 9uLL);
        v52 = [v50 UTF8String];
        v53 = v50;
        v23 = v49;
        AppendBuffer::WriteBytes(&v67, &v67.stream, v52, [v53 lengthOfBytesUsingEncoding:4]);
        AppendBuffer::WriteBytes(&v67, &v67.stream, "}", 2uLL);
      }
    }

    StringBuffer::Append<char [14],NSData *,char [2]>(&v67, "],samples:", &v61, "");
    AppendBuffer::WriteBytes(&v67, &v67.stream, ",sampleBufferLength:", 0x16uLL);
    v54 = snprintf(__str, 0x20uLL, "%llu", v68);
    AppendBuffer::WriteBytes(&v67, &v67.stream, __str, v54);
    AppendBuffer::WriteBytes(&v67, &v67.stream, "}", 1uLL);
    v22 = self;
  }

  StringBuffer::Append<char [10],unsigned long long>(&v67, ",flags:", &v22->_flags);
  AppendBuffer::WriteBytes(&v67, &v67.stream, "}", 1uLL);
  v55 = [objc_msgSend(v59 "tracePath")];
  *__str = 0;
  v56 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v67.stream.bytes length:v67.stream.pWrite - v67.stream.bytes freeWhenDone:1];
  memset(&v67.stream, 0, sizeof(v67.stream));
  if (([v56 writeToFile:v55 options:0 error:__str] & 1) == 0)
  {
    NSLog(&cfstr_ErrorSavingFil.isa, v55, [*__str localizedDescription]);
  }

  v57 = *MEMORY[0x277D85DE8];
}

- (id).cxx_construct
{
  self->_commands.stream.bytes = 0;
  self->_commands.stream.pWrite = 0;
  self->_commands.stream.pEnd = 0;
  self->_commands._vptr$AppendBuffer = &unk_2841C0180;
  mach_timebase_info(&self->_commands._timebase);
  self->_samples._vptr$AppendBuffer = &unk_2841C01B0;
  self->_samples.stream.bytes = 0;
  self->_samples.stream.pWrite = 0;
  self->_samples.stream.pEnd = 0;
  return self;
}

@end