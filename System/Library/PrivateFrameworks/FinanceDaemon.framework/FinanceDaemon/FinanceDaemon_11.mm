BOOL sub_226BC4B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v4);
  v53 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v47[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v47[-v19];
  v21 = *a1;
  v22 = *a2;
  if (*a1)
  {
    if (!v22)
    {
      return 0;
    }

    v52 = v4;
    sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
    v23 = v22;
    v24 = v21;
    v25 = sub_226D6EC3C();

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v52 = v4;
    if (v22)
    {
      return 0;
    }
  }

  v26 = *(a1 + 8);
  v27 = *(a2 + 8);
  if (v26)
  {
    if (!v27)
    {
      return 0;
    }

    sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
    v28 = v27;
    v29 = v26;
    v30 = sub_226D6EC3C();

    if ((v30 & 1) == 0)
    {
      return 0;
    }

LABEL_11:
    if (*(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }

    v31 = type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata(0);
    if ((_s10FinanceKit22ManagedCloudOrderEventC0A6DaemonE14TrackingStatusO2eeoiySbAF_AFtFZ_0(a1 + v31[7], a2 + v31[7]) & 1) == 0 || *(a1 + v31[8]) != *(a2 + v31[8]))
    {
      return 0;
    }

    v50 = v31;
    v32 = v31[9];
    v33 = *(v14 + 48);
    sub_226AC40E8(a1 + v32, v20, &qword_27D7A8BE0, &unk_226D718F0);
    v51 = v33;
    sub_226AC40E8(a2 + v32, &v33[v20], &qword_27D7A8BE0, &unk_226D718F0);
    v34 = *(v54 + 48);
    v35 = v52;
    if (v34(v20, 1, v52) == 1)
    {
      if (v34(&v51[v20], 1, v35) == 1)
      {
        v49 = v34;
        v36 = v35;
        sub_226AC47B0(v20, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_22:
        if (*(a1 + v50[10]) != *(a2 + v50[10]))
        {
          return 0;
        }

        v40 = v50[11];
        v41 = *(v14 + 48);
        sub_226AC40E8(a1 + v40, v18, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226AC40E8(a2 + v40, &v18[v41], &qword_27D7A8BE0, &unk_226D718F0);
        v42 = v49;
        if (v49(v18, 1, v36) == 1)
        {
          if (v42(&v18[v41], 1, v36) == 1)
          {
            sub_226AC47B0(v18, &qword_27D7A8BE0, &unk_226D718F0);
            return 1;
          }
        }

        else
        {
          sub_226AC40E8(v18, v11, &qword_27D7A8BE0, &unk_226D718F0);
          if (v42(&v18[v41], 1, v36) != 1)
          {
            v44 = v53;
            v43 = v54;
            (*(v54 + 32))(v53, &v18[v41], v36);
            sub_226BC7A6C(&qword_27D7A6C38, 255, MEMORY[0x277CC9578]);
            v45 = sub_226D6E35C();
            v46 = *(v43 + 8);
            v46(v44, v36);
            v46(v11, v36);
            sub_226AC47B0(v18, &qword_27D7A8BE0, &unk_226D718F0);
            return (v45 & 1) != 0;
          }

          (*(v54 + 8))(v11, v36);
        }

        v37 = v18;
        goto LABEL_20;
      }
    }

    else
    {
      sub_226AC40E8(v20, v13, &qword_27D7A8BE0, &unk_226D718F0);
      if (v34(&v51[v20], 1, v35) != 1)
      {
        v49 = v34;
        (*(v54 + 32))(v53, &v51[v20], v35);
        sub_226BC7A6C(&qword_27D7A6C38, 255, MEMORY[0x277CC9578]);
        v48 = sub_226D6E35C();
        v51 = *(v54 + 8);
        (v51)(v53, v35);
        v38 = v13;
        v36 = v35;
        (v51)(v38, v35);
        sub_226AC47B0(v20, &qword_27D7A8BE0, &unk_226D718F0);
        if ((v48 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_22;
      }

      (*(v54 + 8))(v13, v35);
    }

    v37 = v20;
LABEL_20:
    sub_226AC47B0(v37, &qword_27D7A6C30, &unk_226D74330);
    return 0;
  }

  if (!v27)
  {
    goto LABEL_11;
  }

  return 0;
}

BOOL sub_226BC520C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v40[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v21 = &v40[-v20];
  if (*a1 != *a2)
  {
    return 0;
  }

  v42 = v13;
  v43 = v19;
  v45 = v8;
  v22 = type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata(0);
  v46 = v5;
  v44 = v22;
  v23 = *(v22 + 20);
  v24 = *(v16 + 48);
  sub_226AC40E8(&a1[v23], v21, &qword_27D7A8BE0, &unk_226D718F0);
  v25 = &a2[v23];
  v26 = v46;
  sub_226AC40E8(v25, &v21[v24], &qword_27D7A8BE0, &unk_226D718F0);
  v27 = *(v26 + 48);
  if (v27(v21, 1, v4) == 1)
  {
    if (v27(&v21[v24], 1, v4) == 1)
    {
      sub_226AC47B0(v21, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_10:
      if (a1[*(v44 + 24)] != a2[*(v44 + 24)])
      {
        return 0;
      }

      v31 = *(v44 + 28);
      v32 = *(v16 + 48);
      v33 = &a1[v31];
      v34 = v43;
      sub_226AC40E8(v33, v43, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226AC40E8(&a2[v31], v34 + v32, &qword_27D7A8BE0, &unk_226D718F0);
      if (v27(v34, 1, v4) == 1)
      {
        if (v27(v34 + v32, 1, v4) == 1)
        {
          sub_226AC47B0(v34, &qword_27D7A8BE0, &unk_226D718F0);
          return 1;
        }
      }

      else
      {
        v35 = v42;
        sub_226AC40E8(v34, v42, &qword_27D7A8BE0, &unk_226D718F0);
        if (v27(v34 + v32, 1, v4) != 1)
        {
          v37 = v45;
          v36 = v46;
          (*(v46 + 32))(v45, v34 + v32, v4);
          sub_226BC7A6C(&qword_27D7A6C38, 255, MEMORY[0x277CC9578]);
          v38 = sub_226D6E35C();
          v39 = *(v36 + 8);
          v39(v37, v4);
          v39(v35, v4);
          sub_226AC47B0(v34, &qword_27D7A8BE0, &unk_226D718F0);
          return (v38 & 1) != 0;
        }

        (*(v46 + 8))(v35, v4);
      }

      v28 = v34;
      goto LABEL_8;
    }
  }

  else
  {
    sub_226AC40E8(v21, v15, &qword_27D7A8BE0, &unk_226D718F0);
    if (v27(&v21[v24], 1, v4) != 1)
    {
      (*(v26 + 32))(v45, &v21[v24], v4);
      sub_226BC7A6C(&qword_27D7A6C38, 255, MEMORY[0x277CC9578]);
      v41 = sub_226D6E35C();
      v29 = *(v26 + 8);
      v29(v45, v4);
      v29(v15, v4);
      sub_226AC47B0(v21, &qword_27D7A8BE0, &unk_226D718F0);
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v26 + 8))(v15, v4);
  }

  v28 = v21;
LABEL_8:
  sub_226AC47B0(v28, &qword_27D7A6C30, &unk_226D74330);
  return 0;
}

BOOL sub_226BC57AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A10, &qword_226D75D08);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  sub_226BC4428(a1, &v31 - v22, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
  sub_226BC4428(a2, &v23[v24], type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_226BC4428(v23, v16, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_226BC5B18(&v23[v24], v7, type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata);
      v25 = sub_226BC4B5C(v16, v7);
      sub_226BC4490(v7, type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata);
      v26 = v16;
      v27 = type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata;
LABEL_9:
      sub_226BC4490(v26, v27);
      sub_226BC4490(v23, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
      return v25;
    }

    v28 = type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata;
    v29 = v16;
  }

  else
  {
    sub_226BC4428(v23, v18, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_226BC5B18(&v23[v24], v11, type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata);
      v25 = sub_226BC520C(v18, v11);
      sub_226BC4490(v11, type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata);
      v26 = v18;
      v27 = type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata;
      goto LABEL_9;
    }

    v28 = type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata;
    v29 = v18;
  }

  sub_226BC4490(v29, v28);
  sub_226AC47B0(v23, &qword_27D7A7A10, &qword_226D75D08);
  return 0;
}

uint64_t sub_226BC5B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_226BC5B80(void *a1)
{
  if ([a1 changeType])
  {
    return 0;
  }

  v3 = [a1 changedObjectID];
  v4 = [v3 entity];
  v5 = [v4 name];

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = sub_226D6E39C();
  v8 = v7;

  if (v6 == 0x64724F64756F6C43 && v8 == 0xEF746E6576457265)
  {
  }

  else
  {
    v10 = sub_226D6F21C();

    if ((v10 & 1) == 0)
    {
LABEL_9:

      return 0;
    }
  }

  return v3;
}

uint64_t sub_226BC5C9C(void *a1)
{
  v2 = sub_226D6708C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6898, &unk_226D75B90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v39[-v9];
  v11 = sub_226D670CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226D69D0C();
  v16 = sub_226D69CCC();
  sub_226D69C8C();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_226AC47B0(v10, &qword_27D7A6898, &unk_226D75B90);
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v17 = sub_226D6E07C();
    __swift_project_value_buffer(v17, qword_28105F6A8);
    v18 = a1;
    v19 = sub_226D6E05C();
    v20 = sub_226D6E9CC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_226AB4000, v19, v20, "Skipping invalid user event: %@", v21, 0xCu);
      sub_226AC47B0(v22, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v22, -1, -1);
      MEMORY[0x22AA8BEE0](v21, -1, -1);
    }

    return 0;
  }

  (*(v12 + 32))(v15, v10, v11);
  sub_226D670AC();
  v25 = (*(v3 + 88))(v6, v2);
  if (v25 == *MEMORY[0x277CC6AC8] || v25 == *MEMORY[0x277CC6AB8] || v25 == *MEMORY[0x277CC6AC0])
  {
    goto LABEL_11;
  }

  if (v25 == *MEMORY[0x277CC6AD0])
  {
    (*(v12 + 8))(v15, v11);

    (*(v3 + 96))(v6, v2);
    v29 = *v6;
    v30 = v6[1];
    v31 = v6[2];
    v32 = v6[3];
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66B8, &unk_226D718D0) + 64);
    v34 = sub_226D6B49C();
    (*(*(v34 - 8) + 8))(v6 + v33, v34);
    return v29;
  }

  if (v25 == *MEMORY[0x277CC6AB0] || v25 == *MEMORY[0x277CC6AA8])
  {
LABEL_11:
    (*(v12 + 8))(v15, v11);

    (*(v3 + 96))(v6, v2);
    result = *v6;
    v26 = v6[1];
    v27 = v6[2];
    v28 = v6[3];
    return result;
  }

  if (v25 == *MEMORY[0x277CC6AA0])
  {
    (*(v12 + 8))(v15, v11);

    (*(v3 + 96))(v6, v2);
    v29 = *v6;
    v35 = v6[1];
    v36 = v6[3];
    v37 = v6[4];
    v38 = v6[5];

    return v29;
  }

  if (v25 == *MEMORY[0x277CC6AE0] || v25 == *MEMORY[0x277CC6AD8] || v25 == *MEMORY[0x277CC6AF0] || v25 == *MEMORY[0x277CC6B08] || v25 == *MEMORY[0x277CC6A98] || v25 == *MEMORY[0x277CC6AE8] || v25 == *MEMORY[0x277CC6AF8] || v25 == *MEMORY[0x277CC6A88] || v25 == *MEMORY[0x277CC6A90] || v25 == *MEMORY[0x277CC6B00])
  {
    (*(v12 + 8))(v15, v11);

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  if (v25 == *MEMORY[0x277CC6B10] || v25 == *MEMORY[0x277CC6B18])
  {
    (*(v12 + 8))(v15, v11);

    return 0;
  }

  else
  {
    result = sub_226D6F0AC();
    __break(1u);
  }

  return result;
}

void *sub_226BC6498(void *a1)
{
  v142 = a1;
  v1 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v133 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata(0);
  v4 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v137 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation(0);
  v7 = *(v6 - 8);
  v130 = v6;
  v131 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v125 = (&v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v122 = (&v120 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v126 = (&v120 - v14);
  MEMORY[0x28223BE20](v13);
  v127 = &v120 - v15;
  v16 = sub_226D6D4AC();
  v140 = *(v16 - 8);
  v141 = v16;
  v17 = v140[8];
  v18 = MEMORY[0x28223BE20](v16);
  v124 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v132 = &v120 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v128 = &v120 - v23;
  MEMORY[0x28223BE20](v22);
  v134 = &v120 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v123 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v129 = &v120 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v136 = &v120 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v120 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v120 - v37;
  MEMORY[0x28223BE20](v36);
  v138 = &v120 - v39;
  v40 = type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v139 = &v120 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7998, &unk_226D75B70);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v46 = &v120 - v45;
  v47 = type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata(0);
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v120 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v54 = &v120 - v53;
  sub_226AC40E8(v142, v46, &qword_27D7A7998, &unk_226D75B70);
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {
    v55 = &qword_27D7A7998;
    v56 = &unk_226D75B70;
    v57 = v46;
LABEL_3:
    sub_226AC47B0(v57, v55, v56);
    return MEMORY[0x277D84F90];
  }

  sub_226BC5B18(v46, v54, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
  sub_226BC4428(v54, v52, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
  v60 = v54;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v61 = v137;
    sub_226BC5B18(v52, v137, type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata);
    v62 = *(v61 + 8);
    v63 = v135;
    v64 = v133;
    sub_226BC4428(v61 + *(v135 + 28), v133, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    v66 = (*(*(v65 - 8) + 48))(v64, 4, v65);
    v67 = v141;
    v121 = v60;
    if (v66 <= 1)
    {
      if (v66)
      {
LABEL_27:
        v58 = MEMORY[0x277D84F90];
        if (v62)
        {
LABEL_28:
          v85 = v67;
          v142 = v62;
          goto LABEL_38;
        }

LABEL_36:
        sub_226BC4490(v121, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
        sub_226BC4490(v61, type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata);
        return v58;
      }

      v80 = sub_226D6B49C();
      (*(*(v80 - 8) + 8))(v64, v80);
    }

    else if ((v66 - 2) < 2)
    {
      v68 = *v61;
      if (*v61 && (*(v61 + 16) & 1) == 0)
      {
        v69 = v122;
        *v122 = v68;
        swift_storeEnumTagMultiPayload();
        v70 = v68;
        v58 = sub_226BBB8C0(0, 1, 1, MEMORY[0x277D84F90]);
        v72 = v58[2];
        v71 = v58[3];
        if (v72 >= v71 >> 1)
        {
          v58 = sub_226BBB8C0(v71 > 1, v72 + 1, 1, v58);
        }

        v58[2] = v72 + 1;
        sub_226BC5B18(v69, v58 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v72, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
        if (!v62)
        {
          goto LABEL_36;
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (v62)
    {
      v81 = *(v61 + 16);
      v142 = v62;
      if (v81 == 1)
      {
        *v126 = v62;
        swift_storeEnumTagMultiPayload();
        v82 = v62;
        v58 = sub_226BBB8C0(0, 1, 1, MEMORY[0x277D84F90]);
        v84 = v58[2];
        v83 = v58[3];
        if (v84 >= v83 >> 1)
        {
          v58 = sub_226BBB8C0(v83 > 1, v84 + 1, 1, v58);
        }

        v85 = v67;
        v139 = v82;

        v58[2] = v84 + 1;
        sub_226BC5B18(v126, v58 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v84, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
LABEL_39:
        v94 = v63[11];
        v95 = *(v61 + v63[10]);
        v96 = v63[9];
        v97 = *(v61 + v63[8]);
        v98 = v136;
        sub_226AC40E8(v61 + v96, v136, &qword_27D7A8BE0, &unk_226D718F0);
        v99 = v129;
        sub_226AC40E8(v61 + v94, v129, &qword_27D7A8BE0, &unk_226D718F0);
        v100 = v140;
        v101 = v140[6];
        if (v101(v99, 1, v85) == 1)
        {
          sub_226AC47B0(v98, &qword_27D7A8BE0, &unk_226D718F0);
          sub_226BC4490(v121, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
          sub_226BC4490(v61, type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata);
          sub_226AC47B0(v99, &qword_27D7A8BE0, &unk_226D718F0);
          return v58;
        }

        v102 = v100[4];
        v102(v132, v99, v85);
        if (v95 == v97)
        {
          LODWORD(v138) = v95;
          v107 = v123;
          sub_226AC40E8(v136, v123, &qword_27D7A8BE0, &unk_226D718F0);
          v108 = v101(v107, 1, v85);
          v104 = v139;
          if (v108 == 1)
          {
            v109 = v142;
            v110 = v124;
            sub_226D6D39C();
            if (v101(v107, 1, v85) != 1)
            {
              sub_226AC47B0(v107, &qword_27D7A8BE0, &unk_226D718F0);
            }
          }

          else
          {
            v110 = v124;
            v102(v124, v107, v85);
            v111 = v142;
          }

          v106 = v132;
          v112 = sub_226D6D3FC();
          v105 = v140;
          v113 = v140[1];
          v113(v110, v85);
          LOBYTE(v95) = v138;
          v103 = v142;
          if ((v112 & 1) == 0)
          {

            v113(v106, v85);
            sub_226AC47B0(v136, &qword_27D7A8BE0, &unk_226D718F0);
            sub_226BC4490(v121, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
LABEL_54:
            sub_226BC4490(v137, type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata);
            return v58;
          }
        }

        else
        {
          v103 = v142;
          v104 = v139;
          v105 = v140;
          v106 = v132;
        }

        v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7990, &qword_226D75B68) + 64);
        v115 = v125;
        *v125 = v104;
        *(v115 + 8) = v95;
        (v105[2])(v115 + v114, v106, v85);
        swift_storeEnumTagMultiPayload();
        v116 = v103;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_226BBB8C0(0, v58[2] + 1, 1, v58);
        }

        v117 = v136;
        v119 = v58[2];
        v118 = v58[3];
        if (v119 >= v118 >> 1)
        {
          v58 = sub_226BBB8C0(v118 > 1, v119 + 1, 1, v58);
        }

        (v105[1])(v132, v85);
        sub_226AC47B0(v117, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226BC4490(v121, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
        v58[2] = v119 + 1;
        sub_226BC5B18(v115, v58 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v119, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
        goto LABEL_54;
      }

      v85 = v67;
      v58 = MEMORY[0x277D84F90];
LABEL_38:
      v139 = v62;
      goto LABEL_39;
    }

    v58 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v73 = v139;
  sub_226BC5B18(v52, v139, type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata);
  LODWORD(v142) = *v73;
  v74 = v138;
  sub_226AC40E8(&v73[*(v40 + 28)], v138, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226AC40E8(&v73[*(v40 + 20)], v38, &qword_27D7A8BE0, &unk_226D718F0);
  v76 = v140;
  v75 = v141;
  v77 = v140[6];
  if (v77(v38, 1, v141) == 1)
  {
    sub_226AC47B0(v74, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226BC4490(v73, type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata);
    sub_226BC4490(v60, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
    v57 = v38;
    v55 = &qword_27D7A8BE0;
    v56 = &unk_226D718F0;
    goto LABEL_3;
  }

  v78 = v76[4];
  v78(v134, v38, v75);
  sub_226AC40E8(v74, v35, &qword_27D7A8BE0, &unk_226D718F0);
  if (v77(v35, 1, v75) == 1)
  {
    v79 = v128;
    sub_226D6D39C();
    if (v77(v35, 1, v75) != 1)
    {
      sub_226AC47B0(v35, &qword_27D7A8BE0, &unk_226D718F0);
    }
  }

  else
  {
    v79 = v128;
    v78(v128, v35, v75);
  }

  v86 = v134;
  v87 = sub_226D6D3FC();
  v88 = v76[1];
  v88(v79, v75);
  if ((v87 & 1) == 0)
  {
    v88(v86, v75);
    sub_226AC47B0(v138, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226BC4490(v139, type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata);
    sub_226BC4490(v60, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
    return MEMORY[0x277D84F90];
  }

  v89 = v60;
  v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7988, &qword_226D75B60) + 48);
  v91 = v127;
  *v127 = v142;
  (v76[2])(v91 + v90, v86, v75);
  swift_storeEnumTagMultiPayload();
  v58 = sub_226BBB8C0(0, 1, 1, MEMORY[0x277D84F90]);
  v93 = v58[2];
  v92 = v58[3];
  if (v93 >= v92 >> 1)
  {
    v58 = sub_226BBB8C0(v92 > 1, v93 + 1, 1, v58);
  }

  v88(v86, v75);
  sub_226AC47B0(v138, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226BC4490(v139, type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata);
  sub_226BC4490(v89, type metadata accessor for ExtractedOrderUserEventMappingModel.EventMetadata);
  v58[2] = v93 + 1;
  sub_226BC5B18(v91, v58 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v93, type metadata accessor for ExtractedOrderUserEventMappingModel.EventOperation);
  return v58;
}

void sub_226BC7598()
{
  sub_226B20350();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_226BC7644()
{
  sub_226BC76F8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ManagedCloudOrderEvent.TrackingStatus();
    if (v1 <= 0x3F)
    {
      sub_226B20350();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_226BC76F8()
{
  if (!qword_27D7A79C0)
  {
    sub_226AE59B4(255, &qword_27D7A6370, 0x277CBE448);
    v0 = sub_226D6EC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A79C0);
    }
  }
}

void sub_226BC7760()
{
  sub_226B76634(319, &qword_27D7A79D8);
  if (v0 <= 0x3F)
  {
    sub_226B76634(319, &qword_27D7A79E0);
    if (v1 <= 0x3F)
    {
      sub_226BC780C();
      if (v2 <= 0x3F)
      {
        sub_226BC7898();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_226BC780C()
{
  if (!qword_27D7A79E8)
  {
    sub_226AE59B4(255, &qword_27D7A6370, 0x277CBE448);
    sub_226D6D4AC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D7A79E8);
    }
  }
}

void sub_226BC7898()
{
  if (!qword_27D7A79F0)
  {
    sub_226D6D4AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D7A79F0);
    }
  }
}

uint64_t sub_226BC7904()
{
  result = type metadata accessor for ExtractedOrderUserEventMappingModel.AutomaticIngestionConsentChangeMetadata(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ExtractedOrderUserEventMappingModel.OrderEventMetadata(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FinanceDaemon35ExtractedOrderUserEventMappingModelC0F10IdentifierO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226BC7990(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226BC79E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_226BC7A38(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_226BC7A6C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226BC7AB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226BC7AFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_226BC7B60(void *a1)
{
  v38 = a1;
  v3 = sub_226D6DA1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6B49C();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D66DBC();
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v1;
  if (sub_226BC7F2C())
  {
    v32 = v7;
    v33 = v4;
    v31 = v3;
    v34 = v2;
    v17 = *MEMORY[0x277CC6508];
    v18 = v13[13];
    v18(v16, v17, v12);
    v19 = sub_226D66D6C();
    v20 = v13[1];
    v20(v16, v12);
    if (v19)
    {
      v21 = [v38 ecommerceOrderContent];
      if (v21)
      {
        v30 = v21;
        sub_226D6740C();
        v18(v16, v17, v12);
        v22 = sub_226D66D6C();
        v20(v16, v12);
        if (v22)
        {
          v23 = v37;
          v24 = __swift_project_boxed_opaque_existential_1(v37, v37[3]);
          MEMORY[0x28223BE20](v24);
          *(&v30 - 2) = v11;
          v25 = v34;
          sub_226BC89EC();
          v27 = v32;
          v26 = v33;
          if (v25)
          {

            (*(v35 + 8))(v11, v36);
            return;
          }
        }

        else
        {
          v26 = v33;
          v27 = v32;
          v23 = v37;
        }

        (*(v35 + 8))(v11, v36);
        v28 = v38;
        v29 = v30;
        sub_226BC822C(v28, v29, v27);
        __swift_project_boxed_opaque_existential_1(v23, v23[3]);
        sub_226BC8954();
        (*(v26 + 8))(v27, v31);
      }
    }
  }
}

BOOL sub_226BC7F2C()
{
  v1 = sub_226D67F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v23[-1] - v7;
  sub_226BC9078(v0 + 40, v23);
  if (!v24)
  {
    sub_226AC47B0(v23, &qword_27D7A7A20, &unk_226D75DB0);
    v26 = 0u;
    v27 = 0u;
    goto LABEL_7;
  }

  v9 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v10 = *(v9 + 8);
  sub_226D69A4C();
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  if (!*(&v27 + 1))
  {
LABEL_7:
    sub_226AC47B0(&v26, &unk_27D7A8BB0, &unk_226D74340);
LABEL_8:
    v11 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (!v12)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v11 = v23[0];
  v12 = *(v23[0] + 16);
  if (!v12)
  {
LABEL_5:

    v13 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

LABEL_9:
  v22 = v8;
  v23[0] = MEMORY[0x277D84F90];
  sub_226AE23C4(0, v12, 0);
  v13 = v23[0];
  v14 = (v11 + 40);
  do
  {
    v15 = *(v14 - 1);
    v16 = *v14;

    sub_226D67EFC();
    v23[0] = v13;
    v18 = *(v13 + 16);
    v17 = *(v13 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_226AE23C4(v17 > 1, v18 + 1, 1);
      v13 = v23[0];
    }

    *(v13 + 16) = v18 + 1;
    (*(v2 + 32))(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v18, v6, v1);
    v14 += 2;
    --v12;
  }

  while (v12);

  v8 = v22;
LABEL_14:
  v19 = sub_226AE49A4(v13);

  sub_226D67E6C();
  v20 = sub_226D4DF34(v8, v19);

  (*(v2 + 8))(v8, v1);
  return (v20 & 1) == 0;
}

void sub_226BC822C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_226D6D8FC();
  v7 = *(v6 - 8);
  v60 = v6;
  v61 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A18, &unk_226D75DA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v54 - v15;
  v17 = sub_226D6D9DC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v54 - v21;
  sub_226D6DA0C();
  v23 = [a1 orderTypeIdentifier];
  sub_226D6E39C();

  sub_226D6D91C();
  v24 = [a1 orderIdentifier];
  sub_226D6E39C();

  sub_226D6D8BC();
  v25 = [a2 orderNumber];
  if (v25)
  {
    v26 = v25;
    sub_226D6E39C();
  }

  sub_226D6D89C();
  v27 = [a2 createdDate];
  sub_226D6D45C();

  v28 = sub_226D6D4AC();
  (*(*(v28 - 8) + 56))(v22, 0, 1, v28);
  sub_226D6D9FC();
  v29 = [a2 merchant];
  sub_226D6D9CC();
  v30 = [v29 displayName];
  sub_226D67C2C();

  sub_226D6D9BC();
  sub_226D6D9EC();
  v31 = sub_226D6B26C();
  if (v31 >> 62)
  {
    v50 = v31;
    v32 = sub_226D6EDFC();
    v31 = v50;
    if (v32)
    {
      goto LABEL_5;
    }

LABEL_19:

    goto LABEL_20;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_19;
  }

LABEL_5:
  v33 = v31;
  v62 = MEMORY[0x277D84F90];
  sub_226AE2408(0, v32 & ~(v32 >> 63), 0);
  if (v32 < 0)
  {
    __break(1u);
    return;
  }

  v54[0] = v16;
  v54[1] = a3;
  v55 = a1;
  v56 = a2;
  v34 = 0;
  v35 = v33;
  v57 = v33 & 0xC000000000000001;
  v58 = v33;
  v36 = v62;
  v37 = (v61 + 32);
  do
  {
    v38 = v32;
    if (v57)
    {
      v39 = MEMORY[0x22AA8AFD0](v34, v35);
    }

    else
    {
      v39 = *(v35 + 8 * v34 + 32);
    }

    v40 = v39;
    sub_226D6D8EC();
    v41 = [v40 trackingNumber];
    if (v41)
    {
      v42 = v41;
      sub_226D6E39C();
    }

    sub_226D6D8DC();
    v43 = [v40 carrier];
    if (v43)
    {
      v44 = v43;
      sub_226D6E39C();
    }

    sub_226D6D8CC();

    v45 = *v37;
    v47 = v59;
    v46 = v60;
    (*v37)(v59, v11, v60);
    v62 = v36;
    v49 = *(v36 + 16);
    v48 = *(v36 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_226AE2408(v48 > 1, v49 + 1, 1);
      v46 = v60;
      v36 = v62;
    }

    ++v34;
    *(v36 + 16) = v49 + 1;
    v45((v36 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v49), v47, v46);
    v32 = v38;
    v35 = v58;
  }

  while (v38 != v34);

  a1 = v55;
  a2 = v56;
  v16 = v54[0];
LABEL_20:
  sub_226D6D92C();
  v51 = [a2 payment];
  if (v51)
  {
    sub_226BC8A8C(v51, v16);
    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  v53 = sub_226D6D99C();
  (*(*(v53 - 8) + 56))(v16, v52, 1, v53);
  sub_226D6D9AC();
}

uint64_t sub_226BC8848()
{
  v0 = sub_226D6D90C();
  v2 = v1;
  if (v0 == sub_226D6B46C() && v2 == v3)
  {
  }

  else
  {
    v4 = sub_226D6F21C();

    v5 = 0;
    if ((v4 & 1) == 0)
    {
      return v5 & 1;
    }
  }

  v6 = sub_226D6D8AC();
  v8 = v7;
  if (v6 == sub_226D6B44C() && v8 == v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_226D6F21C();
  }

  return v5 & 1;
}

uint64_t sub_226BC8954()
{
  sub_226D6D7EC();
  sub_226BC90F8();
  result = sub_226D6D81C();
  if (!v0)
  {
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_226D6DF9C();
    return __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  return result;
}

uint64_t sub_226BC89EC()
{
  sub_226D6D7EC();
  sub_226BC90F8();
  result = sub_226D6D80C();
  if (!v0)
  {
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_226D6DF8C();
    return __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  return result;
}

uint64_t sub_226BC8A8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_226D6D88C();
  v5 = *(v4 - 8);
  v65 = v4;
  v66 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v67 = sub_226D677AC();
  v12 = *(v67 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v67);
  v68 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - v16;
  sub_226D6D98C();
  sub_226D68F7C();
  sub_226D6779C();
  sub_226D6EC6C();
  sub_226D6D93C();
  v57 = v17;
  sub_226D6778C();
  sub_226D6D96C();
  v18 = [a1 paymentMethods];
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v20 = v18;
    sub_226D6E5EC();
  }

  sub_226D6D95C();
  v21 = sub_226D68F6C();
  v22 = v21;
  if (v21 >> 62)
  {
    v23 = sub_226D6EDFC();
  }

  else
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = v11;
  v59 = a2;
  v60 = a1;
  v58 = v12;
  if (v23)
  {
    v69[0] = v19;
    result = sub_226AE1D68(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    v25 = 0;
    v26 = v69[0];
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x22AA8AFD0](v25, v22);
      }

      else
      {
        v27 = *(v22 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = [v28 value];
      v30 = sub_226D6E39C();
      v32 = v31;

      v69[0] = v26;
      v34 = *(v26 + 16);
      v33 = *(v26 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_226AE1D68((v33 > 1), v34 + 1, 1);
        v26 = v69[0];
      }

      ++v25;
      *(v26 + 16) = v34 + 1;
      v35 = v26 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
    }

    while (v23 != v25);

    a1 = v60;
    v12 = v58;
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  sub_226D6D97C();
  v36 = sub_226D68F5C();
  if (!(v36 >> 62))
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_18;
    }

LABEL_31:

LABEL_32:
    sub_226D6D94C();

    return (*(v12 + 8))(v57, v67);
  }

  v55 = v36;
  v37 = sub_226D6EDFC();
  v36 = v55;
  if (!v37)
  {
    goto LABEL_31;
  }

LABEL_18:
  v38 = v36;
  v70 = v19;
  result = sub_226AE2724(0, v37 & ~(v37 >> 63), 0);
  if ((v37 & 0x8000000000000000) == 0)
  {
    v39 = 0;
    v40 = v38;
    v61 = v38 & 0xC000000000000001;
    v62 = v37;
    v41 = v70;
    v42 = (v12 + 8);
    v43 = (v66 + 32);
    v63 = v38;
    do
    {
      if (v61)
      {
        v44 = MEMORY[0x22AA8AFD0](v39, v40);
      }

      else
      {
        v44 = *(v40 + 8 * v39 + 32);
      }

      v45 = v44;
      sub_226D6D87C();
      sub_226D6B78C();
      sub_226D6779C();
      sub_226D6EC6C();
      sub_226D6D86C();
      sub_226D6778C();
      sub_226D6D83C();
      v46 = [v45 paymentMethodDisplayName];
      sub_226D67C2C();

      v47 = sub_226D6D85C();
      sub_226D6D84C();
      v47(v69, 0);
      v48 = [v45 applePayTransactionIdentifier];
      if (v48)
      {
        v49 = v48;
        sub_226D6E39C();
      }

      sub_226D6D82C();

      (*v42)(v68, v67);
      v50 = *v43;
      v52 = v64;
      v51 = v65;
      (*v43)(v64, v9, v65);
      v70 = v41;
      v54 = *(v41 + 16);
      v53 = *(v41 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_226AE2724(v53 > 1, v54 + 1, 1);
        v51 = v65;
        v41 = v70;
      }

      ++v39;
      *(v41 + 16) = v54 + 1;
      v50((v41 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v54), v52, v51);
      v40 = v63;
    }

    while (v62 != v39);

    a1 = v60;
    v12 = v58;
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_226BC9078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A20, &unk_226D75DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_226BC90F8()
{
  result = qword_27D7A7A28;
  if (!qword_27D7A7A28)
  {
    sub_226D6D7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7A28);
  }

  return result;
}

uint64_t sub_226BC9150(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void *))
{
  v73 = a7;
  v74 = a2;
  v75 = a5;
  v76 = a6;
  v79 = a4;
  v82 = sub_226D6916C();
  v68 = *(v82 - 8);
  v8 = v68[8];
  MEMORY[0x28223BE20](v82);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6B49C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v81 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v66 - v17;
  sub_226D691CC();
  sub_226D6740C();
  v19 = a3;
  v39 = sub_226D691BC();
  v40 = v79;
  v41 = v68;
  v67 = v19;
  v43 = *(v12 + 8);
  v42 = v12 + 8;
  v71 = v43;
  v43(v18, v11);
  v84 = MEMORY[0x277D84F90];
  if (v39 >> 62)
  {
    v44 = sub_226D6EDFC();
    if (v44)
    {
LABEL_6:
      v45 = v40;
      v46 = 0;
      v80 = (v39 & 0xFFFFFFFFFFFFFF8);
      v81 = (v39 & 0xC000000000000001);
      v78 = (v41 + 11);
      v79 = v44;
      v77 = *v45;
      v69 = v41 + 1;
      v70 = v42;
      v68 = v41 + 12;
      v48 = v75;
      v47 = v76;
      v72 = v11;
      while (1)
      {
        if (v81)
        {
          v49 = MEMORY[0x22AA8AFD0](v46, v39);
        }

        else
        {
          if (v46 >= v80[2])
          {
            goto LABEL_24;
          }

          v49 = *(v39 + 8 * v46 + 32);
        }

        v41 = v49;
        v50 = (v46 + 1);
        if (__OFADD__(v46, 1))
        {
          break;
        }

        v42 = v39;
        sub_226D6918C();
        v51 = v82;
        v52 = (*v78)(v10, v82);
        if (v52 == v77)
        {
          (*v68)(v10, v51);
          v53 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(v48, v47) + 48)];
          v54 = *v53;
          v55 = v53[1];
          v56 = v73;
          v57 = v71(v10, v11);
          v83[0] = v54;
          v83[1] = v55;
          MEMORY[0x28223BE20](v57);
          *(&v66 - 2) = v83;
          LOBYTE(v54) = sub_226CCB428(v56, (&v66 - 4), v74);

          if (v54)
          {
            sub_226D6EF6C();
            v58 = *(v84 + 16);
            sub_226D6EF9C();
            sub_226D6EFAC();
            sub_226D6EF7C();
          }

          else
          {
          }

          v11 = v72;
          v48 = v75;
          v47 = v76;
        }

        else
        {

          (*v69)(v10, v51);
        }

        v39 = v42;
        ++v46;
        if (v50 == v79)
        {
          v60 = v84;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
      swift_once();
      v20 = sub_226D6E07C();
      __swift_project_value_buffer(v20, qword_28105F5C0);
      v21 = v81;
      (*(v42 + 16))(v81, v47, v11);
      v22 = 0;
      v23 = sub_226D6E05C();
      v24 = sub_226D6E9CC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v72 = v11;
        v26 = v25;
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v83[0] = v80;
        *v26 = 136315394;
        sub_226BCA48C();
        v27 = v72;
        v28 = sub_226D6F1CC();
        v82 = v47;
        v29 = v28;
        v31 = v30;
        (v41)(v21, v27);
        v32 = sub_226AC4530(v29, v31, v83);

        *(v26 + 4) = v32;
        *(v26 + 12) = 2112;
        v33 = 0;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 14) = v34;
        v35 = v79;
        *v79 = v34;
        _os_log_impl(&dword_226AB4000, v23, v24, "Failed to remove Wallet messages for order %s with error: %@", v26, 0x16u);
        sub_226B17298(v35);
        MEMORY[0x22AA8BEE0](v35, -1, -1);
        v36 = v80;
        __swift_destroy_boxed_opaque_existential_0Tm(v80);
        MEMORY[0x22AA8BEE0](v36, -1, -1);
        MEMORY[0x22AA8BEE0](v26, -1, -1);

        v37 = v82;
        v38 = v27;
      }

      else
      {

        (v41)(v21, v11);
        v37 = v47;
        v38 = v11;
      }

      (v41)(v37, v38);
      return 0;
    }
  }

  else
  {
    v44 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44)
    {
      goto LABEL_6;
    }
  }

  v60 = MEMORY[0x277D84F90];
LABEL_27:

  v61 = v67;
  if ((v60 & 0x8000000000000000) == 0 && (v60 & 0x4000000000000000) == 0)
  {
    v62 = *(v60 + 16);
    if (v62)
    {
      goto LABEL_30;
    }

LABEL_39:

    return 0;
  }

  result = sub_226D6EDFC();
  v62 = result;
  if (!result)
  {
    goto LABEL_39;
  }

LABEL_30:
  if (v62 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v62; ++i)
    {
      if ((v60 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x22AA8AFD0](i, v60);
      }

      else
      {
        v64 = *(v60 + 8 * i + 32);
      }

      v65 = v64;
      [v61 deleteObject_];
    }

    return 1;
  }

  return result;
}

void sub_226BC9838(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v39 = a4;
  v40 = a3;
  v38 = a1;
  v4 = sub_226D6D4AC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_226D6916C();
  v32 = *(v36 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v36);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6B20C();
  v11 = v10;
  v12 = *(v10 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = 0;
    v34 = *(v10 + 16);
    v35 = v10 + 32;
    v31 = v12 - 1;
    do
    {
      v33 = v13;
      v15 = v14;
      while (1)
      {
        if (v15 >= *(v11 + 16))
        {
          __break(1u);
          goto LABEL_21;
        }

        v16 = *(v35 + 8 * v15);
        v14 = v15 + 1;
        v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
        v41[0] = sub_226D6A27C();
        v41[1] = v18;
        MEMORY[0x28223BE20](v41[0]);
        *(&v31 - 2) = v41;
        v19 = sub_226CCB428(sub_226BAE5A0, (&v31 - 4), v40);

        if (v19)
        {
          break;
        }

        ++v15;
        if (v34 == v14)
        {
          v13 = v33;
          goto LABEL_13;
        }
      }

      v13 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_226AE2384(0, *(v13 + 16) + 1, 1);
        v13 = v42;
      }

      v22 = *(v13 + 16);
      v21 = *(v13 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226AE2384((v21 > 1), v22 + 1, 1);
        v13 = v42;
      }

      *(v13 + 16) = v22 + 1;
      *(v13 + 8 * v22 + 32) = v16;
    }

    while (v31 != v15);
  }

LABEL_13:

  v41[0] = MEMORY[0x277D84F90];
  v40 = *(v13 + 16);
  if (v40)
  {
    v23 = 0;
    v35 = v13 + 32;
    v24 = *MEMORY[0x277CC77D8];
    v25 = (v32 + 104);
    while (v23 < *(v13 + 16))
    {
      v26 = *(v35 + 8 * v23);
      sub_226D691CC();
      v27 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A9660, &qword_226D7E590) + 48)];
      v28 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
      sub_226D6740C();
      *v27 = sub_226D6A27C();
      v27[1] = v29;
      (*v25)(v9, v24, v36);
      sub_226D6D46C();
      v30 = v39;
      sub_226D6917C();

      MEMORY[0x22AA8A610]();
      if (*((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_226D6E61C();
      }

      ++v23;
      sub_226D6E65C();
      if (v40 == v23)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:
  }
}

uint64_t sub_226BC9C08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v42 = a1;
  v43 = a4;
  v46 = a3;
  v4 = sub_226D6D4AC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_226D6916C();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6B29C();
  v11 = v10;
  v48 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    v13 = MEMORY[0x277D84F90];
    if (i)
    {
      v38 = v7;
      v7 = 0;
      v44 = v11 & 0xFFFFFFFFFFFFFF8;
      v45 = v11 & 0xC000000000000001;
      while (1)
      {
        if (v45)
        {
          v14 = MEMORY[0x22AA8AFD0](v7, v11);
        }

        else
        {
          if (v7 >= *(v44 + 16))
          {
            goto LABEL_30;
          }

          v14 = *(v11 + 8 * v7 + 32);
        }

        v15 = v14;
        v16 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v17 = [v14 returnIdentifier];
        v18 = sub_226D6E39C();
        v20 = v19;

        v47[0] = v18;
        v47[1] = v20;
        MEMORY[0x28223BE20](v21);
        *(&v37 - 2) = v47;
        LOBYTE(v17) = sub_226CCB428(sub_226BAE190, (&v37 - 4), v46);

        if (v17)
        {
          sub_226D6EF6C();
          v22 = *(v48 + 16);
          sub_226D6EF9C();
          sub_226D6EFAC();
          sub_226D6EF7C();
        }

        else
        {
        }

        ++v7;
        if (v16 == i)
        {
          v46 = v48;
          v7 = v38;
          v13 = MEMORY[0x277D84F90];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v46 = MEMORY[0x277D84F90];
LABEL_16:

    v47[0] = v13;
    if ((v46 & 0x8000000000000000) == 0 && (v46 & 0x4000000000000000) == 0)
    {
      v23 = *(v46 + 16);
      if (!v23)
      {
        break;
      }

      goto LABEL_19;
    }

    v23 = sub_226D6EDFC();
    if (!v23)
    {
      break;
    }

LABEL_19:
    v24 = 0;
    v45 = v46 & 0xC000000000000001;
    LODWORD(v44) = *MEMORY[0x277CC77D0];
    v38 = (v7 + 104);
    v25 = v39;
    while (1)
    {
      if (v45)
      {
        v26 = MEMORY[0x22AA8AFD0](v24, v46);
      }

      else
      {
        if (v24 >= *(v46 + 16))
        {
          goto LABEL_32;
        }

        v26 = *(v46 + 8 * v24 + 32);
      }

      v27 = v26;
      v11 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      sub_226D691CC();
      v28 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A30, &qword_226D75DF8) + 48)];
      sub_226D6740C();
      v29 = [v27 returnIdentifier];
      v30 = sub_226D6E39C();
      v32 = v31;

      *v28 = v30;
      v28[1] = v32;
      (*v38)(v25, v44, v40);
      sub_226D6D46C();
      v33 = v43;
      v7 = sub_226D6917C();

      MEMORY[0x22AA8A610]();
      if (*((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v34 = *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_226D6E61C();
      }

      sub_226D6E65C();
      ++v24;
      if (v11 == v23)
      {
        v35 = v47[0];
        goto LABEL_36;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v35 = MEMORY[0x277D84F90];
LABEL_36:

  return v35;
}

uint64_t sub_226BCA084(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_226D675BC();
  v8 = sub_226BC9150(a1, v7, a4, MEMORY[0x277CC77D8], &unk_27D7A9660, &qword_226D7E590, sub_226BAE5A0);

  v9 = sub_226D6759C();
  v10 = sub_226BC9150(a1, v9, a4, MEMORY[0x277CC77D0], &qword_27D7A7A30, &qword_226D75DF8, sub_226BAE5A0);

  v11 = sub_226D675AC();
  sub_226BC9838(a1, a2, v11, a4);
  v13 = v12;

  v36 = v13;
  v14 = sub_226D6758C();
  v15 = sub_226BC9C08(a1, a2, v14, a4);

  sub_226CEE0E0(v15);
  v16 = v13;
  if (v13 >> 62)
  {
    v17 = sub_226D6EDFC();
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_11:

    v24 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v17 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_11;
  }

LABEL_3:
  v35 = MEMORY[0x277D84F90];
  result = sub_226D6EF8C();
  if (v17 < 0)
  {
    __break(1u);
    return result;
  }

  v19 = 0;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x22AA8AFD0](v19, v16);
    }

    else
    {
      v20 = *(v16 + 8 * v19 + 32);
    }

    v21 = v20;
    ++v19;
    v22 = [v20 objectID];

    sub_226D6EF6C();
    v23 = v35[2];
    sub_226D6EF9C();
    sub_226D6EFAC();
    sub_226D6EF7C();
  }

  while (v17 != v19);

  v24 = v35;
LABEL_12:
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v25 = sub_226D6E07C();
  __swift_project_value_buffer(v25, qword_28105F5C0);

  v26 = sub_226D6E05C();
  v27 = sub_226D6E9AC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35 = v29;
    *v28 = 136315138;
    v30 = sub_226BCA440();
    v31 = MEMORY[0x22AA8A6A0](v24, v30);
    v33 = sub_226AC4530(v31, v32, &v35);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_226AB4000, v26, v27, "Created order messages with IDs: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x22AA8BEE0](v29, -1, -1);
    MEMORY[0x22AA8BEE0](v28, -1, -1);
  }

  if (v24 >> 62)
  {
    v34 = sub_226D6EDFC();
  }

  else
  {
    v34 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return (v8 | v10) & 1 | (v34 != 0);
}

unint64_t sub_226BCA440()
{
  result = qword_27D7A6370;
  if (!qword_27D7A6370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A6370);
  }

  return result;
}

unint64_t sub_226BCA48C()
{
  result = qword_27D7A6658;
  if (!qword_27D7A6658)
  {
    sub_226D6B49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6658);
  }

  return result;
}

uint64_t ExtractedOrderConfigurationProvider.__allocating_init(trialProvider:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  v9 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_226BCDF14(v11, v5, v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v13;
}

uint64_t ExtractedOrderConfigurationProvider.init(trialProvider:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_226BCDF14(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t ExtractedOrderConfigurationProvider.configurations.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7090, &unk_226D75E10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - v3;
  v5 = sub_226D6A1FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + OBJC_IVAR____TtC13FinanceDaemon35ExtractedOrderConfigurationProvider_cachedAllowList);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13FinanceDaemon35ExtractedOrderConfigurationProvider_cachedAllowList));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7098, &qword_226D740D8) + 28);
  sub_226BCE0F0(v10 + v11, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_226AC47B0(v10 + v11, &qword_27D7A7090, &unk_226D75E10);
    sub_226AC47B0(v4, &qword_27D7A7090, &unk_226D75E10);
    sub_226BCBEAC(v9);
    (*(v6 + 16))(v10 + v11, v9, v5);
    (*(v6 + 56))(v10 + v11, 0, 1, v5);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
  }

  os_unfair_lock_unlock(v10);
  v12 = sub_226D6A14C();
  (*(v6 + 8))(v9, v5);
  return v12;
}

uint64_t ExtractedOrderConfigurationProvider.defaultBehavior.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7090, &unk_226D75E10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = sub_226D6A1FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + OBJC_IVAR____TtC13FinanceDaemon35ExtractedOrderConfigurationProvider_cachedAllowList);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13FinanceDaemon35ExtractedOrderConfigurationProvider_cachedAllowList));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7098, &qword_226D740D8) + 28);
  sub_226BCE0F0(v10 + v11, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_226AC47B0(v10 + v11, &qword_27D7A7090, &unk_226D75E10);
    sub_226AC47B0(v4, &qword_27D7A7090, &unk_226D75E10);
    sub_226BCBEAC(v9);
    (*(v6 + 16))(v10 + v11, v9, v5);
    (*(v6 + 56))(v10 + v11, 0, 1, v5);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
  }

  os_unfair_lock_unlock(v10);
  sub_226D6A16C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t ExtractedOrderConfigurationProvider.isOrderExtractionSupported(forLocale:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_226D6D5DC();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D66E3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A38, &qword_226D75E20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v33 - v15;
  sub_226D6D59C();
  v17 = sub_226D6D58C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_226AC47B0(v16, &qword_27D7A7A38, &qword_226D75E20);
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v19 = sub_226D6E07C();
    __swift_project_value_buffer(v19, qword_28105F6A8);
    v20 = v33;
    (*(v33 + 16))(v7, a1, v4);
    v21 = sub_226D6E05C();
    v22 = sub_226D6E9CC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34 = v24;
      *v23 = 136315138;
      sub_226BCE2E0(&qword_27D7A7A40, MEMORY[0x277CC9788]);
      v25 = sub_226D6F1CC();
      v27 = v26;
      (*(v20 + 8))(v7, v4);
      v28 = sub_226AC4530(v25, v27, &v34);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_226AB4000, v21, v22, "No region code for locale %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x22AA8BEE0](v24, -1, -1);
      MEMORY[0x22AA8BEE0](v23, -1, -1);
    }

    else
    {

      (*(v20 + 8))(v7, v4);
    }

    v31 = 0;
  }

  else
  {
    sub_226D6D57C();
    (*(v18 + 8))(v16, v17);
    v29 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    if (qword_281062C40 != -1)
    {
      swift_once();
    }

    v30 = sub_226D66DDC();
    __swift_project_value_buffer(v30, qword_281064560);
    (*(v9 + 104))(v12, *MEMORY[0x277CC6550], v8);
    v31 = sub_226D66E5C();

    (*(v9 + 8))(v12, v8);
  }

  return v31 & 1;
}

void sub_226BCAFF0(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66C0, &unk_226D75EC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v84 = &v81 - v12;
  v13 = sub_226D6A1EC();
  v98 = *(v13 - 8);
  v14 = *(v98 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v86 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v85 = &v81 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v81 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v81 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v92 = &v81 - v26;
  MEMORY[0x28223BE20](v25);
  v94 = &v81 - v27;
  v28 = objc_allocWithZone(MEMORY[0x277D07080]);
  v29 = sub_226D6E36C();
  v30 = [v28 initWithString_];

  v102 = v30;
  if (!v30)
  {
    if (qword_28105F6A0 == -1)
    {
LABEL_19:
      v47 = sub_226D6E07C();
      __swift_project_value_buffer(v47, qword_28105F6A8);

      v48 = sub_226D6E05C();
      v49 = sub_226D6E9CC();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v105[0] = v51;
        *v50 = 136380675;
        *(v50 + 4) = sub_226AC4530(a1, a2, v105);
        _os_log_impl(&dword_226AB4000, v48, v49, "Invalid email address supplied: %{private}s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v51);
        MEMORY[0x22AA8BEE0](v51, -1, -1);
        MEMORY[0x22AA8BEE0](v50, -1, -1);
      }

      v52 = *(v98 + 56);

      v52(a3, 1, 1, v13);
      return;
    }

LABEL_47:
    swift_once();
    goto LABEL_19;
  }

  v82 = v24;
  v83 = v21;
  v87 = v11;
  v88 = v3;
  v89 = a3;
  v31 = ExtractedOrderConfigurationProvider.configurations.getter();
  v97 = *(v31 + 16);
  if (v97)
  {
    a1 = 0;
    v32 = v98;
    v96 = v98 + 16;
    v90 = (v98 + 32);
    v93 = (v98 + 8);
    a3 = MEMORY[0x277D84F90];
    v33 = v94;
    v91 = v13;
    v95 = v31;
    while (a1 < *(v31 + 16))
    {
      v101 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v100 = *(v32 + 72);
      (*(v32 + 16))(v33, v31 + v101 + v100 * a1, v13);
      v34 = sub_226D6A1BC();
      if (v34)
      {
        v35 = v34;
        v99 = a3;
        v36 = (v34 + 40);
        v37 = -*(v34 + 16);
        v13 = -1;
        do
        {
          if (v37 + v13 == -1)
          {

            v33 = v94;
            v13 = v91;
            (*v93)(v94, v91);
            a3 = v99;
            goto LABEL_5;
          }

          if (++v13 >= *(v35 + 16))
          {
            __break(1u);
            goto LABEL_46;
          }

          a2 = (v36 + 2);
          a3 = *v36;
          v105[0] = *(v36 - 1);
          v105[1] = a3;

          v38 = [v102 stringValue];
          v39 = sub_226D6E39C();
          v41 = v40;

          v103 = v39;
          v104 = v41;
          sub_226AEEF6C();
          v42 = sub_226D6ECFC();

          v36 = a2;
        }

        while (v42);

        v13 = v91;
        v43 = *v90;
        v33 = v94;
        (*v90)(v92, v94, v91);
        a3 = v99;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v106 = a3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226AE1EFC(0, *(a3 + 16) + 1, 1);
          a3 = v106;
        }

        v46 = *(a3 + 16);
        v45 = *(a3 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_226AE1EFC(v45 > 1, v46 + 1, 1);
          a3 = v106;
        }

        *(a3 + 16) = v46 + 1;
        v43((a3 + v101 + v46 * v100), v92, v13);
      }

      else
      {
        (*v93)(v33, v13);
      }

LABEL_5:
      ++a1;
      v32 = v98;
      v31 = v95;
      if (a1 == v97)
      {
        goto LABEL_25;
      }
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  a3 = MEMORY[0x277D84F90];
LABEL_25:

  v53 = a3;
  if (*(a3 + 16))
  {
    v54 = v89;
    v55 = v87;
  }

  else
  {
    v56 = [v102 domain];
    v54 = v89;
    v55 = v87;
    if (v56)
    {
      v57 = v56;
      v58 = sub_226D6E39C();
      v60 = v59;

      v61 = v84;
      sub_226BCB99C(v58, v60, v84);

      if ((*(v98 + 48))(v61, 1, v13) == 1)
      {
        sub_226AC47B0(v61, &qword_27D7A66C0, &unk_226D75EC0);
      }

      else
      {
        v67 = *(v98 + 32);
        v68 = v82;
        v67(v82, v61, v13);
        (*(v98 + 16))(v83, v68, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_226BBB1C8(0, *(v53 + 2) + 1, 1, v53);
        }

        v70 = *(v53 + 2);
        v69 = *(v53 + 3);
        v71 = v98;
        if (v70 >= v69 >> 1)
        {
          v79 = sub_226BBB1C8(v69 > 1, v70 + 1, 1, v53);
          v71 = v98;
          v53 = v79;
        }

        v72 = v71 + 8;
        (*(v71 + 8))(v82, v13);
        *(v53 + 2) = v70 + 1;
        v67(&v53[((*(v72 + 72) + 32) & ~*(v72 + 72)) + *(v72 + 64) * v70], v83, v13);
      }
    }
  }

  if (!*(v53 + 2))
  {
    v62 = [v102 highLevelDomain];
    if (v62)
    {
      v63 = v62;
      v64 = sub_226D6E39C();
      v66 = v65;

      sub_226BCB99C(v64, v66, v55);

      if ((*(v98 + 48))(v55, 1, v13) == 1)
      {
        sub_226AC47B0(v55, &qword_27D7A66C0, &unk_226D75EC0);
      }

      else
      {
        v73 = *(v98 + 32);
        v74 = v85;
        v73(v85, v55, v13);
        (*(v98 + 16))(v86, v74, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_226BBB1C8(0, *(v53 + 2) + 1, 1, v53);
        }

        v76 = *(v53 + 2);
        v75 = *(v53 + 3);
        v77 = v98;
        if (v76 >= v75 >> 1)
        {
          v80 = sub_226BBB1C8(v75 > 1, v76 + 1, 1, v53);
          v77 = v98;
          v53 = v80;
        }

        v78 = *(v77 + 8);
        v98 = v77 + 8;
        v78(v85, v13);
        *(v53 + 2) = v76 + 1;
        v73(&v53[((*(v98 + 72) + 32) & ~*(v98 + 72)) + *(v98 + 64) * v76], v86, v13);
      }
    }
  }

  sub_226BCBC6C(v53, v54);
}

uint64_t sub_226BCB99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v29 = sub_226D6A1EC();
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v29);
  v33 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v28 = v3;
  result = ExtractedOrderConfigurationProvider.configurations.getter();
  v37 = *(result + 16);
  if (v37)
  {
    v13 = 0;
    v35 = v6 + 16;
    v36 = a1;
    v31 = (v6 + 8);
    v32 = (v6 + 32);
    v14 = a2;
    v15 = MEMORY[0x277D84F90];
    v16 = v14;
    v30 = v14;
    v17 = v29;
    v34 = result;
    while (v13 < *(result + 16))
    {
      v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v19 = *(v6 + 72);
      (*(v6 + 16))(v11, result + v18 + v19 * v13, v17);
      v20 = v17;
      v40 = sub_226D6A1AC();
      v41 = v21;
      v38 = v36;
      v39 = v16;
      sub_226AEEF6C();
      v22 = sub_226D6ECFC();

      if (v22)
      {
        (*v31)(v11, v20);
        v17 = v20;
      }

      else
      {
        v23 = *v32;
        (*v32)(v33, v11, v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v15;
        if (isUniquelyReferenced_nonNull_native)
        {
          v17 = v20;
        }

        else
        {
          sub_226AE1EFC(0, v15[2] + 1, 1);
          v17 = v29;
          v15 = v42;
        }

        v26 = v15[2];
        v25 = v15[3];
        if (v26 >= v25 >> 1)
        {
          sub_226AE1EFC(v25 > 1, v26 + 1, 1);
          v17 = v29;
          v15 = v42;
        }

        v15[2] = v26 + 1;
        v23(v15 + v18 + v26 * v19, v33, v17);
        v16 = v30;
      }

      ++v13;
      result = v34;
      if (v37 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_14:

    sub_226BCBC6C(v15, v27);
  }

  return result;
}

uint64_t sub_226BCBC6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a1;

  sub_226BCC60C(&v12);
  v3 = v12;
  if (v12[2])
  {
    v4 = sub_226D6A1EC();
    v11 = *(v4 - 8);
    (*(v11 + 16))(a2, v3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v4);

    v5 = *(v11 + 56);
    v6 = a2;
    v7 = 0;
    v8 = v4;
  }

  else
  {

    v9 = sub_226D6A1EC();
    v5 = *(*(v9 - 8) + 56);
    v8 = v9;
    v6 = a2;
    v7 = 1;
  }

  return v5(v6, v7, 1, v8);
}

uint64_t sub_226BCBDC8()
{
  if ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C() & 1) != 0 || (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0)
  {
    if ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C() & 1) != 0 || (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0)
    {
      v0 = sub_226D6A18C() & 1;
      if (v0 == (sub_226D6A18C() & 1))
      {
        v1 = sub_226D6A19C();
      }

      else
      {
        v1 = sub_226D6A18C();
      }

      v2 = v1 ^ 1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_226BCBEAC@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = sub_226D6A15C();
  v30 = *(v32 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226D6D1AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D66E3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  if (qword_281062C50 != -1)
  {
    swift_once();
  }

  v15 = sub_226D66DDC();
  __swift_project_value_buffer(v15, qword_281064578);
  (*(v10 + 104))(v13, *MEMORY[0x277CC6550], v9);
  sub_226D66E4C();
  v17 = v16;
  (*(v10 + 8))(v13, v9);
  if (v17)
  {
    sub_226D6D0BC();

    v22 = sub_226D6D1BC();
    v24 = v23;
    v25 = sub_226D6CC1C();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_226D6CC0C();
    sub_226D6A1FC();
    sub_226BCE2E0(&qword_281062BA0, MEMORY[0x277CC7B20]);
    sub_226D6CBFC();
    (*(v5 + 8))(v8, v4);

    return sub_226B11B98(v22, v24);
  }

  else
  {
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v18 = sub_226D6E07C();
    __swift_project_value_buffer(v18, qword_28105F6A8);
    v19 = sub_226D6E05C();
    v20 = sub_226D6E9CC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_226AB4000, v19, v20, "No order allow list found in Trial", v21, 2u);
      MEMORY[0x22AA8BEE0](v21, -1, -1);
    }

    (*(v30 + 104))(v31, *MEMORY[0x277CC7AF0], v32);
    return sub_226D6A13C();
  }
}

uint64_t ExtractedOrderConfigurationProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = v0 + OBJC_IVAR____TtC13FinanceDaemon35ExtractedOrderConfigurationProvider_cachedAllowList;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7098, &qword_226D740D8);
  sub_226AC47B0(v1 + *(v2 + 28), &qword_27D7A7090, &unk_226D75E10);
  return v0;
}

uint64_t ExtractedOrderConfigurationProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0 + OBJC_IVAR____TtC13FinanceDaemon35ExtractedOrderConfigurationProvider_cachedAllowList;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7098, &qword_226D740D8);
  sub_226AC47B0(&v1[*(v2 + 28)], &qword_27D7A7090, &unk_226D75E10);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_226BCC5A8()
{
  v0 = sub_226D66DDC();
  __swift_allocate_value_buffer(v0, qword_281064578);
  __swift_project_value_buffer(v0, qword_281064578);
  return sub_226D66DCC();
}

uint64_t sub_226BCC60C(void **a1)
{
  v2 = *(sub_226D6A1EC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_226C694A0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_226BCC6B4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_226BCC6B4(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_226D6F1BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_226D6A1EC();
        v6 = sub_226D6E63C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_226D6A1EC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_226BCCB50(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_226BCC7E0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_226BCC7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_226D6A1EC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v48 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v38 - v17;
  v40 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v21 = *(v16 + 16);
    v20 = v16 + 16;
    v22 = *(v20 + 56);
    v49 = (v20 - 8);
    v50 = v21;
    v51 = v20;
    v46 = (v20 + 16);
    v47 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v45 = -v22;
    v24 = a1 - a3;
    v39 = v22;
    v25 = v19 + v22 * a3;
LABEL_6:
    v43 = v23;
    v44 = a3;
    v41 = v25;
    v42 = v24;
    v27 = v24;
    v28 = v23;
    while (1)
    {
      v29 = v50;
      v50(v18, v25, v8);
      v29(v14, v28, v8);
      if ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C() & 1) != 0 || (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0)
      {
        if (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0 && ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C()))
        {
          v26 = *v49;
          (*v49)(v14, v8);
          result = (v26)(v18, v8);
LABEL_5:
          a3 = v44 + 1;
          v23 = v43 + v39;
          v24 = v42 - 1;
          v25 = v41 + v39;
          if (v44 + 1 == v40)
          {
            return result;
          }

          goto LABEL_6;
        }

        v30 = sub_226D6A18C();
        if ((v30 ^ sub_226D6A18C()))
        {
          v31 = sub_226D6A18C();
        }

        else
        {
          v31 = sub_226D6A19C();
        }

        v32 = v31;
        v33 = *v49;
        (*v49)(v14, v8);
        result = (v33)(v18, v8);
        if (v32)
        {
          goto LABEL_5;
        }

        if (!v47)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v37 = *v49;
        (*v49)(v14, v8);
        result = (v37)(v18, v8);
        if (!v47)
        {
LABEL_24:
          __break(1u);
          return result;
        }
      }

      v34 = *v46;
      v35 = v48;
      (*v46)(v48, v25, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v34)(v28, v35, v8);
      v28 += v45;
      v25 += v45;
      if (__CFADD__(v27++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_226BCCB50(unint64_t *a1, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = v4;
  v136 = a1;
  v8 = sub_226D6A1EC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v140 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v152 = &v131 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v157 = &v131 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v131 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v131 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v131 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  result = MEMORY[0x28223BE20](v25);
  v30 = *(a3 + 1);
  v146 = v28;
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_127:
    a4 = *v136;
    if (!*v136)
    {
      goto LABEL_169;
    }

    v24 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_163;
    }

    result = v24;
LABEL_130:
    v158 = result;
    v24 = *(result + 16);
    if (v24 >= 2)
    {
      while (1)
      {
        v124 = *a3;
        if (!*a3)
        {
          goto LABEL_167;
        }

        v125 = a3;
        v126 = *(result + 16 * v24);
        a3 = result;
        v127 = *(result + 16 * (v24 - 1) + 40);
        sub_226BCD7CC(&v124[*(v8 + 72) * v126], &v124[*(v8 + 72) * *(result + 16 * (v24 - 1) + 32)], &v124[*(v8 + 72) * v127], a4);
        if (v5)
        {
        }

        if (v127 < v126)
        {
          goto LABEL_156;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v128 = a3;
        }

        else
        {
          v128 = sub_226C69374(a3);
        }

        if (v24 - 2 >= *(v128 + 2))
        {
          goto LABEL_157;
        }

        a3 = v125;
        v129 = &v128[16 * v24];
        *v129 = v126;
        *(v129 + 1) = v127;
        v158 = v128;
        sub_226C692E8(v24 - 1);
        result = v158;
        v24 = *(v158 + 16);
        if (v24 <= 1)
        {
        }
      }
    }
  }

  v133 = &v131 - v27;
  v132 = v29;
  v31 = 0;
  v155 = (v28 + 8);
  v156 = v28 + 16;
  v154 = (v28 + 32);
  v32 = MEMORY[0x277D84F90];
  v138 = a3;
  v135 = a4;
  v142 = v21;
  v148 = v24;
  v153 = v18;
  while (1)
  {
    v141 = v32;
    if (v31 + 1 >= v30)
    {
      v49 = v31 + 1;
      goto LABEL_40;
    }

    v149 = v30;
    v33 = *a3;
    v34 = *(v146 + 72);
    v137 = v31;
    v35 = &v33[v34 * (v31 + 1)];
    v147 = *(v146 + 16);
    v147(v133, v35, v8);
    v150 = v34;
    v151 = v33;
    v36 = &v33[v34 * v137];
    v37 = v132;
    v147(v132, v36, v8);
    v38 = v133;
    LODWORD(v145) = sub_226BCBDC8();
    if (v5)
    {
      v130 = *v155;
      (*v155)(v37, v8);
      (v130)(v38, v8);
    }

    v134 = 0;
    v39 = *v155;
    (*v155)(v37, v8);
    v144 = v39;
    result = (v39)(v38, v8);
    v40 = v137 + 2;
    v41 = v150;
    v42 = v151 + v150 * (v137 + 2);
    while (1)
    {
      v49 = v149;
      if (v149 == v40)
      {
        break;
      }

      v50 = v147;
      v147(v24, v42, v8);
      v50(v21, v35, v8);
      v51 = sub_226D6A18C();
      v151 = v35;
      if ((v51 & 1) != 0 || (sub_226D6A19C() & 1) != 0 || (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0)
      {
        if (sub_226D6A18C() & 1) != 0 || (sub_226D6A19C())
        {
LABEL_15:
          v52 = v148;
          v53 = sub_226D6A18C();
          if ((v53 ^ sub_226D6A18C()))
          {
            v43 = sub_226D6A18C();
          }

          else
          {
            v43 = sub_226D6A19C();
          }

          v44 = v43;
          v21 = v142;
          goto LABEL_9;
        }

        v52 = v148;
        if (sub_226D6A18C())
        {
          v44 = 1;
        }

        else
        {
          if ((sub_226D6A19C() & 1) == 0)
          {
            goto LABEL_15;
          }

          v44 = 1;
          v52 = v148;
        }
      }

      else
      {
        v44 = 0;
        v52 = v148;
      }

LABEL_9:
      v45 = v21;
      v46 = v21;
      v47 = v144;
      (v144)(v45, v8);
      result = v47(v52, v8);
      v21 = v46;
      v48 = v145 ^ v44;
      ++v40;
      v41 = v150;
      v42 += v150;
      v35 = v151 + v150;
      v24 = v52;
      if ((v48 & 1) == 0)
      {
        v49 = v40 - 1;
        break;
      }
    }

    v5 = v134;
    v31 = v137;
    a3 = v138;
    v54 = v141;
    a4 = v135;
    if ((v145 & 1) == 0)
    {
      goto LABEL_40;
    }

    if (v49 < v137)
    {
      goto LABEL_162;
    }

    if (v137 < v49)
    {
      v24 = v41 * (v49 - 1);
      v55 = v49 * v41;
      v149 = v49;
      v56 = v49;
      v57 = v137;
      v58 = v137 * v41;
      do
      {
        if (v57 != --v56)
        {
          v59 = *a3;
          if (!v59)
          {
            goto LABEL_166;
          }

          v151 = *v154;
          v151(v140, &v59[v58], v8, v54);
          if (v58 < v24 || &v59[v58] >= &v59[v55])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v58 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = (v151)(&v59[v24], v140, v8);
          a3 = v138;
          v54 = v141;
          v41 = v150;
        }

        ++v57;
        v24 -= v41;
        v55 -= v41;
        v58 += v41;
      }

      while (v57 < v56);
      v5 = v134;
      a4 = v135;
      v31 = v137;
      v49 = v149;
    }

LABEL_40:
    v60 = *(a3 + 1);
    if (v49 >= v60)
    {
      goto LABEL_49;
    }

    if (__OFSUB__(v49, v31))
    {
      goto LABEL_159;
    }

    if (v49 - v31 >= a4)
    {
LABEL_49:
      v24 = v49;
      if (v49 < v31)
      {
        goto LABEL_158;
      }

      goto LABEL_50;
    }

    if (__OFADD__(v31, a4))
    {
      goto LABEL_160;
    }

    if ((v31 + a4) >= v60)
    {
      v24 = *(a3 + 1);
    }

    else
    {
      v24 = v31 + a4;
    }

    a4 = v157;
    if (v24 < v31)
    {
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      result = sub_226C69374(v24);
      goto LABEL_130;
    }

    if (v49 == v24)
    {
      goto LABEL_49;
    }

    v134 = v5;
    v107 = *a3;
    v108 = *(v146 + 72);
    v109 = *(v146 + 16);
    v110 = *a3 + v108 * (v49 - 1);
    v149 = v49;
    v150 = -v108;
    v137 = v31;
    v111 = v31 - v49;
    v151 = v107;
    v139 = v108;
    v112 = &v107[v49 * v108];
    v143 = v24;
LABEL_103:
    v144 = v112;
    v145 = v111;
    v147 = v110;
LABEL_104:
    v109(v18, v112, v8);
    v109(a4, v110, v8);
    if (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0 && ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C()))
    {
      break;
    }

    if ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C() & 1) != 0 || (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0)
    {
      v113 = sub_226D6A18C();
      if ((v113 ^ sub_226D6A18C()))
      {
        v114 = sub_226D6A18C();
      }

      else
      {
        v114 = sub_226D6A19C();
      }

      v115 = v114;
      v116 = *v155;
      (*v155)(v157, v8);
      result = (v116)(v18, v8);
      if (v115)
      {
        a4 = v157;
        v18 = v153;
        goto LABEL_102;
      }

      if (!v151)
      {
        goto LABEL_164;
      }

      goto LABEL_115;
    }

    v122 = *v155;
    (*v155)(v157, v8);
    (v122)(v18, v8);
    a4 = v157;
LABEL_102:
    v110 = v147 + v139;
    v111 = v145 - 1;
    v112 = &v144[v139];
    ++v149;
    v24 = v143;
    if (v149 != v143)
    {
      goto LABEL_103;
    }

    v5 = v134;
    v31 = v137;
    a3 = v138;
    if (v143 < v137)
    {
      goto LABEL_158;
    }

LABEL_50:
    result = swift_isUniquelyReferenced_nonNull_native();
    v143 = v24;
    if (result)
    {
      v32 = v141;
    }

    else
    {
      result = sub_226BBB0C4(0, *(v141 + 2) + 1, 1, v141);
      v32 = result;
    }

    a4 = *(v32 + 2);
    v61 = *(v32 + 3);
    v24 = a4 + 1;
    if (a4 >= v61 >> 1)
    {
      result = sub_226BBB0C4((v61 > 1), a4 + 1, 1, v32);
      v32 = result;
    }

    *(v32 + 2) = v24;
    v62 = &v32[16 * a4];
    v63 = v143;
    *(v62 + 4) = v31;
    *(v62 + 5) = v63;
    v151 = *v136;
    if (!v151)
    {
      goto LABEL_168;
    }

    if (a4)
    {
      while (1)
      {
        v64 = v24 - 1;
        if (v24 >= 4)
        {
          break;
        }

        if (v24 == 3)
        {
          v65 = *(v32 + 4);
          v66 = *(v32 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_69:
          if (v68)
          {
            goto LABEL_147;
          }

          v81 = &v32[16 * v24];
          v83 = *v81;
          v82 = *(v81 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_150;
          }

          v87 = &v32[16 * v64 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_153;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_154;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v64 = v24 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v91 = &v32[16 * v24];
        v93 = *v91;
        v92 = *(v91 + 1);
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_83:
        if (v86)
        {
          goto LABEL_149;
        }

        v94 = &v32[16 * v64];
        v96 = *(v94 + 4);
        v95 = *(v94 + 5);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_152;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_90:
        a4 = v64 - 1;
        if (v64 - 1 >= v24)
        {
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }

        v102 = *a3;
        if (!*a3)
        {
          goto LABEL_165;
        }

        v103 = a3;
        a3 = v32;
        v24 = *&v32[16 * a4 + 32];
        v104 = *&v32[16 * v64 + 40];
        sub_226BCD7CC(&v102[*(v146 + 72) * v24], &v102[*(v146 + 72) * *&v32[16 * v64 + 32]], &v102[*(v146 + 72) * v104], v151);
        if (v5)
        {
        }

        if (v104 < v24)
        {
          goto LABEL_143;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v105 = a3;
        }

        else
        {
          v105 = sub_226C69374(a3);
        }

        if (a4 >= *(v105 + 2))
        {
          goto LABEL_144;
        }

        a3 = v103;
        v106 = &v105[16 * a4];
        *(v106 + 4) = v24;
        *(v106 + 5) = v104;
        v158 = v105;
        result = sub_226C692E8(v64);
        v32 = v158;
        v24 = *(v158 + 16);
        if (v24 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = &v32[16 * v24 + 32];
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_145;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_146;
      }

      v76 = &v32[16 * v24];
      v78 = *v76;
      v77 = *(v76 + 1);
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_148;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_151;
      }

      if (v80 >= v72)
      {
        v98 = &v32[16 * v64 + 32];
        v100 = *v98;
        v99 = *(v98 + 1);
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_155;
        }

        if (v67 < v101)
        {
          v64 = v24 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v30 = *(a3 + 1);
    v21 = v142;
    v31 = v143;
    a4 = v135;
    v24 = v148;
    if (v143 >= v30)
    {
      goto LABEL_127;
    }
  }

  v120 = a4;
  v121 = *v155;
  (*v155)(v120, v8);
  result = (v121)(v18, v8);
  if (v151)
  {
LABEL_115:
    v117 = *v154;
    v118 = v152;
    (*v154)(v152, v112, v8);
    swift_arrayInitWithTakeFrontToBack();
    v117(v110, v118, v8);
    v110 += v150;
    v112 += v150;
    v119 = __CFADD__(v111++, 1);
    a4 = v157;
    v18 = v153;
    if (v119)
    {
      goto LABEL_102;
    }

    goto LABEL_104;
  }

LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
  return result;
}

uint64_t sub_226BCD7CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = a4;
  v7 = sub_226D6A1EC();
  v62 = *(v7 - 8);
  v8 = *(v62 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v64 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v54 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v54 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = &v54 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_90;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_91;
  }

  v23 = (a2 - a1) / v21;
  v67 = a1;
  v24 = v58;
  v66 = v58;
  v63 = v21;
  if (v23 >= v22 / v21)
  {
    v27 = v22 / v21 * v21;
    if (v58 < a2 || a2 + v27 <= v58)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v58 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = v24 + v27;
    if (v27 >= 1)
    {
      v42 = -v63;
      v59 = (v62 + 16);
      v57 = (v62 + 8);
      v43 = v24 + v27;
      v63 = -v63;
      do
      {
        v55 = v41;
        v44 = a2;
        v45 = a2 + v42;
        v60 = v44;
        v61 = v45;
        while (1)
        {
          if (v44 <= a1)
          {
            v67 = v44;
            v65 = v55;
            goto LABEL_88;
          }

          v47 = a3;
          v56 = v41;
          v48 = *v59;
          v62 = v43 + v42;
          (v48)(v13);
          (v48)(v64, v45, v7);
          if ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C() & 1) != 0 || (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0)
          {
            if ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C() & 1) != 0 || (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0)
            {
              v49 = sub_226D6A18C();
              v50 = ((v49 ^ sub_226D6A18C()) & 1) != 0 ? sub_226D6A18C() : sub_226D6A19C();
              v51 = v50 ^ 1;
            }

            else
            {
              v51 = 0;
            }
          }

          else
          {
            v51 = 1;
          }

          a3 = v47 + v63;
          v52 = *v57;
          (*v57)(v64, v7);
          v52(v13, v7);
          if (v51)
          {
            break;
          }

          v45 = v61;
          v53 = v62;
          v41 = v62;
          if (v47 < v43 || a3 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v47 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v43 = v41;
          v46 = v53 > v58;
          v42 = v63;
          v44 = v60;
          if (!v46)
          {
            a2 = v60;
            goto LABEL_87;
          }
        }

        a2 = v61;
        if (v47 < v60 || a3 >= v60)
        {
          swift_arrayInitWithTakeFrontToBack();
          v41 = v56;
          v42 = v63;
        }

        else
        {
          v41 = v56;
          v42 = v63;
          if (v47 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v43 > v58);
    }

LABEL_87:
    v67 = a2;
    v65 = v41;
  }

  else
  {
    v25 = v23 * v21;
    v26 = v58;
    if (v58 < a1 || a1 + v25 <= v58)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v58 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v61 = v24 + v25;
    v65 = v24 + v25;
    if (v25 >= 1 && a2 < a3)
    {
      v29 = *(v62 + 16);
      v62 += 16;
      v59 = (v62 - 8);
      v60 = v29;
      v64 = v16;
      do
      {
        v30 = v60;
        v60(v19, a2, v7);
        v30(v16, v26, v7);
        if ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C() & 1) != 0 || (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0)
        {
          if (sub_226D6A18C() & 1) == 0 && (sub_226D6A19C() & 1) == 0 && ((sub_226D6A18C() & 1) != 0 || (sub_226D6A19C()))
          {
            v40 = *v59;
            (*v59)(v16, v7);
            v40(v19, v7);
            v38 = v63;
LABEL_42:
            if (a1 < v26 || a1 >= v26 + v38)
            {
              swift_arrayInitWithTakeFrontToBack();
              v16 = v64;
            }

            else
            {
              v16 = v64;
              if (a1 != v26)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v66 = v26 + v38;
            v26 += v38;
            goto LABEL_48;
          }

          v31 = a2;
          v32 = a3;
          v33 = v26;
          v34 = sub_226D6A18C();
          if ((v34 ^ sub_226D6A18C()))
          {
            v35 = sub_226D6A18C();
          }

          else
          {
            v35 = sub_226D6A19C();
          }

          v36 = v35;
          v37 = *v59;
          (*v59)(v64, v7);
          v37(v19, v7);
          v26 = v33;
          a3 = v32;
          a2 = v31;
          v38 = v63;
          if (v36)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v39 = *v59;
          (*v59)(v16, v7);
          v39(v19, v7);
          v38 = v63;
        }

        if (a1 < a2 || a1 >= a2 + v38)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 += v38;
          v16 = v64;
        }

        else
        {
          v16 = v64;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v38;
        }

LABEL_48:
        a1 += v38;
        v67 = a1;
      }

      while (v26 < v61 && a2 < a3);
    }
  }

LABEL_88:
  sub_226C69388(&v67, &v66, &v65);
  return 1;
}

uint64_t sub_226BCDF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7090, &unk_226D75E10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23[-1] - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7098, &qword_226D740D8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v23[-1] - v15);
  v23[3] = a3;
  v23[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  sub_226AE532C(v23, a2 + 16);
  v18 = sub_226D6A1FC();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  *v16 = 0;
  v19 = *(v13 + 36);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A70A0, &qword_226D75ED0);
  bzero(v16 + v19, *(*(v20 - 8) + 64));
  sub_226B6AFA4(v11, v16 + v19);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  memcpy((a2 + OBJC_IVAR____TtC13FinanceDaemon35ExtractedOrderConfigurationProvider_cachedAllowList), v16, v14);
  return a2;
}

uint64_t sub_226BCE0F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7090, &unk_226D75E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ExtractedOrderConfigurationProvider()
{
  result = qword_2810601E8;
  if (!qword_2810601E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226BCE1B4()
{
  sub_226BCE27C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_226BCE27C()
{
  if (!qword_28105F730[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A7090, &unk_226D75E10);
    v0 = sub_226D6D7AC();
    if (!v1)
    {
      atomic_store(v0, qword_28105F730);
    }
  }
}

uint64_t sub_226BCE2E0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t NotificationAttachmentStore.__allocating_init(notificationAttachmentDirectory:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  NotificationAttachmentStore.init(notificationAttachmentDirectory:)(a1);
  return v5;
}

uint64_t NotificationAttachmentStoreError.hashValue.getter()
{
  sub_226D6F2FC();
  MEMORY[0x22AA8B3B0](0);
  return sub_226D6F35C();
}

uint64_t NotificationAttachmentStore.init(notificationAttachmentDirectory:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = sub_226D6D1AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  sub_226B60178(a1, v6);
  v12 = *(v8 + 48);
  if (v12(v6, 1, v7) == 1)
  {
    type metadata accessor for NotificationAttachmentStore();
    sub_226BCE684();
    sub_226B601E8(a1);
    if (v12(v6, 1, v7) != 1)
    {
      sub_226B601E8(v6);
    }
  }

  else
  {
    sub_226B601E8(a1);
    (*(v8 + 32))(v11, v6, v7);
  }

  (*(v8 + 32))(v1 + OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory, v11, v7);
  return v1;
}

uint64_t type metadata accessor for NotificationAttachmentStore()
{
  result = qword_27D7A7A58;
  if (!qword_27D7A7A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_226BCE684()
{
  v0 = sub_226D6D1AC();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v21 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v21 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v21 - v12;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v15 = result;
    v16 = sub_226D6E39C();
    v18 = v17;

    v21[0] = v16;
    v21[1] = v18;
    MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
    sub_226D6D0BC();

    v19 = v1[4];
    v19(v8, v5, v0);
    sub_226D6D0FC();
    v20 = v1[1];
    v20(v8, v0);
    v19(v13, v11, v0);
    sub_226D6D0FC();
    return (v20)(v13, v0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226BCE8B8(uint64_t a1)
{
  v2 = sub_226D6D1AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_226D6D14C();
  v8(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_226BCE99C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v27 = a1;
  v28 = a2;
  v25 = a5;
  v8 = sub_226D6D1AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v22 - v15;
  MEMORY[0x28223BE20](v14);
  v24 = &v22 - v17;
  v29 = v5;
  v26 = v9;
  if (a4)
  {
    strcpy(v30, "fulfillment_");
    BYTE5(v30[1]) = 0;
    HIWORD(v30[1]) = -5120;
    MEMORY[0x22AA8A510](a3, a4);
    v18 = v30[1];
    v23 = v30[0];
    sub_226D6B46C();
    (*(v9 + 16))(v13, v5 + OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory, v8);
    sub_226D6D0EC();

    sub_226D6B44C();
    sub_226D6D0FC();

    v19 = *(v9 + 8);
    v19(v13, v8);
    v30[0] = v23;
    v30[1] = v18;

    MEMORY[0x22AA8A510](1735290926, 0xE400000000000000);
    v20 = v24;
    sub_226D6D0FC();

    v19(v16, v8);
  }

  else
  {
    sub_226D6B46C();
    (*(v9 + 16))(v13, v5 + OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory, v8);
    sub_226D6D0EC();

    sub_226D6B44C();
    sub_226D6D0FC();

    v19 = *(v9 + 8);
    v19(v13, v8);
    v30[0] = 0x6567616D69;
    v30[1] = 0xE500000000000000;
    MEMORY[0x22AA8A510](1735290926, 0xE400000000000000);
    v20 = v24;
    sub_226D6D0FC();

    v19(v16, v8);
  }

  sub_226BCEF88(v27, v28, v20, v25);
  return (v19)(v20, v8);
}

uint64_t sub_226BCED20@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v25 = a2;
  v23 = a5;
  v24 = a1;
  v7 = sub_226D6D1AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v21 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  v26 = 0x5F6E7275746572;
  v27 = 0xE700000000000000;
  MEMORY[0x22AA8A510](a3, a4);
  v18 = v27;
  v22 = v26;
  sub_226D6B46C();
  (*(v8 + 16))(v12, v28 + OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory, v7);
  sub_226D6D0EC();

  sub_226D6B44C();
  sub_226D6D0FC();

  v19 = *(v8 + 8);
  v19(v12, v7);
  v26 = v22;
  v27 = v18;

  MEMORY[0x22AA8A510](1735290926, 0xE400000000000000);
  sub_226D6D0FC();

  v19(v15, v7);

  sub_226BCEF88(v24, v25, v17, v23);
  return (v19)(v17, v7);
}

void sub_226BCEF88(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v26 = a4;
  v31[1] = *MEMORY[0x277D85DE8];
  v7 = sub_226D6D1AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultManager];
  v31[0] = 0;
  v29 = *(v4 + 16);
  sub_226D6D12C();
  v13 = sub_226D6D0DC();
  v24 = v8;
  v25 = v7;
  (*(v8 + 8))(v11, v7);
  v27 = a3;
  v14 = sub_226D6D0DC();
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = a1;
  v16 = v28;
  v15[4] = v28;
  v15[5] = v31;
  v17 = swift_allocObject();
  v17[2] = sub_226BD0168;
  v17[3] = v15;
  aBlock[4] = sub_226BD0174;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226BCF3F8;
  aBlock[3] = &block_descriptor_42;
  v18 = _Block_copy(aBlock);
  v19 = v12;

  sub_226B11B44(a1, v16);

  aBlock[0] = 0;
  v20 = v29;
  [v29 coordinateWritingItemAtURL:v13 options:0 writingItemAtURL:v14 options:8 error:aBlock byAccessor:v18];
  _Block_release(v18);

  v21 = aBlock[0];
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  if (v21)
  {
  }

  else if (!v31[0])
  {

    (*(v24 + 16))(v26, v27, v25);

    goto LABEL_6;
  }

  sub_226BD0114();
  swift_allocError();
  swift_willThrow();

LABEL_6:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_226BCF2F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void **a6)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = sub_226D6D0DC();
  v14[0] = 0;
  LODWORD(a3) = [a3 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:v14];

  if (a3)
  {
    v9 = v14[0];
    sub_226D6D22C();
  }

  else
  {
    v10 = v14[0];
    v11 = sub_226D6D04C();

    swift_willThrow();
    v12 = *a6;
    *a6 = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226BCF3F8(uint64_t a1)
{
  v2 = sub_226D6D1AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  sub_226D6D14C();
  sub_226D6D14C();
  v11(v9, v7);
  v12 = *(v3 + 8);
  v12(v7, v2);
  return (v12)(v9, v2);
}

void sub_226BCF534()
{
  v44[1] = *MEMORY[0x277D85DE8];
  v0 = sub_226D6D1AC();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v37 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v31 - v6;
  MEMORY[0x28223BE20](v5);
  v35 = v31 - v8;
  sub_226D6B46C();
  v34 = OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory;
  v9 = v1[2];
  (v9)(v7, v36 + OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory, v0);
  sub_226D6D0EC();

  sub_226D6B44C();
  sub_226D6D0FC();

  v32 = v1[1];
  v33 = v1 + 1;
  v32(v7, v0);
  sub_226D6B46C();
  v10 = v36;
  v34 = v0;
  v9();
  sub_226D6D0EC();

  v11 = [objc_opt_self() defaultManager];
  v44[0] = 0;
  v12 = *(v10 + 16);
  v13 = sub_226D6D0DC();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v44;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_226BD00C4;
  *(v15 + 24) = v14;
  v42 = sub_226BD00CC;
  v43 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_226BCE8B8;
  v41 = &block_descriptor_9;
  v16 = _Block_copy(&aBlock);
  v17 = v11;

  aBlock = 0;
  [v12 coordinateWritingItemAtURL:v13 options:1 error:&aBlock byAccessor:v16];
  _Block_release(v16);

  v18 = aBlock;
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  v31[1] = v14;
  v19 = *(v10 + 16);
  v20 = sub_226D6D0DC();
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  *(v21 + 24) = v44;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_226BD010C;
  *(v22 + 24) = v21;
  v42 = sub_226BD01AC;
  v43 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_226BCE8B8;
  v41 = &block_descriptor_33_0;
  v23 = _Block_copy(&aBlock);
  v24 = v17;

  aBlock = v18;
  [v19 &selRef_brandObject];
  _Block_release(v23);

  v25 = aBlock;
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    goto LABEL_10;
  }

  if (v25)
  {
  }

  else if (!v44[0])
  {

    v29 = v34;
    v30 = v32;
    v32(v37, v34);
    v30(v35, v29);

    goto LABEL_7;
  }

  sub_226BD0114();
  swift_allocError();
  swift_willThrow();

  v26 = v34;
  v27 = v32;
  v32(v37, v34);
  v27(v35, v26);

LABEL_7:
  v28 = *MEMORY[0x277D85DE8];
}

void sub_226BCFB2C(uint64_t a1, void *a2, void **a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D0DC();
  v14[0] = 0;
  LODWORD(a2) = [a2 removeItemAtURL:v5 error:v14];

  v6 = v14[0];
  if (a2)
  {
    v7 = *MEMORY[0x277D85DE8];

    v8 = v6;
  }

  else
  {
    v9 = v14[0];
    v10 = sub_226D6D04C();

    swift_willThrow();
    sub_226BD0114();
    v11 = swift_allocError();

    v12 = *a3;
    *a3 = v11;

    v13 = *MEMORY[0x277D85DE8];
  }
}

void sub_226BCFC58(uint64_t a1, void *a2, void **a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D0DC();
  v21[0] = 0;
  v6 = [a2 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:4 error:v21];

  v7 = v21[0];
  if (!v6)
  {
    goto LABEL_7;
  }

  v20 = v21[0];
  sub_226D6D1AC();
  v8 = sub_226D6E5EC();
  v9 = v20;

  v10 = *(v8 + 16);

  if (v10)
  {
LABEL_8:
    v19 = *MEMORY[0x277D85DE8];
    return;
  }

  v11 = sub_226D6D0DC();
  v21[0] = 0;
  v12 = [a2 removeItemAtURL:v11 error:v21];

  v7 = v21[0];
  if (!v12)
  {
LABEL_7:
    v15 = v7;
    v16 = sub_226D6D04C();

    swift_willThrow();
    sub_226BD0114();
    v17 = swift_allocError();

    v18 = *a3;
    *a3 = v17;

    goto LABEL_8;
  }

  v13 = *MEMORY[0x277D85DE8];

  v14 = v7;
}

uint64_t NotificationAttachmentStore.deinit()
{
  v1 = OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory;
  v2 = sub_226D6D1AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NotificationAttachmentStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory;
  v2 = sub_226D6D1AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

unint64_t sub_226BCFF1C()
{
  result = qword_27D7A7A50;
  if (!qword_27D7A7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7A50);
  }

  return result;
}

uint64_t sub_226BCFF88()
{
  result = sub_226D6D1AC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_226BD00CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_226BD0114()
{
  result = qword_27D7A7A68;
  if (!qword_27D7A7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7A68);
  }

  return result;
}

uint64_t sub_226BD0174()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_226BD01B0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (!v4)
  {
    return !v5;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = a2[1];
  v7 = a1[1];
  if ((sub_226B2E674(v4, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_226B2E6D0(v7, v6);
}

uint64_t sub_226BD0228(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v3 = sub_226D6C38C();
  v82 = *(v3 - 8);
  v4 = *(v82 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v81 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v77 - v7;
  v9 = sub_226D6B49C();
  v78 = *(v9 - 8);
  v79 = v9;
  v10 = *(v78 + 64);
  MEMORY[0x28223BE20](v9);
  v77 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D675EC();
  v13 = *(v12 - 8);
  v85 = v12;
  v86 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v84 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7798, &unk_226D75570);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v87 = &v77 - v21;
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult();
  v23 = *(*(updated - 8) + 64);
  v24 = MEMORY[0x28223BE20](updated);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = (&v77 - v28);
  MEMORY[0x28223BE20](v27);
  v31 = (&v77 - v30);
  sub_226BB8488(a1, &v77 - v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v33 = *v31;
  if (EnumCaseMultiPayload <= 1)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
    sub_226AC47B0(v31 + *(v34 + 48), &qword_27D7A7798, &unk_226D75570);
  }

  sub_226BB8488(a1, v29);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_226BB84EC(v29);
    v36 = v85;
    (*(v86 + 56))(v87, 1, 1, v85);
  }

  else
  {

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
    sub_226BBEFE8(v29 + *(v35 + 48), v87);
    v36 = v85;
  }

  sub_226BB8488(a1, v26);
  v37 = swift_getEnumCaseMultiPayload();
  v38 = *v26;
  if (v37 > 1)
  {
    v41 = v26[8];
    v42 = v26[9];
  }

  else
  {

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
    v40 = &v26[*(v39 + 64)];
    v41 = *v40;
    v42 = v40[1];
    sub_226AC47B0(&v26[*(v39 + 48)], &qword_27D7A7798, &unk_226D75570);
  }

  v43 = [v33 ecommerceOrderContent];
  v44 = v86;
  if (!v43)
  {
    sub_226AC47B0(v87, &qword_27D7A7798, &unk_226D75570);

    return 0;
  }

  v45 = v43;
  v83 = v33;
  v46 = v8;
  v47 = v3;
  v48 = v87;
  sub_226AC40E8(v87, v20, &qword_27D7A7798, &unk_226D75570);
  if ((*(v44 + 48))(v20, 1, v36) == 1)
  {
    sub_226AC47B0(v48, &qword_27D7A7798, &unk_226D75570);

    sub_226AC47B0(v20, &qword_27D7A7798, &unk_226D75570);
    return 0;
  }

  (*(v44 + 32))(v84, v20, v36);
  v49 = MEMORY[0x277D84F90];
  v90 = MEMORY[0x277D84F90];
  if (v41)
  {
    v50 = sub_226BD0BA0(v83, v45, v84, v80);
    sub_226CEE0C8(v50);
  }

  v51 = v47;
  v52 = v46;
  v53 = v83;
  if (v42)
  {
    v54 = v77;
    sub_226D6740C();
    v55 = sub_226BD1218(v54);
    (*(v78 + 8))(v54, v79);
    if (v55)
    {
      v56 = v55;
      MEMORY[0x22AA8A610]();
      if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v74 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_226D6E61C();
      }

      sub_226D6E65C();

      v53 = v83;
    }
  }

  v80 = v90;
  if (!(v90 >> 62))
  {
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

LABEL_37:

    (*(v44 + 8))(v84, v85);
    sub_226AC47B0(v87, &qword_27D7A7798, &unk_226D75570);

    return 0;
  }

  if (!sub_226D6EDFC())
  {
    goto LABEL_37;
  }

LABEL_22:
  sub_226D6B23C();
  v58 = v81;
  v57 = v82;
  (*(v82 + 16))(v81, v52, v51);
  v59 = (*(v57 + 88))(v58, v51);
  if (v59 == *MEMORY[0x277CC8250])
  {

    v60 = v85;
    v61 = v87;
LABEL_44:
    (*(v82 + 8))(v52, v51);
    (*(v44 + 8))(v84, v60);
    sub_226AC47B0(v61, &qword_27D7A7798, &unk_226D75570);
    return v80;
  }

  v62 = v83;
  if (v59 != *MEMORY[0x277CC8248])
  {
    goto LABEL_46;
  }

  v63 = sub_226D6B27C();
  v64 = v63;
  if (v63 >> 62)
  {
    v65 = sub_226D6EDFC();
    if (v65)
    {
      goto LABEL_27;
    }

LABEL_40:

LABEL_41:
    v75 = [v45 associatedApplicationIdentifiers];
    v44 = v86;
    if (v75)
    {
      v76 = v75;
      sub_226D6E5EC();

      v45 = v62;
      v62 = v76;
    }

    v60 = v85;
    v61 = v87;

    goto LABEL_44;
  }

  v65 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v65)
  {
    goto LABEL_40;
  }

LABEL_27:
  v79 = v52;
  v81 = v51;
  v88 = v49;
  sub_226AE23A4(0, v65 & ~(v65 >> 63), 0);
  if ((v65 & 0x8000000000000000) == 0)
  {
    v66 = 0;
    v67 = v88;
    do
    {
      if ((v64 & 0xC000000000000001) != 0)
      {
        v68 = MEMORY[0x22AA8AFD0](v66, v64);
      }

      else
      {
        v68 = *(v64 + 8 * v66 + 32);
      }

      v69 = v68;
      v70 = [v68 storeIdentifier];

      v88 = v67;
      v72 = *(v67 + 16);
      v71 = *(v67 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_226AE23A4((v71 > 1), v72 + 1, 1);
        v67 = v88;
      }

      ++v66;
      *(v67 + 16) = v72 + 1;
      *(v67 + 8 * v72 + 32) = v70;
    }

    while (v65 != v66);

    v51 = v81;
    v52 = v79;
    v62 = v83;
    goto LABEL_41;
  }

  __break(1u);
LABEL_46:
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD00000000000002DLL, 0x8000000226D82610);
  sub_226D6EFBC();
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226BD0BA0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v59 = a4;
  v60 = sub_226D6D52C();
  v58 = *(v60 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6913C();
  v57 = *(v11 - 8);
  v12 = *(v57 + 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v4[38];
  __swift_project_boxed_opaque_existential_1(v4 + 34, v4[37]);
  v16 = *MEMORY[0x277D38658];
  sub_226D6E39C();
  v17 = *(v15 + 8);
  v18 = sub_226D69A3C();

  if (v18)
  {
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v19 = sub_226D6E07C();
    __swift_project_value_buffer(v19, qword_28105F5C0);
    v20 = sub_226D6E05C();
    v21 = sub_226D6E9AC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Notifications disabled for order tracking, ignoring";
LABEL_23:
      _os_log_impl(&dword_226AB4000, v20, v21, v23, v22, 2u);
      MEMORY[0x22AA8BEE0](v22, -1, -1);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (![a1 effectiveNotificationsEnabled])
  {
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v50 = sub_226D6E07C();
    __swift_project_value_buffer(v50, qword_28105F5C0);
    v20 = sub_226D6E05C();
    v21 = sub_226D6E9AC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Notifications disabled for this order, ignoring";
      goto LABEL_23;
    }

LABEL_24:

    return MEMORY[0x277D84F90];
  }

  v24 = sub_226BD40DC(a1, a2, a3, v59);
  if (sub_226D6755C())
  {
    if (v24 >> 62)
    {
      goto LABEL_30;
    }

    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:

      v56 = a2;
      v25 = [a2 merchant];
      v26 = [v25 displayName];

      v27 = sub_226D67C2C();
      v52 = v28;
      v53 = v27;

      v29 = *MEMORY[0x277CC77B0];
      v30 = v57;
      v31 = *(v57 + 13);
      v31(v14, v29, v11);
      v32 = sub_226D6811C();
      v54 = v33;
      v55 = v32;
      v34 = *(v30 + 1);
      a2 = (v30 + 8);
      v34(v14, v11);
      v57 = "ORDER_NOTIFICATION_TITLE_OPEN";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_226D70840;
      *(v35 + 56) = MEMORY[0x277D837D0];
      *(v35 + 64) = sub_226B16404();
      v36 = v52;
      *(v35 + 32) = v53;
      *(v35 + 40) = v36;
      v31(v14, v29, v11);
      v37 = sub_226D6812C();
      v39 = v38;

      v34(v14, v11);
      v40 = sub_226BD256C(0xF000000000000007, v55, v54, v37, v39, a1, v56, v59);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_226D71F20;
      *(v24 + 32) = v40;
      goto LABEL_11;
    }
  }

  while (1)
  {
LABEL_11:
    if (v24 >> 62)
    {
      v41 = sub_226D6EDFC();
      if (!v41)
      {
LABEL_28:

        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v41 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v41)
      {
        goto LABEL_28;
      }
    }

    v61 = MEMORY[0x277D84F90];
    sub_226D6EF8C();
    if ((v41 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_30:
    if (!sub_226D6EDFC())
    {
      goto LABEL_10;
    }
  }

  v42 = objc_opt_self();
  v43 = 0;
  v44 = (v58 + 8);
  do
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x22AA8AFD0](v43, v24);
    }

    else
    {
      v45 = *(v24 + 8 * v43 + 32);
    }

    v46 = v45;
    ++v43;
    sub_226D6D51C();
    sub_226D6D4CC();
    (*v44)(v10, v60);
    v47 = sub_226D6E36C();

    v48 = [v42 requestWithIdentifier:v47 content:v46 trigger:0];

    sub_226D6EF6C();
    v49 = *(v61 + 16);
    sub_226D6EF9C();
    sub_226D6EFAC();
    sub_226D6EF7C();
  }

  while (v41 != v43);

  return v61;
}

id sub_226BD1218(uint64_t a1)
{
  v2 = v1;
  v46 = a1;
  v3 = sub_226D6D1AC();
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v45 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6913C();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6D52C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[38];
  __swift_project_boxed_opaque_existential_1(v1 + 34, v1[37]);
  v16 = *MEMORY[0x277D38658];
  sub_226D6E39C();
  v17 = *(v15 + 8);
  v18 = sub_226D69A3C();

  if (v18)
  {
    return 0;
  }

  v42 = v3;
  v19 = v2[33];
  __swift_project_boxed_opaque_existential_1(v2 + 29, v2[32]);
  v21 = v2[39];
  v20 = v2[40];
  v22 = *(v19 + 8);
  if (sub_226D69A3C())
  {
    return 0;
  }

  v24 = v2[33];
  __swift_project_boxed_opaque_existential_1(v2 + 29, v2[32]);
  v49 = MEMORY[0x277D839B0];
  v48[0] = 1;
  v25 = *(v24 + 8);
  sub_226D69A2C();
  sub_226AC47B0(v48, &unk_27D7A8BB0, &unk_226D74340);
  sub_226D6D51C();
  v26 = sub_226D6D4CC();
  v41[0] = v27;
  v41[1] = v26;
  (*(v11 + 8))(v14, v10);
  v28 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v29 = *MEMORY[0x277CC77B0];
  v30 = v43;
  v31 = v44;
  v32 = *(v43 + 104);
  v32(v9, v29, v44);
  sub_226D6811C();
  v33 = *(v30 + 8);
  v33(v9, v31);
  v34 = sub_226D6E36C();

  [v28 setTitle_];

  v32(v9, v29, v31);
  sub_226D6811C();
  v33(v9, v31);
  v35 = sub_226D6E36C();

  [v28 setBody_];

  v36 = v45;
  sub_226D66D7C();
  v37 = sub_226D6D0DC();
  (*(v47 + 8))(v36, v42);
  [v28 setDefaultActionURL_];

  v38 = v28;
  v39 = sub_226D6E36C();

  v40 = [objc_opt_self() requestWithIdentifier:v39 content:v38 trigger:0];

  return v40;
}

id sub_226BD16C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = sub_226D6E36C();

  v7 = sub_226D6D0DC();
  if (a4)
  {
    v8 = sub_226D6E2AC();
  }

  else
  {
    v8 = 0;
  }

  v18[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() attachmentWithIdentifier:v6 URL:v7 options:v8 error:v18];

  v10 = v18[0];
  if (v9)
  {
    v11 = sub_226D6D1AC();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a3, v11);
  }

  else
  {
    v14 = v18[0];
    sub_226D6D04C();

    swift_willThrow();
    v15 = sub_226D6D1AC();
    (*(*(v15 - 8) + 8))(a3, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_226BD1880(unsigned __int8 a1, uint64_t a2)
{
  v37 = a2;
  v38 = sub_226D6D6CC();
  v36 = *(v38 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6D6DC();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6D4AC();
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A70, &qword_226D75FF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v33 - v19;
  v21 = sub_226D6CABC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 2u)
  {
    if (a1 < 2u)
    {
      return 0;
    }

    v28 = v24;
    sub_226AC40E8(v37, v20, &qword_27D7A7A70, &qword_226D75FF0);
    v29 = *(v22 + 48);
    v37 = v28;
    if (v29(v20, 1, v28) == 1)
    {
      sub_226AC47B0(v20, &qword_27D7A7A70, &qword_226D75FF0);
      return 2;
    }

    (*(v22 + 32))(v26, v20, v37);
    sub_226D6CAAC();
    sub_226D6D46C();
    sub_226D6D66C();
    v30 = v36;
    (*(v36 + 104))(v5, *MEMORY[0x277CC9968], v38);
    v31 = sub_226D6D69C();
    (*(v30 + 8))(v5, v38);
    (*(v35 + 8))(v9, v6);
    v32 = *(v34 + 8);
    v32(v14, v10);
    v32(v16, v10);
    (*(v22 + 8))(v26, v37);
    if (v31 != -1)
    {
      return 2;
    }

    return 1;
  }

  if (a1 != 4)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_226BD1CB4(unsigned __int8 a1, uint64_t a2)
{
  v41 = a2;
  v3 = sub_226D6D6CC();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D6DC();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6D4AC();
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A70, &qword_226D75FF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v36 - v20;
  v22 = sub_226D6CABC();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 7u)
  {
    if (((1 << a1) & 0xA4) != 0)
    {
      return 1;
    }

    if (((1 << a1) & 0x50) != 0)
    {
      return 2;
    }

    if (a1 == 3)
    {
      v36 = v3;
      v29 = v24;
      v30 = v25;
      sub_226AC40E8(v41, v21, &qword_27D7A7A70, &qword_226D75FF0);
      v37 = v30;
      v31 = *(v30 + 48);
      v41 = v29;
      if (v31(v21, 1, v29) == 1)
      {
        sub_226AC47B0(v21, &qword_27D7A7A70, &qword_226D75FF0);
      }

      else
      {
        (*(v37 + 32))(v27, v21, v41);
        sub_226D6CAAC();
        sub_226D6D46C();
        sub_226D6D66C();
        v32 = v40;
        v33 = v36;
        (*(v40 + 104))(v6, *MEMORY[0x277CC9968], v36);
        v34 = sub_226D6D69C();
        (*(v32 + 8))(v6, v33);
        (*(v39 + 8))(v10, v7);
        v35 = *(v38 + 8);
        v35(v15, v11);
        v35(v17, v11);
        (*(v37 + 8))(v27, v41);
        if (v34 == -1)
        {
          return 1;
        }
      }

      return 2;
    }
  }

  return 0;
}

void *sub_226BD2110(uint64_t a1, void *a2)
{
  v5 = sub_226D6B22C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v9, a1, v5);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x277CC7E60])
  {
    (*(v6 + 96))(v9, v5);
    v11 = *v9;
    v12 = v9[1];
    v13 = v9[2];
    v14 = objc_opt_self();
    v15 = [v14 preferredLanguages];
    sub_226D6E5EC();

    v16 = sub_226D6B28C();
    if (v2)
    {

      return a2;
    }

    v21 = v16;

    if (v21 >> 62)
    {
      if (sub_226D6EDFC())
      {
        goto LABEL_12;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_12:

      goto LABEL_13;
    }

    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_226D70840;
      *(v29 + 32) = v12;
      *(v29 + 40) = v13;
      v30 = [v14 preferredLanguages];
      sub_226D6E5EC();

      v21 = sub_226D6B28C();

      goto LABEL_13;
    }
  }

  else
  {
    if (v10 == *MEMORY[0x277CC7E68])
    {
      (*(v6 + 96))(v9, v5);
      v17 = *v9;
      v18 = v9[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_226D70840;
      *(v19 + 32) = v17;
      *(v19 + 40) = v18;
      v20 = [objc_opt_self() preferredLanguages];
      sub_226D6E5EC();

      v21 = sub_226D6B28C();

      if (v2)
      {
        return a2;
      }

      goto LABEL_13;
    }

    if (v10 != *MEMORY[0x277CC7E58])
    {
      (*(v6 + 8))(v9, v5);
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_13:
  if (v21 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v23 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x22AA8AFD0](v23, v21);
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      a2 = v24;
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      sub_226D6820C();
      if (v26 >= 200.0)
      {
        sub_226D6820C();
        if (v27 >= 200.0)
        {

          return a2;
        }
      }

      ++v23;
      if (v25 == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:

  return 0;
}

void *sub_226BD256C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t), uint64_t a6, void *a7, uint64_t a8)
{
  v104 = a8;
  v108 = a5;
  v109 = a7;
  v9 = sub_226D6D7DC();
  v99 = *(v9 - 8);
  v100 = v9;
  v10 = *(v99 + 64);
  MEMORY[0x28223BE20](v9);
  v98 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D6B22C();
  v111 = *(v12 - 8);
  v112 = v12;
  v13 = *(v111 + 64);
  MEMORY[0x28223BE20](v12);
  v114 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_226D6B49C();
  v110 = *(v113 - 8);
  v15 = v110[8];
  v16 = MEMORY[0x28223BE20](v113);
  v106 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v93 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v93 - v21;
  v23 = sub_226D6D1AC();
  v115 = *(v23 - 8);
  v116 = v23;
  v24 = *(v115 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v97 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v101 = &v93 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v102 = &v93 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v103 = &v93 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v105 = &v93 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v93 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A70, &qword_226D75FF0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = &v93 - v39;
  v41 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v42 = sub_226D6E36C();
  [v41 setTitle_];

  v43 = sub_226D6E36C();
  [v41 setBody_];

  v107 = a1;
  v108 = (a1 & 0xF000000000000007);
  if ((a1 & 0xF000000000000007) == 0xF000000000000007)
  {
    [v41 setInterruptionLevel_];
    sub_226D6740C();
    v44 = v41;
    v45 = v115;
  }

  else
  {
    if (a1 < 0)
    {
      v49 = (a1 & 0x7FFFFFFFFFFFFFFFLL);
      v50 = sub_226D6B52C();
      sub_226D6B51C();
      v48 = sub_226BD1880(v50, v40);
    }

    else
    {
      v46 = a1;
      v47 = sub_226D6BA3C();
      sub_226D6BA2C();
      v48 = sub_226BD1CB4(v47, v40);
    }

    v51 = v48;
    v45 = v115;
    sub_226AC47B0(v40, &qword_27D7A7A70, &qword_226D75FF0);
    sub_226BD4CD8(a1);
    [v41 setInterruptionLevel_];
    sub_226D6740C();
    sub_226D6A27C();
    v44 = v41;
  }

  sub_226D66D7C();

  v52 = v110[1];
  v53 = v22;
  v54 = v113;
  v52(v53, v113);
  v55 = sub_226D6D0DC();
  v56 = *(v45 + 8);
  v56(v36, v116);
  [v44 setDefaultActionURL_];

  sub_226D6740C();
  sub_226D6B47C();
  v52(v20, v54);
  v57 = sub_226D6E36C();

  v110 = v44;
  [v44 setThreadIdentifier_];

  v58 = v114;
  v59 = v109;
  sub_226D6B24C();
  v109 = sub_226BD2110(v58, v59);
  v95 = v52;
  v96 = v56;
  if (v109)
  {
    v93 = sub_226D6821C();
    v94 = v60;
    sub_226D6740C();
    if (v108 == 0xF000000000000007 || (v61 = sub_226D6A27C(), !v62))
    {
      sub_226D6B46C();
      v71 = v116;
      v72 = v101;
      v108 = *(v115 + 16);
      v108(v101, v104 + OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory, v116);
      sub_226D6D0EC();

      sub_226D6B44C();
      v73 = v102;
      sub_226D6D0FC();

      v74 = v96;
      v96(v72, v71);
      v117[0] = 0x6567616D69;
      v117[1] = 0xE500000000000000;
      MEMORY[0x22AA8A510](1735290926, 0xE400000000000000);
      v69 = v103;
      sub_226D6D0FC();

      v70 = v74;
      v74(v73, v71);
    }

    else
    {
      strcpy(v117, "fulfillment_");
      BYTE5(v117[1]) = 0;
      HIWORD(v117[1]) = -5120;
      MEMORY[0x22AA8A510](v61);
      v63 = v117[1];
      v107 = v117[0];
      sub_226D6B46C();
      v64 = v116;
      v65 = v101;
      v108 = *(v115 + 16);
      v108(v101, v104 + OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory, v116);
      sub_226D6D0EC();

      sub_226D6B44C();
      v66 = v102;
      sub_226D6D0FC();

      v67 = v65;
      v68 = v96;
      v96(v67, v64);
      v117[0] = v107;
      v117[1] = v63;

      MEMORY[0x22AA8A510](1735290926, 0xE400000000000000);
      v69 = v103;
      sub_226D6D0FC();

      v70 = v68;
      v68(v66, v116);
    }

    v75 = v93;
    v76 = v94;
    sub_226BCEF88(v93, v94, v69, v105);
    v77 = v113;
    v78 = v95;

    sub_226B11B98(v75, v76);
    v79 = v116;
    v70(v69, v116);
    v78(v106, v77);
    sub_226BD4C8C();
    v80 = v98;
    sub_226D6D7CC();
    v81 = sub_226D6D7BC();
    v83 = v82;
    v84 = v80;
    v85 = v105;
    (*(v99 + 8))(v84, v100);
    v86 = v97;
    v108(v97, v85, v79);
    v87 = sub_226BD16C4(v81, v83, v86, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_226D71F20;
    *(v88 + 32) = v87;
    v89 = v87;
    v90 = sub_226D6E5CC();

    v91 = v110;
    [v110 setAttachments_];

    v70(v85, v79);
    (*(v111 + 8))(v114, v112);
    return v91;
  }

  else
  {
    (*(v111 + 8))(v58, v112);
    return v110;
  }
}

id sub_226BD31B0(void *a1, void *a2, void *a3, uint64_t a4)
{
  v118 = a4;
  v134 = a1;
  v113 = sub_226D6D7DC();
  v112 = *(v113 - 8);
  v6 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6B22C();
  v122 = *(v8 - 8);
  v123 = v8;
  v9 = *(v122 + 64);
  MEMORY[0x28223BE20](v8);
  v126 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_226D6B49C();
  v129 = *(v124 - 8);
  v11 = *(v129 + 64);
  v12 = MEMORY[0x28223BE20](v124);
  v117 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v121 = &v108 - v14;
  v125 = sub_226D6D1AC();
  v128 = *(v125 - 8);
  v15 = v128[8];
  v16 = MEMORY[0x28223BE20](v125);
  v110 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v114 = &v108 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v115 = &v108 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v116 = &v108 - v23;
  MEMORY[0x28223BE20](v22);
  v127 = &v108 - v24;
  v25 = sub_226D6CA6C();
  v26 = *(v25 - 8);
  v136 = v25;
  v137 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v135 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_226D6D71C();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v133 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_226D6D6DC();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v132 = (&v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_226D6D5DC();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = sub_226D69B8C();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_226D6CB0C();
  v41 = *(v131 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v131);
  v44 = &v108 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_226D6CAFC();
  v45 = *(v130 - 1);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v130);
  v48 = &v108 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A80, &unk_226D75FF8);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v49 - 8);
  v53 = &v108 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v55 = &v108 - v54;
  v56 = a2;
  v57 = a3;
  v58 = v134;
  v134 = v56;
  v119 = v57;
  v120 = v58;
  sub_226D6CADC();
  sub_226D6D56C();
  sub_226D6D66C();
  sub_226D6D70C();
  sub_226D69B5C();
  v59 = v136;
  MEMORY[0x22AA88B70](v40);
  sub_226BD4CF0(&qword_27D7A7A88, MEMORY[0x277CC8570]);
  v60 = v131;
  sub_226D6CA2C();
  (*(v41 + 8))(v44, v60);
  (*(v45 + 8))(v48, v130);
  sub_226AC40E8(v55, v53, &qword_27D7A7A80, &unk_226D75FF8);
  if ((*(v137 + 48))(v53, 1, v59) == 1)
  {
    sub_226AC47B0(v55, &qword_27D7A7A80, &unk_226D75FF8);
    sub_226AC47B0(v53, &qword_27D7A7A80, &unk_226D75FF8);
    return 0;
  }

  else
  {
    v133 = v55;
    (*(v137 + 32))(v135, v53, v59);
    v61 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
    sub_226D6CA4C();
    v62 = sub_226D6E36C();

    [v61 setTitle_];

    sub_226D6CA5C();
    v63 = sub_226D6E36C();

    [v61 setBody_];

    v64 = v120;
    sub_226D6843C();
    [v61 setInterruptionLevel_];
    v65 = v121;
    sub_226D6740C();
    v66 = [v64 returnIdentifier];
    sub_226D6E39C();

    v67 = v127;
    sub_226D66D8C();

    v68 = v129 + 8;
    v69 = *(v129 + 8);
    v70 = v124;
    v69(v65, v124);
    v71 = sub_226D6D0DC();
    v72 = v128 + 1;
    v132 = v128[1];
    v132(v67, v125);
    [v61 setDefaultActionURL_];

    sub_226D6740C();
    sub_226D6B47C();
    v69(v65, v70);
    v73 = sub_226D6E36C();

    [v61 setThreadIdentifier_];

    v74 = v126;
    v75 = v119;
    sub_226D6B25C();
    v76 = sub_226BD2110(v74, v75);
    v131 = v72;
    v77 = v68;
    v78 = v127;
    v129 = v77;
    if (v76)
    {
      v121 = v69;
      v130 = v76;
      v109 = sub_226D6821C();
      v119 = v79;
      sub_226D6740C();
      v80 = [v64 returnIdentifier];
      v81 = sub_226D6E39C();
      v83 = v82;

      v138 = 0x5F6E7275746572;
      v139 = 0xE700000000000000;
      MEMORY[0x22AA8A510](v81, v83);

      v84 = v139;
      v134 = v138;
      sub_226D6B46C();
      v85 = v128[2];
      v86 = v114;
      v87 = v125;
      v128 += 2;
      v120 = v85;
      v85(v114, v118 + OBJC_IVAR____TtC13FinanceDaemon27NotificationAttachmentStore_notificationAttachmentDirectory, v125);
      sub_226D6D0EC();

      sub_226D6B44C();
      sub_226D6D0FC();

      v88 = v132;
      v132(v86, v87);
      v138 = v134;
      v139 = v84;

      MEMORY[0x22AA8A510](1735290926, 0xE400000000000000);
      v89 = v115;
      sub_226D6D0FC();
      v90 = v87;

      v91 = v78;
      v92 = v88;
      v93 = v109;
      v92(v91, v87);
      v94 = v119;

      v95 = v116;
      sub_226BCEF88(v93, v94, v89, v116);
      sub_226B11B98(v93, v94);
      v92(v89, v90);
      (v121)(v117, v124);
      sub_226BD4C8C();
      v96 = v111;
      sub_226D6D7CC();
      v97 = sub_226D6D7BC();
      v99 = v98;
      (*(v112 + 8))(v96, v113);
      v100 = v110;
      (v120)(v110, v95, v90);
      v103 = sub_226BD16C4(v97, v99, v100, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v104 = swift_allocObject();
      *(v104 + 16) = xmmword_226D71F20;
      *(v104 + 32) = v103;
      v105 = v103;
      v106 = sub_226D6E5CC();

      [v61 setAttachments_];

      v92(v95, v90);
      (*(v122 + 8))(v126, v123);
      v107 = v136;
      v101 = v135;
    }

    else
    {
      (*(v122 + 8))(v74, v123);
      v101 = v135;
      v107 = v136;
    }

    (*(v137 + 8))(v101, v107);
    sub_226AC47B0(v133, &qword_27D7A7A80, &unk_226D75FF8);
  }

  return v61;
}

uint64_t sub_226BD40DC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v118 = a4;
  v120 = a1;
  v7 = 0;
  v116 = sub_226D6CA6C();
  v101 = *(v116 - 8);
  v8 = *(v101 + 64);
  MEMORY[0x28223BE20](v116);
  v96 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6D71C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v115 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D6D6DC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v114 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_226D6D5DC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v113 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_226D69B8C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v112 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_226D6CA7C();
  v104 = *(v111 - 8);
  v22 = *(v104 + 64);
  MEMORY[0x28223BE20](v111);
  v110 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_226D6CA3C();
  v103 = *(v109 - 8);
  v24 = *(v103 + 64);
  MEMORY[0x28223BE20](v109);
  v108 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A80, &unk_226D75FF8);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v107 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v106 = &v92 - v30;
  v98 = a3;
  v119 = sub_226D675AC();
  v121 = a2;
  v31 = sub_226D6B20C();
  v32 = v31;
  v33 = *(v31 + 16);
  v34 = MEMORY[0x277D84F90];
  if (!v33)
  {
    goto LABEL_13;
  }

  v35 = 0;
  v105 = v31 + 32;
  v102 = (v33 - 1);
  do
  {
    v117 = v34;
    v36 = v35;
    while (1)
    {
      if (v36 >= *(v32 + 16))
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v37 = *(v105 + 8 * v36);
      v35 = (v36 + 1);
      v38 = (v37 & 0x7FFFFFFFFFFFFFFFLL);
      v123 = sub_226D6A27C();
      v124 = v39;
      MEMORY[0x28223BE20](v123);
      *(&v92 - 2) = &v123;
      v4 = sub_226CCB428(sub_226BAE190, (&v92 - 4), v119);

      if (v4)
      {
        break;
      }

      v36 = (v36 + 1);
      if (v33 == v35)
      {
        v34 = v117;
        goto LABEL_13;
      }
    }

    v34 = v117;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v125 = v34;
    v41 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_226AE2384(0, *(v34 + 16) + 1, 1);
      v34 = v125;
    }

    v43 = *(v34 + 16);
    v42 = *(v34 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_226AE2384((v42 > 1), v43 + 1, 1);
      v34 = v125;
    }

    *(v34 + 16) = v43 + 1;
    *(v34 + 8 * v43 + 32) = v37;
    v7 = v41;
  }

  while (v102 != v36);
LABEL_13:
  v97 = v7;

  v123 = MEMORY[0x277D84F90];
  v44 = *(v34 + 16);
  if (v44)
  {
    v105 = v34 + 32;
    v104 += 8;
    v103 += 8;
    v102 = (v101 + 48);
    v95 = (v101 + 32);
    v94 = (v101 + 8);
    v100 = v44;
    v93 = v44 - 1;
    v99 = MEMORY[0x277D84F90];
    v45 = &qword_27D7A7A80;
    v117 = v34;
    v46 = 0;
    while (v46 < *(v34 + 16))
    {
      v47 = *(v105 + 8 * v46);
      v48 = v46 + 1;
      v101 = v46;
      v119 = (v47 & 0x7FFFFFFFFFFFFFFFLL);
      v4 = v120;
      v49 = v121;
      v50 = v108;
      sub_226D6CA1C();
      v51 = v45;
      sub_226D6D56C();
      sub_226D6D66C();
      sub_226D6D70C();
      v52 = v112;
      sub_226D69B5C();
      v53 = v110;
      v54 = v52;
      v55 = v106;
      MEMORY[0x22AA88AB0](v54);
      sub_226BD4CF0(&qword_27D7A9670, MEMORY[0x277CC83D0]);
      v56 = v111;
      sub_226D6CA2C();
      v57 = v53;
      v45 = v51;
      v58 = v56;
      v59 = v107;
      (*v104)(v57, v58);
      (*v103)(v50, v109);
      sub_226AC40E8(v55, v59, v51, &unk_226D75FF8);
      if ((*v102)(v59, 1, v116) == 1)
      {

        sub_226AC47B0(v55, v51, &unk_226D75FF8);
        sub_226AC47B0(v59, v51, &unk_226D75FF8);
        v46 = v48;
        v34 = v117;
        if (v100 == v48)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v60 = v96;
        v61 = v59;
        v62 = v116;
        (*v95)(v96, v61, v116);
        v99 = sub_226D6CA4C();
        v64 = v63;
        v65 = sub_226D6CA5C();
        v4 = sub_226BD256C(v47, v99, v64, v65, v66, v4, v49, v118);

        (*v94)(v60, v62);
        v67 = sub_226AC47B0(v55, v45, &unk_226D75FF8);
        MEMORY[0x22AA8A610](v67);
        if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v68 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_226D6E61C();
        }

        sub_226D6E65C();
        v99 = v123;
        v34 = v117;
        if (v93 == v101)
        {
          goto LABEL_24;
        }

        v46 = v48;
      }
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v99 = MEMORY[0x277D84F90];
LABEL_24:

  v125 = v99;
  v119 = sub_226D6758C();
  v69 = sub_226D6B29C();
  v4 = v69;
  v122 = MEMORY[0x277D84F90];
  if (v69 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    v71 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v72 = 0;
    v116 = v4 & 0xFFFFFFFFFFFFFF8;
    v117 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v117)
      {
        v73 = MEMORY[0x22AA8AFD0](v72, v4);
      }

      else
      {
        if (v72 >= *(v116 + 16))
        {
          goto LABEL_59;
        }

        v73 = *(v4 + 8 * v72 + 32);
      }

      v74 = v73;
      v75 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      v76 = [v73 returnIdentifier];
      v77 = sub_226D6E39C();
      v79 = v78;

      v123 = v77;
      v124 = v79;
      MEMORY[0x28223BE20](v80);
      *(&v92 - 2) = &v123;
      LOBYTE(v76) = sub_226CCB428(sub_226BAE5A0, (&v92 - 4), v119);

      if (v76)
      {
        sub_226D6EF6C();
        v81 = *(v122 + 16);
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
      }

      else
      {
      }

      ++v72;
      if (v75 == i)
      {
        v82 = v122;
        v71 = MEMORY[0x277D84F90];
        goto LABEL_39;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

  v82 = MEMORY[0x277D84F90];
LABEL_39:

  v123 = v71;
  if (v82 < 0 || (v82 & 0x4000000000000000) != 0)
  {
    v83 = sub_226D6EDFC();
  }

  else
  {
    v83 = *(v82 + 16);
  }

  v84 = 0;
  v85 = MEMORY[0x277D84F90];
  while (v83 != v84)
  {
    if ((v82 & 0xC000000000000001) != 0)
    {
      v86 = MEMORY[0x22AA8AFD0](v84, v82);
    }

    else
    {
      if (v84 >= *(v82 + 16))
      {
        goto LABEL_55;
      }

      v86 = *(v82 + 8 * v84 + 32);
    }

    v87 = v86;
    v88 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v89 = sub_226BD31B0(v86, v120, v121, v118);

    ++v84;
    if (v89)
    {
      MEMORY[0x22AA8A610]();
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v90 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_226D6E61C();
      }

      sub_226D6E65C();
      v85 = v123;
      v84 = v88;
    }
  }

  sub_226CEE0B0(v85);
  return v125;
}

unint64_t sub_226BD4C8C()
{
  result = qword_27D7A7A78;
  if (!qword_27D7A7A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A7A78);
  }

  return result;
}

void sub_226BD4CD8(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

uint64_t sub_226BD4CF0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FinanceDaemon20ManagedOrderImporterC30NotificationSchedulingBehaviorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226BD4D50(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226BD4DA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_226BD4DF4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t BankConnectServiceImplementation.institution(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_226BD4E48, 0, 0);
}

uint64_t sub_226BD4E48()
{
  __swift_project_boxed_opaque_existential_1((v0[10] + 16), *(v0[10] + 40));
  sub_226D1F020(v0 + 2);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 8);
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_226BD4F94;
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];

  return v10(v8, v6, v7, v1, v2);
}

uint64_t sub_226BD4F94()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226B99748, 0, 0);
}

uint64_t sub_226BD5094(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_226BD513C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_226BD5468(MEMORY[0x277CC7C20]);
}

void sub_226BD51B4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_226BD5468(MEMORY[0x277CC7C18]);
}

void sub_226BD522C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a1;
  v8 = a4;
  sub_226BD54E0(a4);
}

void sub_226BD529C(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_226BD5580();
}

id sub_226BD52DC()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RemoteUIHandle();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_226BD534C(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *a1;
  v4 = *MEMORY[0x277D85000];

  sub_226BD55B0(&a1[*((*v2 & *a1) + 0x68)]);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(&a1[*((*v2 & *a1) + 0x70)]);
  v5 = *&a1[*((*v2 & *a1) + 0x78)];
}

uint64_t sub_226BD5468(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v5 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70);
  return a1(v3, v4);
}

void sub_226BD54E0(void *a1)
{
  if (a1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
    v4 = *MEMORY[0x277D85000] & *v1;
    v5 = a1;
    v6 = *(v4 + 80);
    v7 = *(v4 + 88);
    sub_226D6A59C();
  }
}

uint64_t sub_226BD55B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A7B70, &qword_226D76110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_226BD5618(uint64_t a1, void *a2)
{
  v4 = sub_226D696EC();
  v21 = *(v4 - 8);
  v22 = v4;
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6D52C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6B1CC();
  sub_226D694BC();
  v13 = a2;
  v14 = v23;
  v15 = sub_226D6B19C();
  if (v14)
  {
    v16 = v14;
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v17 = v15;
    v20[1] = 0;
    v23 = a1;
    (*(v9 + 8))(v12, v8);
    if (v17)
    {
      [v13 deleteObject_];
    }

    (*(v21 + 16))(v7, v23, v22);
    v18 = v13;
    v16 = sub_226D6B1DC();
    if (v17)
    {

      return v16 | 0x8000000000000000;
    }
  }

  return v16;
}

uint64_t BankConnectServiceImplementation.initiateConnectionAuthorization(for:fpanID:authorizationConfiguration:authorizationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  *(v7 + 112) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = sub_226D671FC();
  *(v7 + 64) = v8;
  v9 = *(v8 - 8);
  *(v7 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BD58FC, 0, 0);
}

uint64_t sub_226BD58FC()
{
  v34 = v0;
  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_27D7A7D10);
  (*(v2 + 16))(v1, v5, v3);

  v7 = sub_226D6E05C();
  v8 = sub_226D6E9AC();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v12 = *(v0 + 64);
  if (v9)
  {
    v30 = *(v0 + 40);
    v31 = *(v0 + 32);
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v13 = 136315394;
    v14 = sub_226D671AC();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_226AC4530(v14, v16, &v33);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    if (v30)
    {
      v18 = v31;
    }

    else
    {
      v18 = 0x3E6C696E3CLL;
    }

    if (v30)
    {
      v19 = v4;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    v20 = sub_226AC4530(v18, v19, &v33);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_226AB4000, v7, v8, "Initiating consent for institutionID: %s with fpanID: %s.", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v32, -1, -1);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v21 = swift_task_alloc();
  *(v0 + 88) = v21;
  *v21 = v0;
  v21[1] = sub_226BD5BB8;
  v22 = *(v0 + 48);
  v23 = *(v0 + 56);
  v24 = *(v0 + 32);
  v25 = *(v0 + 40);
  v26 = *(v0 + 16);
  v27 = *(v0 + 24);
  v28 = *(v0 + 112);

  return sub_226BD5D38(v26, v27, v24, v25, v22, v28);
}

uint64_t sub_226BD5BB8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[10];

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v2[12] = v8;
    *v8 = v4;
    v8[1] = sub_226B99F1C;
    v9 = v2[7];
    v10 = v2[2];

    return sub_226BD6E30(v10);
  }
}

uint64_t sub_226BD5D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  *(v7 + 328) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = sub_226D671FC();
  *(v7 + 64) = v8;
  v9 = *(v8 - 8);
  *(v7 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  v11 = sub_226D6888C();
  *(v7 + 88) = v11;
  v12 = *(v11 - 8);
  *(v7 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  v14 = sub_226D6860C();
  *(v7 + 120) = v14;
  v15 = *(v14 - 8);
  *(v7 + 128) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  v17 = *(*(sub_226D6B8AC() - 8) + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  v18 = sub_226D6C3CC();
  *(v7 + 160) = v18;
  v19 = *(v18 - 8);
  *(v7 + 168) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210) - 8) + 64) + 15;
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 208) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D7A7B80, &qword_226D76130);
  *(v7 + 216) = v22;
  v23 = *(v22 - 8);
  *(v7 + 224) = v23;
  v24 = *(v23 + 64) + 15;
  *(v7 + 232) = swift_task_alloc();
  v25 = sub_226D6D52C();
  *(v7 + 240) = v25;
  v26 = *(v25 - 8);
  *(v7 + 248) = v26;
  v27 = *(v26 + 64) + 15;
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BD6088, 0, 0);
}

uint64_t sub_226BD6088()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 56);
  sub_226D6D51C();
  v3 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v4 = *__swift_project_boxed_opaque_existential_1(v3 + 46, v3[49]);
  v5 = sub_226BD7790(0x56uLL);
  v6 = sub_226D45B2C(v5 + 43);
  *(v0 + 272) = v6;
  *(v0 + 280) = v7;
  v8 = v7;
  v9 = v6;
  v10 = sub_226D45F38(v6, v7);
  *(v0 + 288) = v11;
  v12 = v10;
  v13 = v11;
  v14 = *(v0 + 264);
  v28 = *(v0 + 328);
  v26 = *(v0 + 40);
  v27 = *(v0 + 48);
  v15 = *(v0 + 24);
  v25 = *(v0 + 32);
  v16 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v17 = v16[5];
  __swift_project_boxed_opaque_existential_1(v16 + 1, v16[4]);

  v18 = sub_226D6C2AC();
  *(v0 + 296) = v18;
  v19 = swift_task_alloc();
  *(v0 + 304) = v19;
  *(v19 + 16) = v18;
  *(v19 + 24) = v14;
  *(v19 + 32) = v15;
  *(v19 + 40) = v9;
  *(v19 + 48) = v8;
  *(v19 + 56) = v12;
  *(v19 + 64) = v13;
  *(v19 + 72) = v25;
  *(v19 + 80) = v26;
  *(v19 + 88) = v28;
  *(v19 + 96) = v27;
  v20 = *(MEMORY[0x277CC7D90] + 4);
  v21 = swift_task_alloc();
  *(v0 + 312) = v21;
  *v21 = v0;
  v21[1] = sub_226BD64DC;
  v22 = *(v0 + 232);
  v23 = *(v0 + 216);

  return MEMORY[0x282119B28](v22, &unk_226D76140, v19, v23);
}

