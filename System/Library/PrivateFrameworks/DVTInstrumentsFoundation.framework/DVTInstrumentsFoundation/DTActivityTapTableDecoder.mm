@interface DTActivityTapTableDecoder
- (BOOL)next;
- (DTActivityTapTableDecoder)init;
- (NSString)processName;
- (NSTimeZone)timeZone;
- (XRConstantEngineeringValue)backtrace;
- (XRConstantEngineeringValue)message;
- (XRConstantEngineeringValue)process;
- (XRConstantEngineeringValue)senderImageUUID;
- (XRConstantEngineeringValue)thread;
- (double)unixTimeInterval;
- (id).cxx_construct;
- (unsigned)messageType;
- (void)addData:(id)data;
- (void)addMemo:(id)memo;
@end

@implementation DTActivityTapTableDecoder

- (DTActivityTapTableDecoder)init
{
  v8.receiver = self;
  v8.super_class = DTActivityTapTableDecoder;
  v2 = [(DTActivityTapTableDecoder *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    memos = v2->_memos;
    v2->_memos = v3;

    v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:0x400000];
    stack = v2->_stack;
    v2->_stack = v5;

    operator new();
  }

  return 0;
}

- (void)addMemo:(id)memo
{
  memoCopy = memo;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_memos addObject:memoCopy];
  }
}

- (void)addData:(id)data
{
  dataCopy = data;
  v4 = [[DTActivityTraceTapMemo alloc] initWithData:dataCopy];
  [(DTActivityTapTableDecoder *)self addMemo:v4];
}

