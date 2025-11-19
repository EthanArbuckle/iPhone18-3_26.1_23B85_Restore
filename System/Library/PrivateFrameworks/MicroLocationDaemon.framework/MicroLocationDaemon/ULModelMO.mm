@interface ULModelMO
+ (id)createFromDO:(const void *)a3 withServiceMO:(id)a4 loiMO:(id)a5 inManagedObjectContext:(id)a6;
- (optional<ULModelDO>)convertToDO;
@end

@implementation ULModelMO

+ (id)createFromDO:(const void *)a3 withServiceMO:(id)a4 loiMO:(id)a5 inManagedObjectContext:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = [[ULModelMO alloc] initWithContext:a6];
  [(ULModelMO *)v11 setService:v9];
  [(ULModelMO *)v11 setLoi:v10];
  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  v13 = [v12 UUIDString];
  [(ULModelMO *)v11 setModelUUID:v13];

  [(ULModelMO *)v11 setGenerationTimestamp:*(a3 + 2)];
  [(ULModelMO *)v11 setModelType:*(a3 + 6)];
  v14 = a3 + 32;
  v15 = *(a3 + 60);
  v16 = *(a3 + 6);
  if (v15 == 2)
  {
    if (v16 == 5)
    {
      (*(*v14 + 72))(v14);
      operator new[]();
    }

    v20 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "modelEntry.fModelType == CLMicroLocationProto::ModelType::VMK";
      _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Mismatch between milo model and modelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v21 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v21))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "modelEntry.fModelType == CLMicroLocationProto::ModelType::VMK";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Mismatch between milo model and modelType", "{msg%{public}.0s:Mismatch between milo model and modelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v19 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "modelEntry.fModelType == CLMicroLocationProto::ModelType::VMK";
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Mismatch between milo model and modelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }
  }

  else if (v15)
  {
    if (v16 == 4)
    {
      if (v15 == 1)
      {
        (*(*v14 + 72))(v14);
        operator new[]();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v22 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "modelEntry.fModelType == CLMicroLocationProto::ModelType::HOME_SLAM";
      _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Mismatch between homeSlam model and modelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v24 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v24))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "modelEntry.fModelType == CLMicroLocationProto::ModelType::HOME_SLAM";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Mismatch between homeSlam model and modelType", "{msg%{public}.0s:Mismatch between homeSlam model and modelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v19 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "modelEntry.fModelType == CLMicroLocationProto::ModelType::HOME_SLAM";
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Mismatch between homeSlam model and modelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }
  }

  else
  {
    if (v16 != 4)
    {
      (*(*v14 + 72))(v14);
      operator new[]();
    }

    v17 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "modelEntry.fModelType != CLMicroLocationProto::ModelType::HOME_SLAM";
      _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Mismatch between milo model and modelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v18 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v18))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "modelEntry.fModelType != CLMicroLocationProto::ModelType::HOME_SLAM";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Mismatch between milo model and modelType", "{msg%{public}.0s:Mismatch between milo model and modelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v19 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "modelEntry.fModelType != CLMicroLocationProto::ModelType::HOME_SLAM";
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Mismatch between milo model and modelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

- (optional<ULModelDO>)convertToDO
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = [(ULModelMO *)self modelUUID];
  v6 = v5;
  if (v5)
  {
    [v5 boostUUID];
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v68 = 0;
  }

  if (v68)
  {
    v7 = [(ULModelMO *)self loi];
    v8 = [v7 loiId];
    v9 = v8;
    if (v8)
    {
      [v8 boostUUID];
    }

    else
    {
      v63 = 0;
      v64 = 0;
      v65 = 0;
    }

    if ((v65 & 1) == 0)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULModelMO convertToDO];
      }

      v12 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "convertToDO: model's loiId has no value", buf, 2u);
      }

      v63 = 0;
      v64 = 0;
      if ((v65 & 1) == 0)
      {
        v65 = 1;
      }
    }

    [(ULModelMO *)self generationTimestamp];
    v14 = v13;
    LOBYTE(v48[0]) = 0;
    v50 = 0;
    v15 = [(ULModelMO *)self service];
    v16 = [v15 clientId];
    v17 = [v16 length] == 0;

    if (!v17)
    {
      v18 = [(ULModelMO *)self service];
      v19 = [v18 clientId];
      v20 = v19;
      if (v19)
      {
        [v19 stdString];
      }

      else
      {
        *buf = 0u;
        v52 = 0u;
      }

      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v48, buf);
      if (BYTE8(v52) == 1 && SBYTE7(v52) < 0)
      {
        operator delete(*buf);
      }
    }

    v21 = [(ULModelMO *)self service];
    v22 = [v21 serviceUUID];
    v23 = [v22 length] == 0;

    if (v23)
    {
      v28 = 0;
      v27 = 0;
    }

    else
    {
      v24 = [(ULModelMO *)self service];
      v25 = [v24 serviceUUID];
      v26 = v25;
      if (v25)
      {
        [v25 boostUUID];
        v27 = buf[0];
        v28 = v52;
      }

      else
      {
        v28 = 0;
        v27 = 0;
        memset(buf, 0, sizeof(buf));
        LOBYTE(v52) = 0;
      }

      v62[0] = *&buf[1];
      *(v62 + 7) = *&buf[8];
    }

    memset(v60, 0, sizeof(v60));
    v29 = CLMicroLocationProto::Model::Model(v60);
    v61 = 0;
    if ([(ULModelMO *)self modelType]== 4)
    {
      v30 = [(ULModelMO *)self model];
      v31 = v30;
      v32 = [v30 bytes];
      v33 = [(ULModelMO *)self model];
      [v33 length];
      LODWORD(v32) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(buf, v32);

      if (v32)
      {
        ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>::ULProtoMessageWrapper(&v57, buf);
        std::__variant_detail::__assignment<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>>::__assign_alt[abi:ne200100]<1ul,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>>(v60, v60, &v57);
        CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(&v57);
        CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(buf);
LABEL_42:
        if ((v68 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v42 = v66;
        v43 = v67;
        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v46, v48);
        v57 = v27;
        *v58 = v62[0];
        *&v58[7] = *(v62 + 7);
        v59 = v28;
        if ((v65 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        ULModelDO::ULModelDO(buf, v42, v43, v60, &v46, &v57, v63, v64, v14);
        std::__optional_destruct_base<ULModelDO,false>::__optional_destruct_base[abi:ne200100]<ULModelDO>(retstr, buf);
        if (v56 == 1 && v55 < 0)
        {
          operator delete(__p);
        }

        std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v53);
        if (v47 == 1 && SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }

LABEL_58:
        result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v60);
        if (v50 == 1 && v49 < 0)
        {
          operator delete(v48[0]);
        }

        goto LABEL_61;
      }

      CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(buf);
    }

    else if ([(ULModelMO *)self modelType]== 5)
    {
      CLMicroLocationProto::VMKModel::VMKModel(buf);
      v34 = [(ULModelMO *)self model];
      v35 = v34;
      v36 = [v34 bytes];
      v37 = [(ULModelMO *)self model];
      [v37 length];
      LODWORD(v36) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(buf, v36);

      if (v36)
      {
        ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>::ULProtoMessageWrapper(&v57, buf);
        std::__variant_detail::__assignment<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>>::__assign_alt[abi:ne200100]<2ul,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>(v60, v60, &v57);
        CLMicroLocationProto::VMKModel::~VMKModel(&v57);
        CLMicroLocationProto::VMKModel::~VMKModel(buf);
        goto LABEL_42;
      }

      CLMicroLocationProto::VMKModel::~VMKModel(buf);
    }

    else
    {
      v38 = [(ULModelMO *)self model];
      v39 = v38;
      v40 = [v38 bytes];
      v41 = [(ULModelMO *)self model];
      [v41 length];
      LODWORD(v40) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(buf, v40);

      if (v40)
      {
        ULProtoMessageWrapper<CLMicroLocationProto::Model>::ULProtoMessageWrapper(&v57, buf);
        std::__variant_detail::__assignment<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>>::__assign_alt[abi:ne200100]<0ul,ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::Model>>(v60, v60, &v57);
        CLMicroLocationProto::Model::~Model(&v57);
        CLMicroLocationProto::Model::~Model(buf);
        goto LABEL_42;
      }

      CLMicroLocationProto::Model::~Model(buf);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULModelMO convertToDO];
    }

    v44 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v44, OS_LOG_TYPE_ERROR, "convertToDO: Failed to deserialize model protobuf from byte stream", buf, 2u);
    }

    retstr->var0.var0 = 0;
    *(&retstr[1].var0.var4 + 96) = 0;
    goto LABEL_58;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULModelMO convertToDO];
  }

  v10 = logObject_MicroLocation_Default;
  result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "convertToDO: model's modelUUID has no value", buf, 2u);
  }

  retstr->var0.var0 = 0;
  *(&retstr[1].var0.var4 + 96) = 0;
LABEL_61:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

@end