uint64_t sub_226BD64DC()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  v2[40] = v0;

  v5 = v2[38];
  if (v0)
  {
    v6 = v2[35];
    v7 = v2[36];
    swift_bridgeObjectRelease_n();

    v8 = sub_226BD6B64;
  }

  else
  {

    v8 = sub_226BD6630;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_226BD6630()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = *(v3 + 16);
  v4(v1, v0[6], v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == *MEMORY[0x277CC8268] || v5 == *MEMORY[0x277CC8258])
  {
    v51 = v4;
    v6 = v0[35];
    v7 = v0[36];
    v8 = v0[30];
    v9 = v0[31];
    v10 = v0[25];
    v11 = v0[23];
    v12 = v0[20];
    v13 = v0[21];

    (*(v13 + 96))(v11, v12);
    (*(v9 + 32))(v10, v11, v8);
    v14 = 0;
  }

  else
  {
    if (v5 != *MEMORY[0x277CC8260])
    {
      return sub_226D6F0AC();
    }

    v51 = v4;
    v27 = v0[35];
    v28 = v0[36];

    v14 = 1;
  }

  v48 = v0[37];
  v47 = v0[35];
  v46 = v0[34];
  v15 = v0[32];
  v16 = v0[33];
  v44 = v16;
  v17 = v0[30];
  v29 = v0[29];
  v49 = v0[28];
  v18 = v0[26];
  v52 = v0[27];
  v19 = v0[25];
  v38 = v0[24];
  v50 = v0[23];
  v41 = v0[22];
  v42 = v0[20];
  v32 = v0[19];
  v20 = v0[18];
  v55 = v0[17];
  v21 = v0[16];
  v30 = v0[15];
  v53 = v0[13];
  v54 = v0[14];
  v22 = v0[12];
  v31 = v0[11];
  v35 = v0[10];
  v36 = v0[8];
  v37 = v0[6];
  v43 = v0[4];
  v33 = v0[3];
  v34 = v0[9];
  v39 = v0[5];
  v40 = v0[2];
  v45 = v0[31];
  (*(v45 + 56))(v19, v14, 1, v17);
  sub_226BACBC0(v19, v18);
  (*(v45 + 16))(v15, v16, v17);
  MEMORY[0x22AA87740](v52);
  sub_226D685FC();
  v23 = *(v21 + 8);
  v23(v20, v30);
  MEMORY[0x22AA87740](v52);
  sub_226D685EC();
  v23(v55, v30);
  sub_226D6B6AC();
  sub_226D6886C();
  v24 = *(v22 + 8);
  v24(v54, v31);
  sub_226D6B6AC();
  sub_226D6887C();
  v24(v53, v31);
  sub_226D6B87C();
  sub_226B36DE0(v18, v38);
  (*(v34 + 16))(v35, v33, v36);
  v51(v41, v37, v42);

  sub_226BD7920(v41);
  sub_226D6B86C();

  sub_226AC47B0(v18, &qword_27D7A6D68, &qword_226D75210);
  (*(v49 + 8))(v29, v52);
  (*(v45 + 8))(v44, v17);

  v25 = v0[1];

  return v25();
}

