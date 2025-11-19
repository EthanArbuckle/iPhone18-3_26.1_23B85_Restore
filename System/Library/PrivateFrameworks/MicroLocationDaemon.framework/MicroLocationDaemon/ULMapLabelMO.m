@interface ULMapLabelMO
+ (id)createFromDO:(const void *)a3 withLabelMO:(id)a4 modelMO:(id)a5 inManagedObjectContext:(id)a6;
- (optional<ULMapLabelDO>)convertToDO;
@end

@implementation ULMapLabelMO

+ (id)createFromDO:(const void *)a3 withLabelMO:(id)a4 modelMO:(id)a5 inManagedObjectContext:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [[ULMapLabelMO alloc] initWithContext:v11];
  [(ULMapLabelMO *)v12 setTimestamp:*(a3 + 10)];
  if (*(a3 + 12) == 1)
  {
    LODWORD(v13) = *a3;
    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    [(ULMapLabelMO *)v12 setX:v14];

    if (*(a3 + 12) != 1 || (LODWORD(v15) = *(a3 + 1), [MEMORY[0x277CCABB0] numberWithFloat:v15], v16 = objc_claimAutoreleasedReturnValue(), -[ULMapLabelMO setY:](v12, "setY:", v16), v16, (*(a3 + 12) & 1) == 0))
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    LODWORD(v17) = *(a3 + 2);
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
    [(ULMapLabelMO *)v12 setZ:v18];
  }

  else
  {
    [(ULMapLabelMO *)v12 setX:0];
    [(ULMapLabelMO *)v12 setY:0];
    [(ULMapLabelMO *)v12 setZ:0];
  }

  if (*(a3 + 40) == 1)
  {
    v19 = MEMORY[0x277CBEA90];
    v20 = [MEMORY[0x277CBEA60] fromFloatVector:a3 + 16];
    v21 = [v19 fromNSArray:v20];
    [(ULMapLabelMO *)v12 setProbabilityVector:v21];
  }

  else
  {
    [(ULMapLabelMO *)v12 setProbabilityVector:0];
  }

  if (*(a3 + 72) == 1)
  {
    v22 = MEMORY[0x277CBEA90];
    v23 = ULDBUtils::NSStringArrayFromBoostUUIDs(a3 + 6);
    v24 = [v22 fromNSArray:v23];
    [(ULMapLabelMO *)v12 setImageIdentifiersVector:v24];
  }

  else
  {
    [(ULMapLabelMO *)v12 setImageIdentifiersVector:0];
  }

  [(ULMapLabelMO *)v12 setLabel:v9];
  [(ULMapLabelMO *)v12 setModel:v10];

  return v12;
}

- (optional<ULMapLabelDO>)convertToDO
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = [(ULMapLabelMO *)self model];
  v5 = [v4 modelUUID];
  v6 = v5;
  if (v5)
  {
    [v5 boostUUID];
  }

  else
  {
    v60[0] = 0;
    v60[1] = 0;
    v61 = 0;
  }

  if (v61)
  {
    v7 = [(ULMapLabelMO *)self label];
    v8 = v7;
    if (v7)
    {
      [v7 convertToDO];
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      memset(v54, 0, sizeof(v54));
    }

    if ((BYTE8(v59) & 1) == 0)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULMapLabelMO convertToDO];
      }

      v32 = logObject_MicroLocation_Default;
      result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
      if (result)
      {
        buf.n128_u16[0] = 0;
        _os_log_impl(&dword_258FE9000, v32, OS_LOG_TYPE_ERROR, "convertToDO: label has no value", &buf, 2u);
      }

      retstr->var0.var0 = 0;
      retstr[2].var0.var1.var2.var1 = 0;
      goto LABEL_53;
    }

    LOBYTE(v41[0]) = 0;
    v42 = 0;
    v11 = [(ULMapLabelMO *)self x];
    if (v11)
    {
      v12 = [(ULMapLabelMO *)self y];
      if (!v12)
      {
LABEL_18:

        goto LABEL_19;
      }

      v13 = [(ULMapLabelMO *)self z];
      v14 = v13 == 0;

      if (!v14)
      {
        v11 = [(ULMapLabelMO *)self x];
        [v11 floatValue];
        v16 = v15;
        v17 = [(ULMapLabelMO *)self y];
        [v17 floatValue];
        v19 = v18;
        v20 = [(ULMapLabelMO *)self z];
        [v20 floatValue];
        v41[0] = v16;
        v41[1] = v19;
        v41[2] = v21;
        v42 = !v42;

        goto LABEL_18;
      }
    }

