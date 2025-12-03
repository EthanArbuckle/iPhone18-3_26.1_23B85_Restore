@interface CKXAtomORCSchemaFormatVersionORCv2
- (CKXAtomORCSchemaFormatVersionORCv2)initWithBinding:(id)binding;
- (id)generateSchema;
- (unint64_t)listColumnIndexForReference:(unint64_t)reference;
- (unint64_t)structReferenceIndexForReference:(unint64_t)reference;
- (unint64_t)topLevelIndexForStruct:(unint64_t)struct;
- (unint64_t)valueColumnIndexForField:(unint64_t)field;
- (void)configureColumnsWithRootColumn:(void *)column;
@end

@implementation CKXAtomORCSchemaFormatVersionORCv2

- (CKXAtomORCSchemaFormatVersionORCv2)initWithBinding:(id)binding
{
  bindingCopy = binding;
  v9.receiver = self;
  v9.super_class = CKXAtomORCSchemaFormatVersionORCv2;
  v6 = [(CKXAtomORCSchemaFormatVersionORCv2 *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_binding, binding);
  }

  return v7;
}

- (id)generateSchema
{
  v2 = objc_opt_new();
  objc_msgSend_appendString_(v2, v3, @"struct<", v4, v5, v6, v7);
  objc_msgSend_appendString_(v2, v8, @"__site_identifier:struct<", v9, v10, v11, v12);
  objc_msgSend_appendString_(v2, v13, @"identifier:binary,", v14, v15, v16, v17);
  objc_msgSend_appendString_(v2, v18, @"modifier:binary,", v19, v20, v21, v22);
  objc_msgSend_appendString_(v2, v23, @">,", v24, v25, v26, v27);
  objc_msgSend_appendString_(v2, v28, @"__timestamp:struct<", v29, v30, v31, v32);
  objc_msgSend_appendString_(v2, v33, @"__site_identifier_row:bigint,", v34, v35, v36, v37);
  objc_msgSend_appendString_(v2, v38, @"clock:bigint,", v39, v40, v41, v42);
  objc_msgSend_appendString_(v2, v43, @">,", v44, v45, v46, v47);
  objc_msgSend_appendString_(v2, v48, @"__reference:struct<", v49, v50, v51, v52);
  objc_msgSend_appendString_(v2, v53, @"__timestamp_row:bigint,", v54, v55, v56, v57);
  objc_msgSend_appendString_(v2, v58, @"__location_row:bigint,", v59, v60, v61, v62);
  objc_msgSend_appendString_(v2, v63, @">,", v64, v65, v66, v67);
  objc_msgSend_appendString_(v2, v68, @"__atom:struct<", v69, v70, v71, v72);
  objc_msgSend_appendString_(v2, v73, @"version:bigint,", v74, v75, v76, v77);
  objc_msgSend_appendString_(v2, v78, @"__timestamp_row:bigint,", v79, v80, v81, v82);
  objc_msgSend_appendString_(v2, v83, @"references:array<__reference_row:bigint>,", v84, v85, v86, v87);
  objc_msgSend_appendString_(v2, v88, @"atom_type:bigint,", v89, v90, v91, v92);
  objc_msgSend_appendString_(v2, v93, @"value:binary,", v94, v95, v96, v97);
  objc_msgSend_appendString_(v2, v98, @">,", v99, v100, v101, v102);
  objc_msgSend_appendString_(v2, v103, @"__location:struct<", v104, v105, v106, v107);
  objc_msgSend_appendString_(v2, v108, @"identifier:binary,", v109, v110, v111, v112);
  objc_msgSend_appendString_(v2, v113, @">,", v114, v115, v116, v117);
  objc_msgSend_appendString_(v2, v118, @">", v119, v120, v121, v122);

  return v2;
}