uint64_t sub_226BD6B64()
{
  v1 = v0[37];

  v2 = v0[40];
  (*(v0[31] + 8))(v0[33], v0[30]);
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F710);
  v4 = v2;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_226AB4000, v5, v6, "Error while trying to call initiate consent: %@.", v7, 0xCu);
    sub_226AC47B0(v8, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v11 = v0[32];
  v12 = v0[33];
  v13 = v0[29];
  v14 = v0[25];
  v15 = v0[26];
  v16 = v0[24];
  v21 = v0[23];
  v22 = v0[22];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[17];
  v26 = v0[14];
  v27 = v0[13];
  v28 = v0[10];

  v17 = sub_226D6A0DC();
  sub_226BD7738();
  swift_allocError();
  *v18 = v2;
  (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277CC7AB0], v17);
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_226BD6E30(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_226BD6E50, 0, 0);
}

uint64_t sub_226BD6E50()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v4 = *(*(v3 + 8) + 8);
  sub_226D6BAAC();
  v5 = sub_226D676AC();

  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  *(v6 + 24) = v5;
  sub_226D6EB7C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_226BD70EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v19;
  *(v8 + 152) = v18;
  *(v8 + 64) = v17;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_226D6C3CC();
  *(v8 + 88) = v9;
  v10 = *(v9 - 8);
  *(v8 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v12 = sub_226D6C82C();
  *(v8 + 112) = v12;
  v13 = *(v12 - 8);
  *(v8 + 120) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BD722C, 0, 0);
}