LABEL_19:
    LOBYTE(v39[0]) = 0;
    v40 = 0;
    v22 = [(ULMapLabelMO *)self probabilityVector];
    v23 = v22 == 0;

    if (!v23)
    {
      v24 = MEMORY[0x277CBEA60];
      v25 = [(ULMapLabelMO *)self probabilityVector];
      v26 = [v25 toNSArrayWithElementType:objc_opt_class()];
      [v24 toFloatVector:v26];
      std::optional<std::vector<float>>::operator=[abi:ne200100]<std::vector<float>,void>(v39, &buf);
      if (buf.n128_u64[0])
      {
        buf.n128_u64[1] = buf.n128_u64[0];
        operator delete(buf.n128_u64[0]);
      }
    }

    LOBYTE(v37[0]) = 0;
    v38 = 0;
    v27 = [(ULMapLabelMO *)self imageIdentifiersVector];
    v28 = v27 == 0;

    if (!v28)
    {
      v29 = [(ULMapLabelMO *)self imageIdentifiersVector];
      v30 = [v29 toNSArrayWithElementType:objc_opt_class()];
      ULDBUtils::boostUUIDsFromNSStringArray(v30, &buf);
      std::optional<std::vector<float>>::operator=[abi:ne200100]<std::vector<float>,void>(v37, &buf);
      if (buf.n128_u64[0])
      {
        buf.n128_u64[1] = buf.n128_u64[0];
        operator delete(buf.n128_u64[0]);
      }
    }

    std::__optional_copy_base<std::vector<boost::uuids::uuid>,false>::__optional_copy_base[abi:ne200100](__p, v37);
    [(ULMapLabelMO *)self timestamp];
    v34 = v31;
    if (BYTE8(v59) != 1 || (v61 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    ULMapLabelDO::ULMapLabelDO(&buf, v41, v39, __p, &v34, v54, v60);
    if (v36 == 1 && __p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    result = ULMapLabelDO::ULMapLabelDO(retstr, &buf);
    retstr[2].var0.var1.var2.var1 = 1;
    if (v53 == 1)
    {
      v52 = -1;
    }

    if (v51 < 0)
    {
      operator delete(v50);
    }

    if (v49 == 1)
    {
      result = v47;
      if (v47)
      {
        v48 = v47;
        operator delete(v47);
      }
    }

    if (v46 == 1)
    {
      result = v44;
      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }
    }

    if (v38 == 1)
    {
      result = v37[0];
      if (v37[0])
      {
        v37[1] = v37[0];
        operator delete(v37[0]);
      }
    }

    if (v40 == 1)
    {
      result = v39[0];
      if (v39[0])
      {
        v39[1] = v39[0];
        operator delete(v39[0]);
      }
    }

LABEL_53:
    if (BYTE8(v59) == 1)
    {

      if (BYTE8(v58) == 1)
      {
        LODWORD(v58) = -1;
      }

      if (SHIBYTE(v56) < 0)
      {
        operator delete(*(&v55 + 1));
      }
    }

    goto LABEL_58;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULMapLabelMO convertToDO];
  }

  v9 = logObject_MicroLocation_Default;
  result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
  if (result)
  {
    buf.n128_u16[0] = 0;
    _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "convertToDO: model's modelUUID has no value", &buf, 2u);
  }

  retstr->var0.var0 = 0;
  retstr[2].var0.var1.var2.var1 = 0;
LABEL_58:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

@end