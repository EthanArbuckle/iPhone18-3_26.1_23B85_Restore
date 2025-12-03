@interface IDEDataProvider_procinfo
+ (id)sharedDataProvider;
- (BOOL)captureAttributes:(id)attributes toDictionary:(id)dictionary forPID:(id)d;
- (IDEDataProvider_procinfo)init;
- (id).cxx_construct;
- (id)captureAttributes:(id)attributes forPIDs:(id)ds;
- (id)supportedAttributes;
@end

@implementation IDEDataProvider_procinfo

+ (id)sharedDataProvider
{
  if (qword_15280 != -1)
  {
    sub_8148();
  }

  v3 = qword_15278;

  return v3;
}

- (IDEDataProvider_procinfo)init
{
  v6.receiver = self;
  v6.super_class = IDEDataProvider_procinfo;
  v2 = [(IDEDataProvider_procinfo *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("Lock to protect multithread access during capturing", 0);
    capture_lock = v2->_capture_lock;
    v2->_capture_lock = v3;
  }

  return v2;
}

- (id)supportedAttributes
{
  if (qword_15290 != -1)
  {
    sub_815C();
  }

  v3 = qword_15288;

  return v3;
}

- (BOOL)captureAttributes:(id)attributes toDictionary:(id)dictionary forPID:(id)d
{
  attributesCopy = attributes;
  dictionaryCopy = dictionary;
  dCopy = d;
  intValue = [dCopy intValue];
  p_processInfoByPID = &self->_processInfoByPID;
  size = self->_processInfoByPID.__table_.__bucket_list_.__deleter_.__size_;
  if (!size)
  {
    goto LABEL_18;
  }

  v14 = vcnt_s8(size);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = intValue;
    if (size <= intValue)
    {
      v15 = intValue % size;
    }
  }

  else
  {
    v15 = (size - 1) & intValue;
  }

  v16 = p_processInfoByPID->__table_.__bucket_list_.__ptr_[v15];
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v18 = v17[1];
    if (v18 == intValue)
    {
      break;
    }

    if (v14.u32[0] > 1uLL)
    {
      if (v18 >= size)
      {
        v18 %= size;
      }
    }

    else
    {
      v18 &= size - 1;
    }

    if (v18 != v15)
    {
      goto LABEL_18;
    }

LABEL_17:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_18;
    }
  }

  if (*(v17 + 4) != intValue)
  {
    goto LABEL_17;
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v93 = 0u;
  memset(buffer, 0, sizeof(buffer));
  v19 = proc_pid_rusage([dCopy intValue], 2, buffer);
  if (v19 != 3)
  {
    if (v19 || proc_pidinfo([dCopy intValue], 20, 1uLL, v81, 40) <= 0 || coalition_info_resource_usage())
    {
      intValue2 = [dCopy intValue];
      v21 = __error();
      v22 = [NSString stringWithFormat:@"couldn't get info for process %i: %s", intValue2, strerror(*v21)];
      [dictionaryCopy setObject:v22 forKeyedSubscript:@"error"];
    }

    else
    {
      v35 = v87 + v86 + v89 - v88;
      v36 = v17[3];
      if (!v36)
      {
        v17[3] = v35;
        v36 = v35;
      }

      *(v17 + 2) = *(v17 + 3);
      v17[6] = v97;
      v17[7] = v35 - v36;
      v37 = [NSNumber numberWithDouble:(mach_absolute_time() - v93) / 1000000000.0];
      [dictionaryCopy setObject:v37 forKeyedSubscript:@"process.age"];

      v38 = [NSNumber numberWithUnsignedLongLong:v17[6]];
      [dictionaryCopy setObject:v38 forKeyedSubscript:@"disk.rd.bytes"];

      v39 = [NSNumber numberWithUnsignedLongLong:v17[6] - v17[4]];
      [dictionaryCopy setObject:v39 forKeyedSubscript:@"disk.rd.bytes.delta"];

      v40 = [NSNumber numberWithUnsignedLongLong:v17[7]];
      [dictionaryCopy setObject:v40 forKeyedSubscript:@"disk.wr.bytes"];

      v41 = [NSNumber numberWithUnsignedLongLong:v17[7] - v17[5]];
      [dictionaryCopy setObject:v41 forKeyedSubscript:@"disk.wr.bytes.delta"];

      v42 = [NSNumber numberWithUnsignedLongLong:v17[7] + v17[6]];
      [dictionaryCopy setObject:v42 forKeyedSubscript:@"disk.bytes"];

      v43 = [NSNumber numberWithUnsignedLongLong:v17[7] + v17[6] - (v17[4] + v17[5])];
      [dictionaryCopy setObject:v43 forKeyedSubscript:@"disk.bytes.delta"];

      if ([attributesCopy containsObject:@"disk.openfiles[]"])
      {
        v44 = proc_pidinfo([dCopy intValue], 1, 0, 0, 0);
        v45 = v44;
        if ((v44 & 0x80000000) != 0)
        {
          intValue3 = [dCopy intValue];
          v69 = __error();
          v70 = [NSString stringWithFormat:@"couldn't determine number of file descriptors of process %i: %s", intValue3, strerror(*v69)];
          [dictionaryCopy setObject:v70 forKeyedSubscript:@"error"];
        }

        else
        {
          v79 = malloc_type_malloc(v44, 0x100004000313F17uLL);
          v46 = proc_pidinfo([dCopy intValue], 1, 0, v79, v45);
          if (v46 < 0)
          {
            intValue4 = [dCopy intValue];
            v75 = __error();
            v66 = [NSString stringWithFormat:@"couldn't get list of file descriptors of process %i: %s", intValue4, strerror(*v75)];
            [dictionaryCopy setObject:v66 forKeyedSubscript:@"error"];
          }

          else
          {
            v80 = objc_opt_new();
            if (v46 >= 8)
            {
              v47 = v46 >> 3;
              v48 = v79 + 1;
              do
              {
                if (*v48 == 1)
                {
                  v49 = *(v48 - 1);
                  v50 = objc_opt_new();
                  v51 = [NSNumber numberWithInt:v49];
                  [v50 setObject:v51 forKeyedSubscript:@"fd"];

                  if (proc_pidfdinfo([dCopy intValue], v49, 2, v82, 1200) < 0)
                  {
                    intValue5 = [dCopy intValue];
                    v65 = __error();
                    v55 = [NSString stringWithFormat:@"couldn't get info for file descriptor %i of process %i: %s", v49, intValue5, strerror(*v65)];
                    [v50 setObject:v55 forKeyedSubscript:@"error"];
                  }

                  else
                  {
                    v52 = *(&off_106C8 + (v82[0] & 3));
                    v53 = v84 & 0xF000;
                    if (v53 - 4096 < 0xA000 && (v54 = (v53 - 4096) >> 12, ((0x2ABu >> v54) & 1) != 0))
                    {
                      v55 = *(&off_106E8 + v54);
                    }

                    else
                    {
                      v55 = [NSString stringWithFormat:@"%04o", v53 >> 12];
                    }

                    [v50 setObject:v55 forKeyedSubscript:@"type"];
                    v56 = [NSNumber numberWithUnsignedInt:v82[0]];
                    [v50 setObject:v56 forKeyedSubscript:@"openflags"];

                    v57 = [NSNumber numberWithUnsignedInt:v82[1]];
                    [v50 setObject:v57 forKeyedSubscript:@"status"];

                    v58 = [NSNumber numberWithLongLong:v88];
                    [v50 setObject:v58 forKeyedSubscript:@"filesize"];

                    v59 = [NSString stringWithFormat:@"%i%@", v49, v52];
                    [v50 setObject:v59 forKeyedSubscript:@"fddesc"];

                    v60 = [NSNumber numberWithUnsignedInt:v90];
                    [v50 setObject:v60 forKeyedSubscript:@"device"];

                    v61 = [NSNumber numberWithLongLong:v83];
                    [v50 setObject:v61 forKeyedSubscript:@"offset"];

                    v62 = [NSNumber numberWithUnsignedLongLong:v85];
                    [v50 setObject:v62 forKeyedSubscript:@"inode"];

                    v63 = [NSString stringWithUTF8String:&v91];
                    [v50 setObject:v63 forKeyedSubscript:@"path"];
                  }

                  [v80 addObject:v50];
                }

                v48 += 2;
                --v47;
              }

              while (v47);
            }

            v66 = v80;
            [dictionaryCopy setObject:v80 forKeyedSubscript:@"disk.openfiles[]"];
          }

          free(v79);
        }
      }
    }

    v23 = 1;
    goto LABEL_93;
  }

  intValue6 = [dCopy intValue];
  v25 = p_processInfoByPID->__table_.__bucket_list_.__deleter_.__size_;
  if (!v25)
  {
    goto LABEL_92;
  }

  v26 = intValue6;
  v27 = intValue6;
  v28 = vcnt_s8(v25);
  v28.i16[0] = vaddlv_u8(v28);
  if (v28.u32[0] > 1uLL)
  {
    v29 = intValue6;
    if (v25 <= intValue6)
    {
      v29 = intValue6 % v25;
    }
  }

  else
  {
    v29 = (v25 - 1) & intValue6;
  }

  ptr = p_processInfoByPID->__table_.__bucket_list_.__ptr_;
  v31 = p_processInfoByPID->__table_.__bucket_list_.__ptr_[v29];
  if (!v31)
  {
    goto LABEL_92;
  }

  v32 = *v31;
  if (!*v31)
  {
    goto LABEL_92;
  }

  v33 = v25 - 1;
  while (2)
  {
    next = v32[1].__next_;
    if (next != v27)
    {
      if (v28.u32[0] > 1uLL)
      {
        if (next >= v25)
        {
          next %= v25;
        }
      }

      else
      {
        next &= v33;
      }

      if (next != v29)
      {
        goto LABEL_92;
      }

      goto LABEL_41;
    }

    if (LODWORD(v32[2].__next_) != v26)
    {
LABEL_41:
      v32 = v32->__next_;
      if (!v32)
      {
        goto LABEL_92;
      }

      continue;
    }

    break;
  }

  v67 = v32->__next_;
  if (v28.u32[0] > 1uLL)
  {
    if (v25 <= v27)
    {
      v27 %= v25;
    }
  }

  else
  {
    v27 &= v33;
  }

  v71 = ptr[v27];
  do
  {
    v72 = v71;
    v71 = v71->__next_;
  }

  while (v71 != v32);
  if (v72 == &p_processInfoByPID->__table_.__first_node_)
  {
    goto LABEL_81;
  }

  v73 = v72[1].__next_;
  if (v28.u32[0] > 1uLL)
  {
    if (v73 >= v25)
    {
      v73 %= v25;
    }
  }

  else
  {
    v73 &= v33;
  }

  if (v73 == v27)
  {
LABEL_83:
    if (v67)
    {
      v76 = v67[1];
      goto LABEL_85;
    }
  }

  else
  {
LABEL_81:
    if (!v67)
    {
      goto LABEL_82;
    }

    v76 = v67[1];
    if (v28.u32[0] > 1uLL)
    {
      v77 = v67[1];
      if (v76 >= v25)
      {
        v77 = v76 % v25;
      }
    }

    else
    {
      v77 = v76 & v33;
    }

    if (v77 != v27)
    {
LABEL_82:
      ptr[v27] = 0;
      v67 = v32->__next_;
      goto LABEL_83;
    }

LABEL_85:
    if (v28.u32[0] > 1uLL)
    {
      if (v76 >= v25)
      {
        v76 %= v25;
      }
    }

    else
    {
      v76 &= v33;
    }

    if (v76 != v27)
    {
      p_processInfoByPID->__table_.__bucket_list_.__ptr_[v76] = v72;
      v67 = v32->__next_;
    }
  }

  v72->__next_ = v67;
  v32->__next_ = 0;
  --p_processInfoByPID->__table_.__size_;
  operator delete(v32);
LABEL_92:
  v23 = 0;
LABEL_93:

  return v23;
}

- (id)captureAttributes:(id)attributes forPIDs:(id)ds
{
  attributesCopy = attributes;
  dsCopy = ds;
  v8 = objc_opt_new();
  capture_lock = self->_capture_lock;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_7DA4;
  v16[3] = &unk_104C0;
  v17 = dsCopy;
  selfCopy = self;
  v19 = attributesCopy;
  v10 = v8;
  v20 = v10;
  v11 = attributesCopy;
  v12 = dsCopy;
  dispatch_sync(capture_lock, v16);
  v13 = v20;
  v14 = v10;

  return v10;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 14) = 1065353216;
  return self;
}

@end