uint64_t sub_226BD722C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_226D6D4CC();
  sub_226D671AC();
  if (v1)
  {
    v4 = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_226D70840;
    *(v5 + 32) = v4;
    *(v5 + 40) = v1;
  }

  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 80);
  v20 = *(v0 + 88);
  v9 = *(v0 + 56);
  v21 = *(v0 + 48);
  v22 = *(v0 + 128);
  v10 = *(v0 + 152);

  v11 = sub_226D6B83C();
  v13 = v12;
  sub_226D6D20C();
  sub_226B11B98(v11, v13);
  (*(v7 + 16))(v6, v8, v20);
  sub_226D6C81C();
  v14 = *(MEMORY[0x277CC7D50] + 4);
  v15 = swift_task_alloc();
  *(v0 + 136) = v15;
  *v15 = v0;
  v15[1] = sub_226BD73F0;
  v16 = *(v0 + 128);
  v17 = *(v0 + 16);
  v18 = *(v0 + 24);

  return MEMORY[0x282119AE8](v17, v16);
}

uint64_t sub_226BD73F0()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *v1;
  v6[18] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226BD75A8, 0, 0);
  }

  else
  {
    v7 = v6[16];
    v8 = v6[13];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_226BD75A8()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

id sub_226BD7618(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6C1BC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_226D6C1AC();
  v7 = sub_226D6C19C();

  if (!v2)
  {

    v11[0] = 0;
    if ([a2 save_])
    {
      result = v11[0];
    }

    else
    {
      v9 = v11[0];
      sub_226D6D04C();

      result = swift_willThrow();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_226BD7738()
{
  result = qword_27D7A6290;
  if (!qword_27D7A6290)
  {
    sub_226D6A0DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6290);
  }

  return result;
}

unint64_t sub_226BD7790(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x22AA8BF00](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x22AA8BF00](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226BD781C(uint64_t a1)
{
  v15 = *(v1 + 24);
  v16 = *(v1 + 16);
  v4 = *(v1 + 40);
  v14 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v8 = *(v1 + 64);
  v7 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v11 = *(v1 + 96);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_226AD827C;

  return sub_226BD70EC(a1, v16, v15, v14, v4, v5, v6, v8);
}

uint64_t sub_226BD7920(uint64_t a1)
{
  v2 = sub_226D6C3CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CC8268])
  {
    (*(v3 + 8))(a1, v2);
    (*(v3 + 96))(v6, v2);
    v8 = sub_226D6D52C();
    (*(*(v8 - 8) + 8))(v6, v8);
    return 1;
  }

  else if (v7 == *MEMORY[0x277CC8258])
  {
    (*(v3 + 8))(a1, v2);
    (*(v3 + 96))(v6, v2);
    v10 = sub_226D6D52C();
    (*(*(v10 - 8) + 8))(v6, v10);
    return 2;
  }

  else if (v7 == *MEMORY[0x277CC8260])
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  else
  {
    result = sub_226D6F0AC();
    __break(1u);
  }

  return result;
}

uint64_t sub_226BD7BA4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F6A8);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_226AB4000, v5, v6, "Starting reprocessing cascade set as part of post install task", v7, 2u);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v8 = *a3;

  sub_226BAFC9C(v9);
}