- (BOOL)next
{
  if (self->_failed)
  {
    return 0;
  }

  if (self->_currentChunk)
  {
    goto LABEL_8;
  }

  if ([(NSMutableArray *)self->_memos count])
  {
    firstObject = [(NSMutableArray *)self->_memos firstObject];
    currentChunk = self->_currentChunk;
    self->_currentChunk = firstObject;

    [(NSMutableArray *)self->_memos removeObjectAtIndex:0];
    __p = 0;
    v6 = [(DTActivityTraceTapMemo *)self->_currentChunk getBufferWithLength:&__p];
    if (!__p)
    {
      return 0;
    }

    ptr = self->_decoder.__ptr_;
    v8 = &v6[__p & 0xFFFFFFFFFFFFFFFELL];
    *(ptr + 1) = v6;
    *(ptr + 2) = v8;
    *ptr = v6;
    self->_outOfData = 0;
  }

  if (self->_currentChunk)
  {
LABEL_8:
    p_columns = &self->_columns;
    while (1)
    {
      sub_247F82AD0(self->_tableRowDecoder.__ptr_);
      v10 = *(self->_decoder.__ptr_ + 20);
      if (v10 != 1)
      {
        if (v10 == 4)
        {
          firstObject2 = [(NSMutableArray *)self->_memos firstObject];
          v15 = self->_currentChunk;
          self->_currentChunk = firstObject2;

          if (!self->_currentChunk)
          {
            goto LABEL_115;
          }

          [(NSMutableArray *)self->_memos removeObjectAtIndex:0];
          __p = 0;
          v16 = [(DTActivityTraceTapMemo *)self->_currentChunk getBufferWithLength:&__p];
          if (!__p)
          {
            return 0;
          }

          v17 = self->_decoder.__ptr_;
          v18 = &v16[__p & 0xFFFFFFFFFFFFFFFELL];
          *(v17 + 1) = v16;
          *(v17 + 2) = v18;
          *v17 = v16;
          self->_outOfData = 0;
        }

        else if ((v10 - 5) < 2)
        {
          result = 0;
          self->_failed = 1;
          return result;
        }

        goto LABEL_21;
      }

      v11 = self->_tableRowDecoder.__ptr_;
      v12 = *(v11 + 9);
      if (*(v12 + 80) != 1)
      {
        goto LABEL_21;
      }

      v13 = *(v12 + 88);
      if (v13 == 1)
      {
        break;
      }

      if (v13 == 2 && self->_osLogTableID == v13 >> 8)
      {
        return 1;
      }

LABEL_21:
      if (self->_failed)
      {
        return 0;
      }
    }

    __p = 0;
    v41 = 0;
    v42 = 0;
    if (!sub_247F82DDC(v11, &__p))
    {
      goto LABEL_32;
    }

    if (SHIBYTE(v42) < 0)
    {
      p_p = __p;
      if (v41 != 6)
      {
        operator delete(__p);
        goto LABEL_21;
      }
    }

    else
    {
      if (SHIBYTE(v42) != 6)
      {
        goto LABEL_21;
      }

      p_p = &__p;
    }

    if (*p_p != 1814917999 || p_p[2] != 26479)
    {
LABEL_32:
      v21 = 1;
      goto LABEL_33;
    }

    v22 = self->_tableRowDecoder.__ptr_;
    v23 = *(v22 + 9);
    if (*(v23 + 80) == 1 && (v24 = *(v23 + 88), v24 - 1 < 2))
    {
      self->_osLogTableID = HIBYTE(v24);
      *&p_columns->time = -1;
      *&self->_columns.thread = -1;
      v39 = 0;
      if (sub_247F82F40(v22, &v39))
      {
        if (v39)
        {
          for (i = 0; v39 > i; ++i)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v26 = sub_247F82FC0(self->_tableRowDecoder.__ptr_, i, &v36);
            v27 = v26;
            if (!v26)
            {
              self->_failed = 1;
              goto LABEL_107;
            }

            if (SHIBYTE(v38) < 0)
            {
              if (v37 == 4 && *v36 == 1701669236)
              {
LABEL_76:
                p_columns->time = i;
                goto LABEL_107;
              }

              if (v37 == 8 && *v36 == 0x79726F6765746163)
              {
LABEL_87:
                self->_columns.category = i;
                goto LABEL_107;
              }

              if (v37 == 17)
              {
                v29 = v36;
                goto LABEL_66;
              }

              if (v37 == 9 && *v36 == 0x6574737973627573 && *(v36 + 8) == 109)
              {
LABEL_88:
                self->_columns.subsystem = i;
                goto LABEL_107;
              }
            }

            else
            {
              if (HIBYTE(v38) <= 8u)
              {
                if (HIBYTE(v38) == 4)
                {
                  if (v36 == 1701669236)
                  {
                    goto LABEL_76;
                  }
                }

                else if (HIBYTE(v38) == 8 && v36 == 0x79726F6765746163)
                {
                  goto LABEL_87;
                }

                goto LABEL_81;
              }

              if (HIBYTE(v38) == 9)
              {
                if (v36 == 0x6574737973627573 && v37 == 109)
                {
                  goto LABEL_88;
                }
              }

              else if (HIBYTE(v38) == 17)
              {
                v29 = &v36;
LABEL_66:
                v30 = *v29;
                v31 = v29[1];
                v32 = *(v29 + 16);
                if (v30 == 0x692D7265646E6573 && v31 == 0x7461702D6567616DLL && v32 == 104)
                {
                  self->_columns.senderImagePath = i;
                  goto LABEL_107;
                }
              }
            }

LABEL_81:
            if (sub_247F82EBC(&v36, "process-image-path"))
            {
              self->_columns.processImagePath = i;
            }

            else if (sub_247F82EBC(&v36, "sender-image-name"))
            {
              self->_columns.senderImageName = i;
            }

            else if (sub_247F82EBC(&v36, "sender-image-uuid"))
            {
              self->_columns.senderImageUUID = i;
            }

            else if (sub_247F82EBC(&v36, "sender-image-offset"))
            {
              self->_columns.senderImageOffset = i;
            }

            else if (sub_247F82EBC(&v36, "format-string"))
            {
              self->_columns.format = i;
            }

            else if (sub_247F82EBC(&v36, "message"))
            {
              self->_columns.message = i;
            }

            else if (sub_247F82EBC(&v36, "backtrace"))
            {
              self->_columns.backtrace = i;
            }

            else if (sub_247F82EBC(&v36, "process"))
            {
              self->_columns.process = i;
            }

            else if (sub_247F82EBC(&v36, "thread"))
            {
              self->_columns.thread = i;
            }

            else if (sub_247F82EBC(&v36, "message-type"))
            {
              self->_columns.messageType = i;
            }

            else if (sub_247F82EBC(&v36, "timezone-name"))
            {
              self->_columns.timezoneName = i;
            }

            else if (sub_247F82EBC(&v36, "unix-time-interval"))
            {
              self->_columns.unixTimeInterval = i;
            }

LABEL_107:
            if (SHIBYTE(v38) < 0)
            {
              operator delete(v36);
            }

            if ((v27 & 1) == 0)
            {
              goto LABEL_114;
            }
          }
        }

        v21 = 1;
      }

      else
      {
        self->_failed = 1;
LABEL_114:
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
      self->_failed = 1;
    }

LABEL_33:
    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p);
    }

    if ((v21 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_21;
  }

LABEL_115:
  result = 0;
  self->_outOfData = 1;
  return result;
}