- (void)configureColumnsWithRootColumn:(void *)column
{
  v9 = *(*(column + 10) + 8 * objc_msgSend_topLevelIndexForStruct_(self, a2, self->_binding->tokens.location, v3, v4, v5, v6));
  if (v9)
  {
    v12 = **v9;
    v13 = __dynamic_cast(v9, &unk_2856A2580, &unk_2856A25F0, 0);
    objc_msgSend_enumerateColumn_includingRoot_shallow_withBlock_(CKXORCUtilities, v14, v13, 1, 0, &unk_2856A2C58, v15);
  }

  else
  {
    objc_msgSend_enumerateColumn_includingRoot_shallow_withBlock_(CKXORCUtilities, v10, 0, 1, 0, &unk_2856A2C58, v11);
  }

  v21 = *(*(column + 10) + 8 * objc_msgSend_topLevelIndexForStruct_(self, v16, self->_binding->tokens.siteIdentifier, v17, v18, v19, v20));
  if (v21)
  {
    v24 = **v21;
    v25 = __dynamic_cast(v21, &unk_2856A2580, &unk_2856A25F0, 0);
    objc_msgSend_enumerateColumn_includingRoot_shallow_withBlock_(CKXORCUtilities, v26, v25, 1, 0, &unk_2856A2C78, v27);
  }

  else
  {
    objc_msgSend_enumerateColumn_includingRoot_shallow_withBlock_(CKXORCUtilities, v22, 0, 1, 0, &unk_2856A2C78, v23);
  }

  v33 = *(*(column + 10) + 8 * objc_msgSend_topLevelIndexForStruct_(self, v28, self->_binding->tokens.timestamp, v29, v30, v31, v32));
  if (v33)
  {
    v36 = **v33;
    v37 = __dynamic_cast(v33, &unk_2856A2580, &unk_2856A25F0, 0);
    objc_msgSend_enumerateColumn_includingRoot_shallow_withBlock_(CKXORCUtilities, v38, v37, 1, 0, &unk_2856A2C98, v39);
  }

  else
  {
    objc_msgSend_enumerateColumn_includingRoot_shallow_withBlock_(CKXORCUtilities, v34, 0, 1, 0, &unk_2856A2C98, v35);
  }

  v45 = *(*(column + 10) + 8 * objc_msgSend_topLevelIndexForStruct_(self, v40, self->_binding->tokens.reference, v41, v42, v43, v44));
  if (v45)
  {
    v48 = **v45;
    v49 = __dynamic_cast(v45, &unk_2856A2580, &unk_2856A25F0, 0);
    objc_msgSend_enumerateColumn_includingRoot_shallow_withBlock_(CKXORCUtilities, v50, v49, 1, 0, &unk_2856A2CB8, v51);
  }

  else
  {
    objc_msgSend_enumerateColumn_includingRoot_shallow_withBlock_(CKXORCUtilities, v46, 0, 1, 0, &unk_2856A2CB8, v47);
  }

  v57 = *(*(column + 10) + 8 * objc_msgSend_topLevelIndexForStruct_(self, v52, self->_binding->tokens.atom, v53, v54, v55, v56));
  if (v57)
  {
    v60 = **v57;
    v61 = __dynamic_cast(v57, &unk_2856A2580, &unk_2856A25F0, 0);
  }

  else
  {
    v61 = 0;
  }

  objc_msgSend_enumerateColumn_includingRoot_shallow_withBlock_(CKXORCUtilities, v58, v61, 1, 0, &unk_2856A2CD8, v59);
}

- (unint64_t)topLevelIndexForStruct:(unint64_t)struct
{
  binding = self->_binding;
  if (binding->tokens.siteIdentifier == struct)
  {
    return 0;
  }

  if (binding->tokens.timestamp == struct)
  {
    return 1;
  }

  if (binding->tokens.reference == struct)
  {
    return 2;
  }

  if (binding->tokens.atom == struct)
  {
    return 3;
  }

  if (binding->tokens.location == struct)
  {
    return 4;
  }

  v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, struct, v3, v4, v5, v6);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKXAtomORCSchema.mm", 376, @"Invalid struct %lu", struct);

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)structReferenceIndexForReference:(unint64_t)reference
{
  binding = self->_binding;
  if (binding->tokens.timestamp_siteIdentifier == reference)
  {
    return 0;
  }

  if (binding->tokens.atom_timestamp == reference)
  {
    return 1;
  }

  if (binding->tokens.reference_timestamp == reference)
  {
    return 0;
  }

  if (binding->tokens.reference_location == reference)
  {
    return 1;
  }

  v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, reference, v3, v4, v5, v6);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKXAtomORCSchema.mm", 398, @"Invalid field %lu", reference);

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)listColumnIndexForReference:(unint64_t)reference
{
  if (self->_binding->tokens.atom_references == reference)
  {
    return 2;
  }

  v11 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, reference, v3, v4, v5, v6);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CKXAtomORCSchema.mm", 412, @"Invalid field %lu", reference);

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)valueColumnIndexForField:(unint64_t)field
{
  binding = self->_binding;
  if (binding->tokens.siteIdentifier_identifier == field)
  {
    return 0;
  }

  if (binding->tokens.siteIdentifier_modifier == field || binding->tokens.timestamp_clock == field)
  {
    return 1;
  }

  if (binding->tokens.atom_version == field)
  {
    return 0;
  }

  if (binding->tokens.atom_atom_type == field)
  {
    return 3;
  }

  if (binding->tokens.atom_value == field)
  {
    return 4;
  }

  if (binding->tokens.location_identifier == field)
  {
    return 0;
  }

  v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, field, v3, v4, v5, v6);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKXAtomORCSchema.mm", 441, @"Invalid field %lu", field);

  return 0x7FFFFFFFFFFFFFFFLL;
}

@end