uint64_t sub_226BD7CD0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for PostInstallTaskEnvironment();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if (qword_281060348 != -1)
  {
    swift_once();
  }

  v9 = qword_281064528;
  sub_226BD7F04(a1, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 25) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3 & 1;
  sub_226BD7F68(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226BD7FCC;
  *(v12 + 24) = v11;
  aBlock[4] = sub_226B1BA20;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226CAD254;
  aBlock[3] = &block_descriptor_10;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v9, v13);
  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226BD7F04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PostInstallTaskEnvironment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BD7F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PostInstallTaskEnvironment();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BD7FCC()
{
  v1 = *(type metadata accessor for PostInstallTaskEnvironment() - 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 80) + 25) & ~*(v1 + 80));
  return sub_226D66E6C();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226BD80C8()
{
  v1 = sub_226D66E3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  if (qword_27D7A5ED8 != -1)
  {
    swift_once();
  }

  v7 = sub_226D66DDC();
  __swift_project_value_buffer(v7, qword_27D7B61D8);
  (*(v2 + 104))(v5, *MEMORY[0x277CC6548], v1);
  v8 = sub_226D66E5C();
  (*(v2 + 8))(v5, v1);
  return v8 & 1;
}

uint64_t sub_226BD8250()
{
  v0 = sub_226D66DDC();
  __swift_allocate_value_buffer(v0, qword_27D7B61D8);
  __swift_project_value_buffer(v0, qword_27D7B61D8);
  return sub_226D66DCC();
}