- (NSString)processName
{
  processImagePath = [(DTActivityTapTableDecoder *)self processImagePath];
  lastPathComponent = [processImagePath lastPathComponent];

  return lastPathComponent;
}

- (XRConstantEngineeringValue)process
{
  if (sub_247F83314(self->_tableRowDecoder.__ptr_, self->_columns.process))
  {
    v3 = *(self->_tableRowDecoder.__ptr_ + 9);
    v6 = *(v3 + 64);
    v4 = sub_247F83398(&v6, v3, self);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (XRConstantEngineeringValue)thread
{
  v27[2] = *MEMORY[0x277D85DE8];
  if (sub_247F83314(self->_tableRowDecoder.__ptr_, self->_columns.thread))
  {
    v3 = *(self->_tableRowDecoder.__ptr_ + 9);
    v4 = v3[9];
    if (*(v4 + 8) == 19)
    {
      v5 = v3[8];
      v6 = v5 + *(v4 + 4);
      if (*(v6 - 4) == 2)
      {
        v7 = (v3[3] + *(v6 - 28));
        v3[8] = v7;
        v3[9] = v6 - 28;
        v8 = *(v6 - 24);
        v9 = *v7;
        v26 = *v7;
        if (v8 <= 7)
        {
          memset(&v27[-1] + v8, *(v6 - 19), 8 - v8);
          v9 = v26;
        }

        v10 = [(XRIntKeyedDictionary *)self->_threadsByTID objectForIntegerKey:v9];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
LABEL_8:

          goto LABEL_13;
        }

        if (*(v4 + 8) == 19)
        {
          v13 = v5 + *(v4 + 4);
          v16 = *(v13 - 4);
          v14 = v13 - 4;
          v15 = v16;
          if (v16 >= 2)
          {
            v17 = v14 - 12 * v15;
            v3[8] = v3[3] + *(v17 + 12);
            v3[9] = v17 + 12;
            v25 = *(v3 + 4);
            v18 = sub_247F83398(&v25, v3, self);
            v19 = MEMORY[0x277D036A0];
            v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
            v21 = [v19 engineeringValueWithTypeID:7 value:v20];

            v27[0] = v21;
            v27[1] = v18;
            v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
            v12 = [MEMORY[0x277D036A0] engineeringValueWithTypeID:8 value:v22];

            goto LABEL_8;
          }
        }
      }
    }
  }

  v12 = 0;
LABEL_13:
  v23 = *MEMORY[0x277D85DE8];

  return v12;
}

- (unsigned)messageType
{
  v2 = sub_247F83188(self, self->_columns.messageType);
  if (qword_27EE84288 != -1)
  {
    sub_24802CC34();
  }

  v3 = [qword_27EE84290 objectForKeyedSubscript:v2];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (XRConstantEngineeringValue)senderImageUUID
{
  if (sub_247F83314(self->_tableRowDecoder.__ptr_, self->_columns.senderImageUUID))
  {
    v3 = *(self->_tableRowDecoder.__ptr_ + 9);
    v6 = *(v3 + 64);
    v4 = sub_247F83998(&v6, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSTimeZone)timeZone
{
  v2 = sub_247F83188(self, self->_columns.timezoneName);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBB0] timeZoneWithName:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)unixTimeInterval
{
  unixTimeInterval = self->_columns.unixTimeInterval;
  selfCopy = self;
  v4 = 0.0;
  if (sub_247F83314(selfCopy->_tableRowDecoder.__ptr_, unixTimeInterval))
  {
    ptr = selfCopy->_decoder.__ptr_;
    v7 = *(ptr + 8);
    v6 = *(ptr + 9);
    v8 = *(v6 + 4);
    v9 = *v7;
    v11 = v9;
    if (v8 > 7)
    {
      v4 = v9;
    }

    else
    {
      memset(&v11 + v8, *(v6 + 9), 8 - v8);
      v4 = v11;
    }
  }

  return v4;
}

- (XRConstantEngineeringValue)backtrace
{
  ptr = self->_decoder.__ptr_;
  if (sub_247F83314(self->_tableRowDecoder.__ptr_, self->_columns.backtrace))
  {
    v5 = *(ptr + 4);
    v3 = sub_247F83D68(&v5, ptr);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (XRConstantEngineeringValue)message
{
  message = self->_columns.message;
  selfCopy = self;
  ptr = selfCopy->_decoder.__ptr_;
  if (sub_247F83314(selfCopy->_tableRowDecoder.__ptr_, message) && (v5 = *(ptr + 8), v7 = *(ptr + 9), v6 = (ptr + 64), *(v7 + 8) == 19))
  {
    v8 = *(v5 + *(v7 + 4) - 4);
    v79 = [MEMORY[0x277CBEB18] arrayWithCapacity:v8];
    if (v8)
    {
      v9 = 0;
      v10 = v5 - 4;
      v80 = (ptr + 64);
      do
      {
        if (*(v7 + 8) != 19)
        {
          goto LABEL_42;
        }

        v11 = (v10 + *(v7 + 4));
        v12 = *v11;
        if (v12 <= v9)
        {
          goto LABEL_42;
        }

        v13 = &v11[3 * (v9 - v12)];
        v14 = *(ptr + 3);
        v15 = v14 + *v13;
        *(ptr + 8) = v15;
        *(ptr + 9) = v13;
        if (*(v13 + 8) != 19)
        {
          goto LABEL_42;
        }

        v16 = v15 + v13[1];
        v19 = *(v16 - 4);
        v17 = v16 - 4;
        v18 = v19;
        if (!v19)
        {
          goto LABEL_42;
        }

        v20 = (v17 - 12 * v18);
        *(ptr + 8) = v14 + *v20;
        *(ptr + 9) = v20;
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sub_247F858BC(v6, selfCopy->_buffer, 0x400uLL)}];
        if (v21)
        {
          v78 = v21;
          v22 = XREngineeringTypeIDForMnemonic();
          v21 = v78;
          if (*(v13 + 8) == 19)
          {
            v23 = v15 + v13[1];
            v26 = *(v23 - 4);
            v24 = v23 - 4;
            v25 = v26;
            if (v26 >= 2)
            {
              v27 = v24 - 12 * v25;
              v29 = *(v27 + 12);
              v28 = (v27 + 12);
              v30 = *(ptr + 3);
              v31 = (v30 + v29);
              *(ptr + 8) = v31;
              *(ptr + 9) = v28;
              v32 = *(MEMORY[0x277D036D8] + v22);
              if (v32 <= 2)
              {
                if (!*(MEMORY[0x277D036D8] + v22))
                {
                  goto LABEL_31;
                }

                if (v32 == 1)
                {
                  v50 = *(v28 + 1);
                  v51 = *v31;
                  *&v81 = *v31;
                  if (v50 <= 7)
                  {
                    memset(&v81 + v50, v28[9], 8 - v50);
                    v51 = v81;
                  }

                  v52 = MEMORY[0x277D036A0];
                  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v51];
                  v43 = [v52 engineeringValueWithTypeID:v22 value:v42];
                  [v79 addObject:v43];
LABEL_39:

                  goto LABEL_40;
                }

                if (v32 == 2)
                {
                  v39 = *(v28 + 1);
                  v40 = *v31;
                  LODWORD(v81) = *v31;
                  if (v39 <= 3)
                  {
                    memset(&v81 + v39, v28[9], 4 - v39);
                    v40 = v81;
                  }

                  v41 = MEMORY[0x277D036A0];
                  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v40];
                  v43 = [v41 engineeringValueWithTypeID:v22 value:v42];
                  [v79 addObject:v43];
                  goto LABEL_39;
                }
              }

              else if (*(MEMORY[0x277D036D8] + v22) > 4u)
              {
                if (v32 == 5)
                {
                  goto LABEL_31;
                }

                if (v32 == 6)
                {
                  v44 = *(v28 + 1);
                  v45 = *v31;
                  *&v81 = *v31;
                  if (v44 > 7)
                  {
                    v46 = v45;
                  }

                  else
                  {
                    memset(&v81 + v44, v28[9], 8 - v44);
                    v46 = *&v81;
                  }

                  v53 = MEMORY[0x277D036A0];
                  v42 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
                  v43 = [v53 engineeringValueWithTypeID:v22 value:v42];
                  [v79 addObject:v43];
                  goto LABEL_39;
                }
              }

              else
              {
                if (v32 == 3)
                {
                  v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sub_247F858BC(v80, selfCopy->_buffer, 0x400uLL)}];
                  v49 = [MEMORY[0x277D036A0] engineeringValueWithTypeID:v22 value:v48];
                  [v79 addObject:v49];

                  goto LABEL_40;
                }

                if (v32 == 4)
                {
                  if (v22 == 163)
                  {
                    v81 = *v80;
                    v47 = sub_247F83D68(&v81, ptr);
                    if (v47)
                    {
                      [v79 addObject:v47];
                    }
                  }

                  else
                  {
                    if (v22 == 193)
                    {
                      if (v28[8] == 19)
                      {
                        v33 = v31 + *(v28 + 1);
                        v36 = *(v33 - 1);
                        v34 = v33 - 4;
                        v35 = v36;
                        v37 = v31;
                        v38 = v28;
                        if (v36)
                        {
                          v38 = &v34[-12 * v35];
                          v37 = (v30 + *v38);
                          *(ptr + 8) = v37;
                          *(ptr + 9) = v38;
                        }
                      }

                      else
                      {
                        v37 = v31;
                        v38 = v28;
                      }

                      v54 = *(v38 + 1);
                      v55 = *v37;
                      *&v81 = *v37;
                      if (v54 <= 7)
                      {
                        memset(&v81 + v54, v38[9], 8 - v54);
                        v55 = v81;
                      }

                      if (v55 >> 22 > 0x18)
                      {
LABEL_62:
                        v56 = 0;
                      }

                      else
                      {
                        v56 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v55];
                        v76 = v56;
                        mutableBytes = [v56 mutableBytes];
                        if (v55)
                        {
                          v58 = v55;
                          v59 = v31 - 1;
                          v60 = 1;
                          v75 = v31 - 1;
                          while (1)
                          {
                            if (v28[8] != 19 || (v61 = (v59 + *(v28 + 1)), v62 = *v61, v62 <= v60))
                            {

                              goto LABEL_62;
                            }

                            v63 = &v61[3 * (v60 - v62)];
                            v64 = (*(ptr + 3) + *v63);
                            *(ptr + 8) = v64;
                            *(ptr + 9) = v63;
                            v65 = v58 - 8;
                            if (v58 < 8)
                            {
                              break;
                            }

                            v66 = v63[1];
                            *mutableBytes = *v64;
                            if (v66 <= 7)
                            {
                              v77 = v58;
                              v67 = mutableBytes;
                              memset(mutableBytes + v66, *(*(ptr + 9) + 9), 8 - v66);
                              mutableBytes = v67;
                              v58 = v77;
                              v59 = v75;
                              v56 = v76;
                            }

                            ++v60;
                            ++mutableBytes;
                            v68 = v58 < 9;
                            v58 = v65;
                            if (v68)
                            {
                              goto LABEL_63;
                            }
                          }

                          v70 = v63[1];
                          __src = *v64;
                          if (v70 <= 7)
                          {
                            v71 = v58;
                            v72 = mutableBytes;
                            memset(&__src + v70, *(v63 + 9), 8 - v70);
                            mutableBytes = v72;
                            v58 = v71;
                          }

                          memcpy(mutableBytes, &__src, v58);
                        }
                      }

LABEL_63:
                      v69 = [MEMORY[0x277D036A0] engineeringValueWithTypeID:193 value:{v56, v75}];
                      [v79 addObject:v69];

                      goto LABEL_40;
                    }

LABEL_31:
                    v47 = [MEMORY[0x277D036A0] engineeringValueWithTypeID:v22 value:0];
                    [v79 addObject:v47];
                  }

LABEL_40:
                  v21 = v78;
                }
              }
            }
          }
        }

        v6 = (ptr + 64);
LABEL_42:
        ++v9;
      }

      while (v9 != v8);
    }

    v73 = [MEMORY[0x277D036A0] engineeringValueWithTypeID:46 value:v79];
  }

  else
  {
    v73 = 0;
  }

  return v73;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end