uint64_t sub_226BD82B4()
{
  v0 = sub_226D66DDC();
  __swift_allocate_value_buffer(v0, qword_281064560);
  __swift_project_value_buffer(v0, qword_281064560);
  return sub_226D66DCC();
}

uint64_t sub_226BD8318(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_226D6E07C();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t *sub_226BD842C()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + *(*v0 + 120)));
  v2 = *(*v0 + 136);
  v3 = sub_226D6E07C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v0 + *(*v0 + 144);
  v5 = *(v4 + 2);
  v6 = *(v4 + 4);

  v7 = *(v0 + *(*v0 + 152));

  v8 = *(v0 + *(*v0 + 176));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_226BD8580()
{
  sub_226BD842C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_226BD85C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_226BD8614(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226BD865C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226BD890C()
{
  v0 = sub_226D6E07C();
  __swift_allocate_value_buffer(v0, qword_27D7A7C38);
  __swift_project_value_buffer(v0, qword_27D7A7C38);
  return sub_226D6E06C();
}

uint64_t sub_226BD89F4()
{
  v0 = sub_226D6E07C();
  __swift_allocate_value_buffer(v0, qword_27D7A7C68);
  __swift_project_value_buffer(v0, qword_27D7A7C68);
  return sub_226D6E06C();
}

uint64_t sub_226BD8CC0()
{
  v0 = sub_226D6E07C();
  __swift_allocate_value_buffer(v0, qword_28105F688);
  __swift_project_value_buffer(v0, qword_28105F688);
  return sub_226D6E06C();
}

uint64_t sub_226BD8DB0()
{
  v0 = sub_226D6E07C();
  __swift_allocate_value_buffer(v0, qword_28105F668);
  __swift_project_value_buffer(v0, qword_28105F668);
  return sub_226D6E06C();
}

uint64_t sub_226BD8EA4()
{
  v0 = sub_226D6E07C();
  __swift_allocate_value_buffer(v0, qword_27D7A7D10);
  __swift_project_value_buffer(v0, qword_27D7A7D10);
  return sub_226D6E06C();
}

uint64_t sub_226BD8F70(uint64_t a1, uint64_t *a2)
{
  v3 = sub_226D6E07C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_226D6E06C();
}

uint64_t sub_226BD900C()
{
  v0 = sub_226D6E07C();
  __swift_allocate_value_buffer(v0, qword_27D7A7D40);
  __swift_project_value_buffer(v0, qword_27D7A7D40);
  return sub_226D6E06C();
}

uint64_t sub_226BD90B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_226D6E07C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_226BD9148()
{
  v0 = sub_226D6DFFC();
  __swift_allocate_value_buffer(v0, qword_281064510);
  __swift_project_value_buffer(v0, qword_281064510);
  return sub_226D6DFEC();
}

uint64_t sub_226BD91C4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Task = type metadata accessor for BankConnectAccountDataFetchTask();
  sub_226AF265C(v1 + Task[7], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226AC47B0(v6, &qword_27D7A8BE0, &unk_226D718F0);
    return sub_226AF265C(v1 + Task[5], a1);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = *(v1 + Task[6]);
    v15 = v14 < 1;
    v16 = v14 - 1;
    if (!v15)
    {
      exp2(v16);
    }

    sub_226D6D3DC();
    (*(v8 + 8))(v11, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_226BD93DC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_226D6764C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v6 = sub_226D67C0C();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BD9510, 0, 0);
}

uint64_t sub_226BD9510()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
  *(v0 + 120) = sub_226B41FC0();
  v17 = swift_allocObject();
  sub_226B42014(v4, v17 + 16);
  v5 = sub_226D6B13C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_226D6B12C();
  *(v0 + 128) = v8;
  *(v0 + 16) = v8;
  *(v0 + 232) = *MEMORY[0x277CC6D38];
  v9 = *(v3 + 104);
  *(v0 + 136) = v9;
  *(v0 + 144) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v1);
  v10 = *(MEMORY[0x277CC7EE8] + 4);
  v11 = swift_task_alloc();
  *(v0 + 152) = v11;
  *v11 = v0;
  v11[1] = sub_226BD9684;
  v12 = *(v0 + 112);
  v13 = *(v0 + 88);
  v14 = *(v0 + 48);
  v15 = MEMORY[0x277CC7E10];

  return MEMORY[0x282119F10](v12, v14, v13, v5, v15);
}

uint64_t sub_226BD9684()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v13 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    (*(v2[8] + 8))(v2[11], v2[7]);
    v4 = sub_226BD9EEC;
  }

  else
  {
    v6 = v2[13];
    v5 = v2[14];
    v7 = v2[11];
    v8 = v2[12];
    v9 = v2[7];
    v10 = v2[8];
    v11 = *(v10 + 8);
    v2[21] = v11;
    v2[22] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v9);
    (*(v6 + 8))(v5, v8);
    v4 = sub_226BD97F8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226BD97F8()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 232);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 80);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);

  v9 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v20 = swift_allocObject();
  sub_226B42014(v9, v20 + 16);
  v10 = sub_226D6BB5C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_226D6BB4C();
  *(v0 + 184) = v13;
  *(v0 + 24) = v13;
  v2(v6, v3, v7);
  v14 = *(MEMORY[0x277CC8168] + 4);
  v15 = swift_task_alloc();
  *(v0 + 192) = v15;
  *v15 = v0;
  v15[1] = sub_226BD9954;
  v16 = *(v0 + 80);
  v17 = *(v0 + 48);
  v18 = MEMORY[0x277CC8090];

  return MEMORY[0x28211A560](v17, v16, v10, v18);
}

uint64_t sub_226BD9954()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 176);
  (*(v2 + 168))(*(v2 + 80), *(v2 + 56));
  if (v0)
  {
    v6 = sub_226BD9F80;
  }

  else
  {
    v6 = sub_226BD9AC4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226BD9AC4()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 232);
  v5 = *(v0 + 120);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);

  v9 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v20 = swift_allocObject();
  sub_226B42014(v9, v20 + 16);
  v10 = sub_226D6C51C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_226D6C50C();
  *(v0 + 208) = v13;
  *(v0 + 32) = v13;
  v3(v6, v4, v7);
  v14 = *(MEMORY[0x277CC82A0] + 4);
  v15 = swift_task_alloc();
  *(v0 + 216) = v15;
  *v15 = v0;
  v15[1] = sub_226BD9C24;
  v16 = *(v0 + 72);
  v17 = *(v0 + 48);
  v18 = MEMORY[0x277CC8280];

  return MEMORY[0x28211A9B0](v17, v16, v10, v18);
}

uint64_t sub_226BD9C24()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 176);
  (*(v2 + 168))(*(v2 + 72), *(v2 + 56));
  if (v0)
  {
    v6 = sub_226BDA014;
  }

  else
  {
    v6 = sub_226BD9D94;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226BD9D94()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[5];
  v4 = v0[6];

  v5 = *__swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v6 = sub_226D676AC();
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  sub_226D6EB7C();
  if (v1)
  {

    v8 = v0[14];
    v9 = v0[10];
    v10 = v0[11];
    v11 = v0[9];
  }

  else
  {
    v13 = v0[14];
    v15 = v0[10];
    v14 = v0[11];
    v16 = v0[9];
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_226BD9EEC()
{
  v1 = v0[16];

  v2 = v0[20];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_226BD9F80()
{
  v1 = v0[23];

  v2 = v0[25];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_226BDA014()
{
  v1 = v0[26];

  v2 = v0[28];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_226BDA0A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D66DFC();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(type metadata accessor for BankConnectAccountDataFetchTask() - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BDA16C, 0, 0);
}

uint64_t sub_226BDA16C()
{
  v30 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  sub_226BDB288(v3, v2, type metadata accessor for BankConnectAccountDataFetchTask);
  sub_226BDB288(v4, v1, MEMORY[0x277CC6528]);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  if (!v8)
  {

    sub_226BDB2F0(v10, MEMORY[0x277CC6528]);
    sub_226BDB2F0(v9, type metadata accessor for BankConnectAccountDataFetchTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v28 = *(v0 + 40);
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v29 = v13;
  *v11 = 136315394;
  sub_226D6B9BC();
  sub_226BDB4C8(&qword_27D7A6E40, MEMORY[0x277CC8058]);
  v14 = sub_226D6F1CC();
  v16 = v15;
  sub_226BDB2F0(v9, type metadata accessor for BankConnectAccountDataFetchTask);
  v17 = sub_226AC4530(v14, v16, &v29);

  *(v11 + 4) = v17;
  *(v11 + 12) = 2112;
  sub_226BDB4C8(&qword_27D7A6990, MEMORY[0x277CC6528]);
  swift_allocError();
  sub_226BDB288(v10, v18, MEMORY[0x277CC6528]);
  v19 = _swift_stdlib_bridgeErrorToNSError();
  sub_226BDB2F0(v10, MEMORY[0x277CC6528]);
  *(v11 + 14) = v19;
  *v12 = v19;
  _os_log_impl(&dword_226AB4000, v6, v7, "Failed to fetch account %s with error: %@", v11, 0x16u);
  sub_226AC47B0(v12, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v12, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x22AA8BEE0](v13, -1, -1);
  MEMORY[0x22AA8BEE0](v11, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v20 = *(v0 + 32);
    v21 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
    v22 = sub_226D676AC();
    v23 = swift_task_alloc();
    *(v23 + 16) = v20;
    *(v23 + 24) = v22;
    sub_226D6EB7C();
  }

LABEL_8:
  v25 = *(v0 + 48);
  v24 = *(v0 + 56);

  v26 = *(v0 + 8);

  return v26();
}

void sub_226BDA578(uint64_t a1, void *a2)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D4AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Task = type metadata accessor for BankConnectAccountDataFetchTask();
  v11 = *(*(Task - 8) + 64);
  v12 = MEMORY[0x28223BE20](Task - 8);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v43 - v15;
  sub_226D69F0C();
  v17 = sub_226D69D9C();
  if (v2)
  {
    goto LABEL_18;
  }

  v18 = v17;
  v43[1] = 0;
  if (!v17)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v22 = sub_226D6E07C();
    __swift_project_value_buffer(v22, qword_28105F710);
    sub_226BDB288(a1, v16, type metadata accessor for BankConnectAccountDataFetchTask);
    v23 = sub_226D6E05C();
    v24 = sub_226D6E9AC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44[0] = v26;
      *v25 = 136315138;
      sub_226D6B9BC();
      sub_226BDB4C8(&qword_27D7A6E40, MEMORY[0x277CC8058]);
      v27 = sub_226D6F1CC();
      v29 = v28;
      sub_226BDB2F0(v16, type metadata accessor for BankConnectAccountDataFetchTask);
      v30 = sub_226AC4530(v27, v29, v44);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_226AB4000, v23, v24, "Account %s doesn't exist", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x22AA8BEE0](v26, -1, -1);
      MEMORY[0x22AA8BEE0](v25, -1, -1);

      goto LABEL_18;
    }

    v40 = v16;
LABEL_17:
    sub_226BDB2F0(v40, type metadata accessor for BankConnectAccountDataFetchTask);
    goto LABEL_18;
  }

  if (([v17 isAccountEnabled] & 1) == 0)
  {
    if (qword_28105F708 == -1)
    {
LABEL_13:
      v31 = sub_226D6E07C();
      __swift_project_value_buffer(v31, qword_28105F710);
      sub_226BDB288(a1, v14, type metadata accessor for BankConnectAccountDataFetchTask);
      v32 = sub_226D6E05C();
      v33 = sub_226D6E9AC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v44[0] = v35;
        *v34 = 136315138;
        sub_226D6B9BC();
        sub_226BDB4C8(&qword_27D7A6E40, MEMORY[0x277CC8058]);
        v36 = sub_226D6F1CC();
        v38 = v37;
        sub_226BDB2F0(v14, type metadata accessor for BankConnectAccountDataFetchTask);
        v39 = sub_226AC4530(v36, v38, v44);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_226AB4000, v32, v33, "Account %s was disabled while fetching data from the server.", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        MEMORY[0x22AA8BEE0](v35, -1, -1);
        MEMORY[0x22AA8BEE0](v34, -1, -1);

        goto LABEL_18;
      }

      v40 = v14;
      goto LABEL_17;
    }

LABEL_21:
    swift_once();
    goto LABEL_13;
  }

  v19 = [v18 accountRequestAttemptCount];
  if (__OFADD__(v19, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  [v18 setAccountRequestAttemptCount_];
  sub_226D6D46C();
  v20 = sub_226D6D3EC();
  (*(v6 + 8))(v9, v5);
  [v18 setLastAccountRequestAttemptDate_];

  v44[0] = 0;
  if ([a2 save_])
  {
    v21 = v44[0];
  }

  else
  {
    v42 = v44[0];
    sub_226D6D04C();

    swift_willThrow();
  }

LABEL_18:
  v41 = *MEMORY[0x277D85DE8];
}

void sub_226BDAB64(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  Task = type metadata accessor for BankConnectAccountDataFetchTask();
  v6 = *(*(Task - 8) + 64);
  MEMORY[0x28223BE20](Task - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F0C();
  v9 = sub_226D69D9C();
  if (!v2)
  {
    if (v9)
    {
      v10 = v9;
      [v9 setAccountRequestAttemptCount_];
      [v10 setLastAccountRequestAttemptDate_];
      v23[0] = 0;
      if ([a2 save_])
      {
        v11 = v23[0];
      }

      else
      {
        v21 = v23[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v12 = sub_226D6E07C();
      __swift_project_value_buffer(v12, qword_28105F710);
      sub_226BDB288(a1, v8, type metadata accessor for BankConnectAccountDataFetchTask);
      v13 = sub_226D6E05C();
      v14 = sub_226D6E9CC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v23[0] = v16;
        *v15 = 136315138;
        sub_226D6B9BC();
        sub_226BDB4C8(&qword_27D7A6E40, MEMORY[0x277CC8058]);
        v17 = sub_226D6F1CC();
        v19 = v18;
        sub_226BDB2F0(v8, type metadata accessor for BankConnectAccountDataFetchTask);
        v20 = sub_226AC4530(v17, v19, v23);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_226AB4000, v13, v14, "Account %s not found, unable to update task scheduling.", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x22AA8BEE0](v16, -1, -1);
        MEMORY[0x22AA8BEE0](v15, -1, -1);
      }

      else
      {

        sub_226BDB2F0(v8, type metadata accessor for BankConnectAccountDataFetchTask);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226BDAE8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226BD93DC(a1);
}

uint64_t sub_226BDAF20(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226BDA0A8(a1, a2);
}

uint64_t sub_226BDAFC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_226D6B9BC();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_226BDB048()
{
  sub_226D6B9BC();
  sub_226BDB4C8(&qword_27D7A6E40, MEMORY[0x277CC8058]);
  v0 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v0);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD000000000000027;
}

uint64_t sub_226BDB18C(uint64_t a1)
{
  result = sub_226BDB4C8(&qword_27D7A7D58, type metadata accessor for BankConnectAccountDataFetchTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectAccountDataFetchTask()
{
  result = qword_27D7A7D68;
  if (!qword_27D7A7D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BDB230(uint64_t a1)
{
  result = sub_226BDB4C8(&qword_27D7A7D60, type metadata accessor for BankConnectAccountDataFetchTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226BDB288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226BDB2F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226BDB3B0()
{
  sub_226D6B9BC();
  if (v0 <= 0x3F)
  {
    sub_226B20350();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226BDB444(uint64_t a1)
{
  *(a1 + 8) = sub_226BDB4C8(&qword_27D7A7D78, type metadata accessor for BankConnectAccountDataFetchTask);
  result = sub_226BDB4C8(&qword_27D7A7D80, type metadata accessor for BankConnectAccountDataFetchTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226BDB4C8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t BankConnectServiceImplementation.logo(forInstitutionID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226BDB538, 0, 0);
}

uint64_t sub_226BDB538()
{
  v0[5] = __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40))[51];
  v1 = *(MEMORY[0x277CC81C0] + 4);

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_226BDB5F4;
  v4 = v0[2];
  v3 = v0[3];

  return MEMORY[0x28211A648](v4, v3);
}

uint64_t sub_226BDB5F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_226BDB760, 0, 0);
  }

  else
  {
    v9 = *(v6 + 40);

    v10 = *(v8 + 8);

    return v10(a1, a2);
  }
}

uint64_t sub_226BDB760()
{
  v20 = v0;
  v1 = v0[5];

  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = v0[3];
  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F710);

  v5 = v2;
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[7];
  if (v8)
  {
    v11 = v0[2];
    v10 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_226AC4530(v11, v10, &v19);
    *(v12 + 12) = 2112;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_226AB4000, v6, v7, "Error obtaining logo asset data for institution id: %s error: %@", v12, 0x16u);
    sub_226B17298(v13);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  else
  {
  }

  v17 = v0[1];

  return v17(0, 0xF000000000000000);
}

uint64_t BankConnectServiceImplementation.removeLogo(forInstitutionID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226BDB998, 0, 0);
}

uint64_t sub_226BDB998()
{
  v0[5] = __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40))[51];
  v1 = *(MEMORY[0x277CC81B0] + 4);

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_226BDBA54;
  v4 = v0[2];
  v3 = v0[3];

  return MEMORY[0x28211A630](v4, v3);
}

uint64_t sub_226BDBA54()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_226BDBB64(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v134 = a5;
  v135 = a4;
  v140 = a1;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DA0, &qword_226D765A0);
  v7 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v133 = &v112 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7DA8, &unk_226D765A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v112 - v11;
  v13 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus();
  v142 = *(v13 - 8);
  v14 = *(v142 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v112 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v112 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v112 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = &v112 - v27;
  v126 = sub_226D69CAC();
  v131 = *(v126 - 8);
  v29 = v131[8];
  MEMORY[0x28223BE20](v126);
  v124 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = a2;
  v125 = a3;
  v31 = v143;
  sub_226BDF504(v140, a2, a3, v135);
  v136 = v31;
  if (!v31)
  {
    v128 = v28;
    v138 = v20;
    v139 = v13;
    v130 = v12;
    v143 = v23;
    v137 = v17;
    v140 = v26;
    v33 = v32;
    v117 = sub_226D69CBC();
    v116 = sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
    swift_getKeyPath();
    v115 = sub_226D6E9FC();
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_226D71F30;
    v35 = v34;
    v36 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v38 = swift_allocObject();
    v132 = xmmword_226D70840;
    *(v38 + 16) = xmmword_226D70840;
    *(v38 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74E8, &qword_226D75250);
    *(v38 + 64) = sub_226BAE1D0();
    *(v38 + 32) = v33;
    *(v35 + 32) = sub_226D6E91C();
    v113 = v35;
    v122 = v37;
    v39 = swift_allocObject();
    *(v39 + 16) = v132;
    *(v39 + 56) = MEMORY[0x277D837D0];
    v127 = sub_226B16404();
    *(v39 + 64) = v127;
    v40 = v125;
    *(v39 + 32) = v123;
    *(v39 + 40) = v40;

    v121 = v36;
    *(v35 + 40) = sub_226D6E91C();
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_226D72B90;
    v41 = *MEMORY[0x277CC79F0];
    v42 = v131;
    v43 = (v131 + 13);
    v119 = v131[13];
    v44 = v124;
    v45 = v126;
    v119(v124, v41, v126);
    v125 = v43;
    v118 = "Unknown classification outcome";
    v46 = swift_allocObject();
    *(v46 + 16) = v132;
    v47 = sub_226D69C9C();
    v48 = v127;
    *(v46 + 56) = MEMORY[0x277D837D0];
    *(v46 + 64) = v48;
    *(v46 + 32) = v47;
    *(v46 + 40) = v49;
    v50 = sub_226D6E91C();
    v51 = v42[1];
    v131 = v42 + 1;
    v123 = v51;
    (v51)(v44, v45);
    v52 = v120;
    *(v120 + 32) = v50;
    v53 = v119;
    v119(v44, *MEMORY[0x277CC79E0], v45);
    v54 = swift_allocObject();
    *(v54 + 16) = v132;
    v55 = sub_226D69C9C();
    *(v54 + 56) = MEMORY[0x277D837D0];
    *(v54 + 64) = v48;
    *(v54 + 32) = v55;
    *(v54 + 40) = v56;
    v57 = sub_226D6E91C();
    v123(v44, v45);
    *(v52 + 40) = v57;
    v53(v44, *MEMORY[0x277CC79E8], v45);
    v58 = swift_allocObject();
    *(v58 + 16) = v132;
    v59 = sub_226D69C9C();
    v60 = v127;
    *(v58 + 56) = MEMORY[0x277D837D0];
    *(v58 + 64) = v60;
    *(v58 + 32) = v59;
    *(v58 + 40) = v61;
    v62 = sub_226D6E91C();
    v63 = v123;
    v123(v44, v45);
    v64 = v120;
    *(v120 + 48) = v62;
    v119(v44, *MEMORY[0x277CC79F8], v45);
    v65 = swift_allocObject();
    *(v65 + 16) = v132;
    v66 = sub_226D69C9C();
    v67 = v127;
    *(v65 + 56) = MEMORY[0x277D837D0];
    *(v65 + 64) = v67;
    *(v65 + 32) = v66;
    *(v65 + 40) = v68;
    v69 = sub_226D6E91C();
    v63(v44, v45);
    v70 = v117;
    *(v64 + 56) = v69;
    v71 = sub_226D6E5CC();

    v72 = objc_opt_self();
    v73 = [v72 orPredicateWithSubpredicates_];

    *(v113 + 48) = v73;
    v74 = sub_226D6E5CC();

    v75 = [v72 andPredicateWithSubpredicates_];

    [v70 setPredicate_];
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_226D71F20;
    v77 = v115;
    *(v76 + 32) = v115;
    v78 = v77;
    v79 = sub_226D6E5CC();

    [v70 setSortDescriptors_];

    v80 = v136;
    v81 = sub_226D6EBBC();
    v82 = v80;
    if (v80)
    {
      v136 = v80;

      return;
    }

    v83 = v81;
    if (v81 >> 62)
    {
      goto LABEL_52;
    }

    for (i = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
    {
      v85 = v143;
      v86 = v130;
      v129 = v78;
      v131 = v75;
      if (!i)
      {
        break;
      }

      v78 = 0;
      v135 = v83 & 0xFFFFFFFFFFFFFF8;
      v136 = v83 & 0xC000000000000001;
      v75 = (v142 + 48);
      v87 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v136)
        {
          v88 = MEMORY[0x22AA8AFD0](v78, v83);
        }

        else
        {
          if (v78 >= *(v135 + 16))
          {
            goto LABEL_50;
          }

          v88 = *(v83 + 8 * v78 + 32);
        }

        v89 = v88;
        v90 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          break;
        }

        v144 = v88;
        v91 = v82;
        sub_226BDE708(&v144, v86);

        if ((*v75)(v86, 1, v139) == 1)
        {
          sub_226AC47B0(v86, &qword_27D7A7DA8, &unk_226D765A8);
          v85 = v143;
        }

        else
        {
          v92 = v86;
          v93 = v128;
          sub_226BDFD44(v92, v128);
          sub_226BDFD44(v93, v138);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v87 = sub_226BBAE44(0, v87[2] + 1, 1, v87);
          }

          v95 = v87[2];
          v94 = v87[3];
          if (v95 >= v94 >> 1)
          {
            v87 = sub_226BBAE44(v94 > 1, v95 + 1, 1, v87);
          }

          v87[2] = v95 + 1;
          sub_226BDFD44(v138, v87 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v95);
          v85 = v143;
          v82 = v91;
          v86 = v130;
        }

        ++v78;
        if (v90 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      ;
    }

    v87 = MEMORY[0x277D84F90];
LABEL_22:
    v136 = v82;

    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    v96 = *(v82 - 8);
    v97 = *(v96 + 56);
    v75 = v140;
    v135 = v96 + 56;
    *&v132 = v97;
    v97(v140, 1, 4, v82);
    v78 = v134;
    sub_226BDE698(v75, v134);
    v139 = v87[2];
    if (v139)
    {
      v98 = 0;
      v138 = v87 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
      v99 = (v96 + 48);
      v83 = v133;
      while (1)
      {
        if (v98 >= v87[2])
        {
          goto LABEL_51;
        }

        sub_226BDE698(&v138[*(v142 + 72) * v98], v85);
        v102 = *(v141 + 48);
        sub_226BDE698(v78, v83);
        sub_226BDE698(v85, v83 + v102);
        v103 = v85;
        v104 = *v99;
        v105 = (*v99)(v83, 4, v82);
        if (v105 != 1)
        {
          break;
        }

        sub_226BDFDA8(v78);
        v100 = v137;
        sub_226BDFD44(v103, v137);
        v101 = v83 + v102;
LABEL_25:
        sub_226BDFDA8(v101);
        v75 = v140;
LABEL_26:
        ++v98;
        sub_226BDFD44(v100, v78);
        v85 = v143;
        if (v139 == v98)
        {
          goto LABEL_47;
        }
      }

      v106 = v105;
      v107 = v104(v83 + v102, 4, v82);
      sub_226BDFDA8(v103);
      if (v107 <= 1)
      {
        if (!v107)
        {
          v78 = v134;
          sub_226BDFDA8(v134);
          v111 = sub_226D6B49C();
          v83 = v133;
          v100 = v137;
          (*(*(v111 - 8) + 32))(v137, v133 + v102, v111);
          (v132)(v100, 0, 4, v82);
LABEL_41:
          v101 = v83;
          goto LABEL_25;
        }

        v78 = v134;
        v100 = v137;
        sub_226BDFD44(v134, v137);
      }

      else
      {
        if (v107 != 2)
        {
          v75 = v140;
          if (v107 == 3)
          {
            sub_226BDFDA8(v134);
            v83 = v133;
            if (v106 > 2)
            {
              v100 = v137;
              v109 = v137;
              if (v106 == 3)
              {
                v110 = 3;
              }

              else
              {
                v110 = 4;
              }
            }

            else if (v106)
            {
              v100 = v137;
              v109 = v137;
              v110 = 2;
            }

            else
            {
              v108 = sub_226D6B49C();
              v100 = v137;
              (*(*(v108 - 8) + 32))(v137, v83, v108);
              v109 = v100;
              v110 = 0;
            }

            (v132)(v109, v110, 4, v82);
            v78 = v134;
          }

          else
          {
            v78 = v134;
            sub_226BDFDA8(v134);
            v100 = v137;
            (v132)(v137, 4, 4, v82);
            v83 = v133;
            sub_226BDFDA8(v133);
          }

          goto LABEL_26;
        }

        v78 = v134;
        sub_226BDFDA8(v134);
        v100 = v137;
        (v132)(v137, 2, 4, v82);
      }

      v83 = v133;
      goto LABEL_41;
    }

LABEL_47:

    sub_226BDFDA8(v75);
  }
}

uint64_t sub_226BDC9A0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 timestamp];
  if (v3)
  {
    v4 = v3;
    sub_226D6D45C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_226D6D4AC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t static ManagedCloudOrderEvent.predicateForUserEvent(withType:)()
{
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226D70840;
  v1 = sub_226D69C9C();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_226B16404();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  return sub_226D6E91C();
}

void sub_226BDCB08(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, _BYTE *a5@<X8>)
{
  v141 = a1;
  v144 = a4;
  v134 = a5;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68A8, &qword_226D72090);
  v7 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v135 = (&v114 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68B0, qword_226D72098);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v130 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v114 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v114 - v16;
  v18 = sub_226D6D4AC();
  v136 = *(v18 - 8);
  v19 = *(v136 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v114 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v114 - v30;
  v143 = sub_226D69CAC();
  v139 = *(v143 - 8);
  v32 = *(v139 + 64);
  MEMORY[0x28223BE20](v143);
  v137 = a2;
  v138 = &v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v141;
  v35 = v142;
  v141 = a3;
  sub_226BDF504(v34, a2, a3, v144);
  if (!v35)
  {
    v119 = v29;
    v117 = v26;
    v122 = v31;
    v116 = v15;
    v120 = v17;
    v118 = v21;
    v121 = v18;
    v132 = 0;
    v37 = v36;
    v129 = sub_226D69CBC();
    v128 = sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
    swift_getKeyPath();
    v127 = sub_226D6E9FC();
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_226D71F30;
    v39 = v38;
    v40 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v42 = swift_allocObject();
    v142 = xmmword_226D70840;
    *(v42 + 16) = xmmword_226D70840;
    *(v42 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74E8, &qword_226D75250);
    *(v42 + 64) = sub_226BAE1D0();
    *(v42 + 32) = v37;
    v133 = v40;
    *(v39 + 32) = sub_226D6E91C();
    v125 = v39;
    v123 = v41;
    v43 = swift_allocObject();
    *(v43 + 16) = v142;
    *(v43 + 56) = MEMORY[0x277D837D0];
    v124 = sub_226B16404();
    *(v43 + 64) = v124;
    v44 = v141;
    *(v43 + 32) = v137;
    *(v43 + 40) = v44;

    *(v39 + 40) = sub_226D6E91C();
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_226D71F40;
    v46 = v138;
    v47 = v139;
    v48 = v139 + 104;
    v49 = *(v139 + 104);
    v115 = *MEMORY[0x277CC79D8];
    v49(v138);
    v141 = "Unknown classification outcome";
    v50 = swift_allocObject();
    *(v50 + 16) = v142;
    v51 = sub_226D69C9C();
    v52 = v124;
    *(v50 + 56) = MEMORY[0x277D837D0];
    *(v50 + 64) = v52;
    *(v50 + 32) = v51;
    *(v50 + 40) = v53;
    v54 = sub_226D6E91C();
    v57 = *(v47 + 8);
    v55 = v47 + 8;
    v56 = v57;
    v58 = v143;
    v57(v46, v143);
    *(v45 + 32) = v54;
    v59 = *MEMORY[0x277CC79D0];
    v137 = v48;
    v114 = v49;
    (v49)(v46, v59, v58);
    v60 = swift_allocObject();
    *(v60 + 16) = v142;
    v61 = sub_226D69C9C();
    *(v60 + 56) = MEMORY[0x277D837D0];
    *(v60 + 64) = v52;
    *(v60 + 32) = v61;
    *(v60 + 40) = v62;
    v63 = sub_226D6E91C();
    v57(v46, v143);
    *(v45 + 40) = v63;
    v64 = sub_226D6E5CC();

    v65 = objc_opt_self();
    v66 = [v65 orPredicateWithSubpredicates_];

    *(v125 + 48) = v66;
    v67 = v129;
    v68 = sub_226D6E5CC();

    v69 = [v65 andPredicateWithSubpredicates_];

    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_226D71F20;
    v71 = v127;
    *(v70 + 32) = v127;
    v72 = v71;
    v73 = sub_226D6E5CC();

    [v67 setSortDescriptors_];

    [v67 setPredicate_];
    [v67 setFetchLimit_];
    v74 = v132;
    v75 = sub_226D6EBBC();
    if (v74)
    {

      return;
    }

    v140 = v55;
    v141 = v72;
    v144 = v56;
    *&v142 = v69;
    if (v75 >> 62)
    {
      v113 = v75;
      v76 = sub_226D6EDFC();
      v75 = v113;
    }

    else
    {
      v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v77 = v121;
    v78 = v135;
    v79 = v136;
    v80 = v120;
    v81 = v122;
    v132 = 0;
    if (v76)
    {
      if ((v75 & 0xC000000000000001) != 0)
      {
        v82 = MEMORY[0x22AA8AFD0](0);
      }

      else
      {
        if (!*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v82 = *(v75 + 32);
      }

      v83 = v82;
      v84 = v119;

      if (v83)
      {
        v85 = [v83 timestamp];
        if (v85)
        {
          v86 = v85;
          sub_226D6D45C();

          v87 = 0;
        }

        else
        {
          v87 = 1;
        }

        (*(v79 + 56))(v84, v87, 1, v77);
        v88 = v84;
        v89 = v122;
        sub_226AFD80C(v88, v122, &qword_27D7A8BE0, &unk_226D718F0);
        v90 = v117;
        sub_226AC40E8(v89, v117, &qword_27D7A8BE0, &unk_226D718F0);
        if ((*(v79 + 48))(v90, 1, v77) == 1)
        {
          sub_226AC47B0(v89, &qword_27D7A8BE0, &unk_226D718F0);

          sub_226AC47B0(v90, &qword_27D7A8BE0, &unk_226D718F0);
          goto LABEL_18;
        }

        v135 = *(v79 + 32);
        v136 = v79 + 32;
        v135(v118, v90, v77);
        sub_226D69CFC();
        v92 = v116;
        v93 = v143;
        (v114)(v116, v115, v143);
        v94 = v139;
        (*(v139 + 56))(v92, 0, 1, v93);
        v95 = *(v131 + 48);
        sub_226AC40E8(v80, v78, &qword_27D7A68B0, qword_226D72098);
        v137 = v95;
        v96 = v94;
        sub_226AC40E8(v92, v78 + v95, &qword_27D7A68B0, qword_226D72098);
        v97 = *(v94 + 48);
        if (v97(v78, 1, v93) == 1)
        {

          sub_226AC47B0(v92, &qword_27D7A68B0, qword_226D72098);
          sub_226AC47B0(v80, &qword_27D7A68B0, qword_226D72098);
          sub_226AC47B0(v122, &qword_27D7A8BE0, &unk_226D718F0);
          v98 = v97(v78 + v137, 1, v93);
          v99 = v121;
          v100 = v78;
          if (v98 == 1)
          {
            sub_226AC47B0(v78, &qword_27D7A68B0, qword_226D72098);
            v101 = 1;
LABEL_26:
            v104 = v118;
            v105 = v134;
LABEL_28:
            v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A00, &qword_226D72538);
            v112 = *(v111 + 48);
            *v105 = v101 & 1;
            v135(&v105[v112], v104, v99);
            (*(*(v111 - 8) + 56))(v105, 0, 1, v111);
            return;
          }
        }

        else
        {
          v102 = v130;
          sub_226AC40E8(v78, v130, &qword_27D7A68B0, qword_226D72098);
          v103 = v137;
          v100 = v78;
          if (v97(v78 + v137, 1, v93) != 1)
          {
            v106 = v78 + v103;
            v107 = v138;
            (*(v96 + 32))(v138, v106, v93);
            sub_226BDF4BC(&qword_27D7A68B8, MEMORY[0x277CC7A48]);
            v108 = v102;
            v101 = sub_226D6E35C();

            v109 = v107;
            v110 = v144;
            v144(v109, v93);
            sub_226AC47B0(v116, &qword_27D7A68B0, qword_226D72098);
            sub_226AC47B0(v120, &qword_27D7A68B0, qword_226D72098);
            sub_226AC47B0(v122, &qword_27D7A8BE0, &unk_226D718F0);
            v110(v108, v93);
            v105 = v134;
            sub_226AC47B0(v100, &qword_27D7A68B0, qword_226D72098);
            v99 = v121;
            v104 = v118;
            goto LABEL_28;
          }

          sub_226AC47B0(v116, &qword_27D7A68B0, qword_226D72098);
          sub_226AC47B0(v120, &qword_27D7A68B0, qword_226D72098);
          sub_226AC47B0(v122, &qword_27D7A8BE0, &unk_226D718F0);
          v144(v102, v93);
          v99 = v121;
        }

        sub_226AC47B0(v100, &qword_27D7A68A8, &qword_226D72090);
        v101 = 0;
        goto LABEL_26;
      }
    }

    else
    {
    }

    (*(v79 + 56))(v81, 1, 1, v77);
    sub_226AC47B0(v81, &qword_27D7A8BE0, &unk_226D718F0);

LABEL_18:
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A00, &qword_226D72538);
    (*(*(v91 - 8) + 56))(v134, 1, 1, v91);
  }
}