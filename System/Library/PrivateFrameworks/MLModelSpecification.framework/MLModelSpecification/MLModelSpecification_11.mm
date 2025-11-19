uint64_t sub_25757AE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  v13 = *(a1 + 24);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = *(a1 + 24);

    sub_257743534();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if ((sub_257701EC4(*(a1 + 32)) & 1) == 0)
  {

    sub_257743514();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if ((sub_257701EC4(*(a1 + 40)) & 1) == 0)
  {

    sub_257743514();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (sub_257701EC4(*(a1 + 48)))
  {
    goto LABEL_15;
  }

  type metadata accessor for Proto_Tensor(0);
  sub_2575FB760(&qword_27F87E4F8, type metadata accessor for Proto_Tensor);

  sub_257743564();
  if (v4)
  {
  }

LABEL_15:
  swift_beginAccess();
  if ((sub_257701EC4(*(a1 + 56)) & 1) == 0)
  {
    type metadata accessor for Proto_Tensor(0);
    sub_2575FB760(&qword_27F87E4F8, type metadata accessor for Proto_Tensor);

    sub_257743564();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 64) != 1 || (result = sub_2577434B4(), !v4))
  {
    swift_beginAccess();
    sub_257487308();
    v17 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
    result = __swift_getEnumTagSinglePayload(v12, 1, v17);
    if (result != 1)
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_25757C5CC(a1, a2, a3, a4);
          break;
        case 2u:
          sub_25757C800(a1, a2, a3, a4);
          break;
        case 3u:
          sub_25757CA34(a1, a2, a3, a4);
          break;
        case 4u:
          sub_25757CC68(a1, a2, a3, a4);
          break;
        case 5u:
          sub_25757CE9C(a1, a2, a3, a4);
          break;
        case 6u:
          sub_25757D0D0(a1, a2, a3, a4);
          break;
        case 7u:
          sub_25757D304(a1, a2, a3, a4);
          break;
        case 8u:
          sub_25757D538(a1, a2, a3, a4);
          break;
        case 9u:
          sub_25757D76C(a1, a2, a3, a4);
          break;
        case 0xAu:
          sub_25757D9A0(a1, a2, a3, a4);
          break;
        case 0xBu:
          sub_25757DBD4(a1, a2, a3, a4);
          break;
        case 0xCu:
          sub_25757DE08(a1, a2, a3, a4);
          break;
        case 0xDu:
          sub_25757E03C(a1, a2, a3, a4);
          break;
        case 0xEu:
          sub_25757E270(a1, a2, a3, a4);
          break;
        case 0xFu:
          sub_25757E4A4(a1, a2, a3, a4);
          break;
        case 0x10u:
          sub_25757E6D8(a1, a2, a3, a4);
          break;
        case 0x11u:
          sub_25757E90C(a1, a2, a3, a4);
          break;
        case 0x12u:
          sub_25757EB40(a1, a2, a3, a4);
          break;
        case 0x13u:
          sub_25757ED74(a1, a2, a3, a4);
          break;
        case 0x14u:
          sub_25757EFA8(a1, a2, a3, a4);
          break;
        case 0x15u:
          sub_25757F1DC(a1, a2, a3, a4);
          break;
        case 0x16u:
          sub_25757F410(a1, a2, a3, a4);
          break;
        case 0x17u:
          sub_25757F644(a1, a2, a3, a4);
          break;
        case 0x18u:
          sub_25757F878(a1, a2, a3, a4);
          break;
        case 0x19u:
          sub_25757FAAC(a1, a2, a3, a4);
          break;
        case 0x1Au:
          sub_25757FCE0(a1, a2, a3, a4);
          break;
        case 0x1Bu:
          sub_25757FF14(a1, a2, a3, a4);
          break;
        case 0x1Cu:
          sub_257580148(a1, a2, a3, a4);
          break;
        case 0x1Du:
          sub_25758037C(a1, a2, a3, a4);
          break;
        case 0x1Eu:
          sub_2575805B0(a1, a2, a3, a4);
          break;
        case 0x1Fu:
          sub_2575807E4(a1, a2, a3, a4);
          break;
        case 0x20u:
          sub_257580A18(a1, a2, a3, a4);
          break;
        case 0x21u:
          sub_257580C4C(a1, a2, a3, a4);
          break;
        case 0x22u:
          sub_257580E80(a1, a2, a3, a4);
          break;
        case 0x23u:
          sub_2575810B4(a1, a2, a3, a4);
          break;
        case 0x24u:
          sub_2575812E8(a1, a2, a3, a4);
          break;
        case 0x25u:
          sub_25758151C(a1, a2, a3, a4);
          break;
        case 0x26u:
          sub_257581750(a1, a2, a3, a4);
          break;
        case 0x27u:
          sub_257581984(a1, a2, a3, a4);
          break;
        case 0x28u:
          sub_257581BB8(a1, a2, a3, a4);
          break;
        case 0x29u:
          sub_257581DEC(a1, a2, a3, a4);
          break;
        case 0x2Au:
          sub_257582020(a1, a2, a3, a4);
          break;
        case 0x2Bu:
          sub_257582254(a1, a2, a3, a4);
          break;
        case 0x2Cu:
          sub_257582488(a1, a2, a3, a4);
          break;
        case 0x2Du:
          sub_2575826BC(a1, a2, a3, a4);
          break;
        case 0x2Eu:
          sub_2575828F0(a1, a2, a3, a4);
          break;
        case 0x2Fu:
          sub_257582B24(a1, a2, a3, a4);
          break;
        case 0x30u:
          sub_257582D58(a1, a2, a3, a4);
          break;
        case 0x31u:
          sub_257582F8C(a1, a2, a3, a4);
          break;
        case 0x32u:
          sub_2575831C0(a1, a2, a3, a4);
          break;
        case 0x33u:
          sub_2575833F4(a1, a2, a3, a4);
          break;
        case 0x34u:
          sub_257583628(a1, a2, a3, a4);
          break;
        case 0x35u:
          sub_25758385C(a1, a2, a3, a4);
          break;
        case 0x36u:
          sub_257583A90(a1, a2, a3, a4);
          break;
        case 0x37u:
          sub_257583CC4(a1, a2, a3, a4);
          break;
        case 0x38u:
          sub_257583EF8(a1, a2, a3, a4);
          break;
        case 0x39u:
          sub_25758412C(a1, a2, a3, a4);
          break;
        case 0x3Au:
          sub_257584360(a1, a2, a3, a4);
          break;
        case 0x3Bu:
          sub_257584594(a1, a2, a3, a4);
          break;
        case 0x3Cu:
          sub_2575847C8(a1, a2, a3, a4);
          break;
        case 0x3Du:
          sub_2575849FC(a1, a2, a3, a4);
          break;
        case 0x3Eu:
          sub_257584C30(a1, a2, a3, a4);
          break;
        case 0x3Fu:
          sub_257584E64(a1, a2, a3, a4);
          break;
        case 0x40u:
          sub_257585098(a1, a2, a3, a4);
          break;
        case 0x41u:
          sub_2575852CC(a1, a2, a3, a4);
          break;
        case 0x42u:
          sub_257585500(a1, a2, a3, a4);
          break;
        case 0x43u:
          sub_257585734(a1, a2, a3, a4);
          break;
        case 0x44u:
          sub_257585968(a1, a2, a3, a4);
          break;
        case 0x45u:
          sub_257585B9C(a1, a2, a3, a4);
          break;
        case 0x46u:
          sub_257585DD0(a1, a2, a3, a4);
          break;
        case 0x47u:
          sub_257586004(a1, a2, a3, a4);
          break;
        case 0x48u:
          sub_257586238(a1, a2, a3, a4);
          break;
        case 0x49u:
          sub_25758646C(a1, a2, a3, a4);
          break;
        case 0x4Au:
          sub_2575866A0(a1, a2, a3, a4);
          break;
        case 0x4Bu:
          sub_2575868D4(a1, a2, a3, a4);
          break;
        case 0x4Cu:
          sub_257586B08(a1, a2, a3, a4);
          break;
        case 0x4Du:
          sub_257586D3C(a1, a2, a3, a4);
          break;
        case 0x4Eu:
          sub_257586F70(a1, a2, a3, a4);
          break;
        case 0x4Fu:
          sub_2575871A4(a1, a2, a3, a4);
          break;
        case 0x50u:
          sub_2575873D8(a1, a2, a3, a4);
          break;
        case 0x51u:
          sub_25758760C(a1, a2, a3, a4);
          break;
        case 0x52u:
          sub_257587840(a1, a2, a3, a4);
          break;
        case 0x53u:
          sub_257587A74(a1, a2, a3, a4);
          break;
        case 0x54u:
          sub_257587CA8(a1, a2, a3, a4);
          break;
        case 0x55u:
          sub_257587EDC(a1, a2, a3, a4);
          break;
        case 0x56u:
          sub_257588110(a1, a2, a3, a4);
          break;
        case 0x57u:
          sub_257588344(a1, a2, a3, a4);
          break;
        case 0x58u:
          sub_257588578(a1, a2, a3, a4);
          break;
        case 0x59u:
          sub_2575887AC(a1, a2, a3, a4);
          break;
        case 0x5Au:
          sub_2575889E0(a1, a2, a3, a4);
          break;
        case 0x5Bu:
          sub_257588C14(a1, a2, a3, a4);
          break;
        case 0x5Cu:
          sub_257588E48(a1, a2, a3, a4);
          break;
        case 0x5Du:
          sub_25758907C(a1, a2, a3, a4);
          break;
        case 0x5Eu:
          sub_2575892B0(a1, a2, a3, a4);
          break;
        case 0x5Fu:
          sub_2575894E4(a1, a2, a3, a4);
          break;
        case 0x60u:
          sub_257589718(a1, a2, a3, a4);
          break;
        case 0x61u:
          sub_25758994C(a1, a2, a3, a4);
          break;
        case 0x62u:
          sub_257589B80(a1, a2, a3, a4);
          break;
        case 0x63u:
          sub_257589DB4(a1, a2, a3, a4);
          break;
        case 0x64u:
          sub_257589FE8(a1, a2, a3, a4);
          break;
        case 0x65u:
          sub_25758A21C(a1, a2, a3, a4);
          break;
        case 0x66u:
          sub_25758A450(a1, a2, a3, a4);
          break;
        case 0x67u:
          sub_25758A684(a1, a2, a3, a4);
          break;
        case 0x68u:
          sub_25758A8B8(a1, a2, a3, a4);
          break;
        case 0x69u:
          sub_25758AAEC(a1, a2, a3, a4);
          break;
        case 0x6Au:
          sub_25758AD20(a1, a2, a3, a4);
          break;
        case 0x6Bu:
          sub_25758AF54(a1, a2, a3, a4);
          break;
        case 0x6Cu:
          sub_25758B188(a1, a2, a3, a4);
          break;
        case 0x6Du:
          sub_25758B3BC(a1, a2, a3, a4);
          break;
        case 0x6Eu:
          sub_25758B5F0(a1, a2, a3, a4);
          break;
        case 0x6Fu:
          sub_25758B824(a1, a2, a3, a4);
          break;
        case 0x70u:
          sub_25758BA58(a1, a2, a3, a4);
          break;
        case 0x71u:
          sub_25758BC8C(a1, a2, a3, a4);
          break;
        case 0x72u:
          sub_25758BEC0(a1, a2, a3, a4);
          break;
        case 0x73u:
          sub_25758C0F4(a1, a2, a3, a4);
          break;
        case 0x74u:
          sub_25758C328(a1, a2, a3, a4);
          break;
        case 0x75u:
          sub_25758C55C(a1, a2, a3, a4);
          break;
        case 0x76u:
          sub_25758C790(a1, a2, a3, a4);
          break;
        case 0x77u:
          sub_25758C9C4(a1, a2, a3, a4);
          break;
        case 0x78u:
          sub_25758CBF8(a1, a2, a3, a4);
          break;
        case 0x79u:
          sub_25758CE2C(a1, a2, a3, a4);
          break;
        case 0x7Au:
          sub_25758D060(a1, a2, a3, a4);
          break;
        case 0x7Bu:
          sub_25758D294(a1, a2, a3, a4);
          break;
        case 0x7Cu:
          sub_25758D4C8(a1, a2, a3, a4);
          break;
        case 0x7Du:
          sub_25758D6FC(a1, a2, a3, a4);
          break;
        case 0x7Eu:
          sub_25758D930(a1, a2, a3, a4);
          break;
        case 0x7Fu:
          sub_25758DB64(a1, a2, a3, a4);
          break;
        case 0x80u:
          sub_25758DD98(a1, a2, a3, a4);
          break;
        case 0x81u:
          sub_25758DFCC(a1, a2, a3, a4);
          break;
        case 0x82u:
          sub_25758E200(a1, a2, a3, a4);
          break;
        case 0x83u:
          sub_25758E434(a1, a2, a3, a4);
          break;
        case 0x84u:
          sub_25758E668(a1, a2, a3, a4);
          break;
        case 0x85u:
          sub_25758E89C(a1, a2, a3, a4);
          break;
        case 0x86u:
          sub_25758EAD0(a1, a2, a3, a4);
          break;
        case 0x87u:
          sub_25758ED04(a1, a2, a3, a4);
          break;
        case 0x88u:
          sub_25758EF38(a1, a2, a3, a4);
          break;
        case 0x89u:
          sub_25758F16C(a1, a2, a3, a4);
          break;
        case 0x8Au:
          sub_25758F3A0(a1, a2, a3, a4);
          break;
        case 0x8Bu:
          sub_25758F5D4(a1, a2, a3, a4);
          break;
        case 0x8Cu:
          sub_25758F808(a1, a2, a3, a4);
          break;
        case 0x8Du:
          sub_25758FA3C(a1, a2, a3, a4);
          break;
        case 0x8Eu:
          sub_25758FC70(a1, a2, a3, a4);
          break;
        case 0x8Fu:
          sub_25758FEA4(a1, a2, a3, a4);
          break;
        case 0x90u:
          sub_2575900D8(a1, a2, a3, a4);
          break;
        case 0x91u:
          sub_25759030C(a1, a2, a3, a4);
          break;
        case 0x92u:
          sub_257590540(a1, a2, a3, a4);
          break;
        case 0x93u:
          sub_257590774(a1, a2, a3, a4);
          break;
        case 0x94u:
          sub_2575909A8(a1, a2, a3, a4);
          break;
        case 0x95u:
          sub_257590BDC(a1, a2, a3, a4);
          break;
        case 0x96u:
          sub_257590E10(a1, a2, a3, a4);
          break;
        case 0x97u:
          sub_257591044(a1, a2, a3, a4);
          break;
        case 0x98u:
          sub_257591278(a1, a2, a3, a4);
          break;
        case 0x99u:
          sub_2575914AC(a1, a2, a3, a4);
          break;
        case 0x9Au:
          sub_2575916E0(a1, a2, a3, a4);
          break;
        case 0x9Bu:
          sub_257591914(a1, a2, a3, a4);
          break;
        case 0x9Cu:
          sub_257591B48(a1, a2, a3, a4);
          break;
        case 0x9Du:
          sub_257591D7C(a1, a2, a3, a4);
          break;
        default:
          sub_25757C39C(a1, a2, a3, a4);
          break;
      }

      return sub_257609BCC();
    }
  }

  return result;
}

uint64_t sub_25757C39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ConvolutionLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E270, type metadata accessor for Proto_ConvolutionLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757C5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_PoolingLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E1E0, type metadata accessor for Proto_PoolingLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757C800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ActivationParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E510, type metadata accessor for Proto_ActivationParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757CA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_InnerProductLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E240, type metadata accessor for Proto_InnerProductLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757CC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_EmbeddingLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E228, type metadata accessor for Proto_EmbeddingLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757CE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BatchnormLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E1F8, type metadata accessor for Proto_BatchnormLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757D0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DF30, type metadata accessor for Proto_MeanVarianceNormalizeLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757D304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_L2NormalizeLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E038, type metadata accessor for Proto_L2NormalizeLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757D538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SoftmaxLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E100, type metadata accessor for Proto_SoftmaxLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757D76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LRNLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E118, type metadata accessor for Proto_LRNLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757D9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CropLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A210, type metadata accessor for Proto_CropLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757DBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_PaddingLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E178, type metadata accessor for Proto_PaddingLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757DE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_UpsampleLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E0B0, type metadata accessor for Proto_UpsampleLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757E03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ResizeBilinearLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A218, type metadata accessor for Proto_ResizeBilinearLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757E270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CropResizeLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A220, type metadata accessor for Proto_CropResizeLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757E4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_UnaryFunctionLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E0C0, type metadata accessor for Proto_UnaryFunctionLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757E6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AddLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E0E0, type metadata accessor for Proto_AddLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757E90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_MultiplyLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E0D0, type metadata accessor for Proto_MultiplyLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757EB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AverageLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DF88, type metadata accessor for Proto_AverageLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757ED74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ScaleLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E068, type metadata accessor for Proto_ScaleLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757EFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BiasLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E080, type metadata accessor for Proto_BiasLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757F1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_MaxLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DF70, type metadata accessor for Proto_MaxLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757F410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_MinLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DF58, type metadata accessor for Proto_MinLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757F644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_DotProductLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DF40, type metadata accessor for Proto_DotProductLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757F878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReduceLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DFB0, type metadata accessor for Proto_ReduceLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757FAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  ConstantLayerParams = type metadata accessor for Proto_LoadConstantLayerParams(0);
  v9 = *(*(ConstantLayerParams - 8) + 64);
  MEMORY[0x28223BE20](ConstantLayerParams);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E050, type metadata accessor for Proto_LoadConstantLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757FCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReshapeLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E008, type metadata accessor for Proto_ReshapeLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757FF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_FlattenLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E020, type metadata accessor for Proto_FlattenLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257580148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_PermuteLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DFF0, type metadata accessor for Proto_PermuteLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758037C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ConcatLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E130, type metadata accessor for Proto_ConcatLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575805B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SplitLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E0F0, type metadata accessor for Proto_SplitLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575807E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SequenceRepeatLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A258, type metadata accessor for Proto_SequenceRepeatLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257580A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReorganizeDataLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A260, type metadata accessor for Proto_ReorganizeDataLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257580C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SliceLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DFC8, type metadata accessor for Proto_SliceLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257580E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SimpleRecurrentLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A1A8, type metadata accessor for Proto_SimpleRecurrentLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575810B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GRULayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DF00, type metadata accessor for Proto_GRULayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575812E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DEB0, type metadata accessor for Proto_UniDirectionalLSTMLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758151C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BiDirectionalLSTMLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DE98, type metadata accessor for Proto_BiDirectionalLSTMLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257581750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CustomLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DE80, type metadata accessor for Proto_CustomLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257581984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CopyLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F879B70, type metadata accessor for Proto_CopyLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257581BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BranchLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A330, type metadata accessor for Proto_BranchLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257581DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LoopLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F879B78, type metadata accessor for Proto_LoopLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257582020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LoopBreakLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F879B80, type metadata accessor for Proto_LoopBreakLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257582254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LoopContinueLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 43)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F879B88, type metadata accessor for Proto_LoopContinueLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257582488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RangeStaticLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 44)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D5E0, type metadata accessor for Proto_RangeStaticLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575826BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RangeDynamicLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 45)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D5C8, type metadata accessor for Proto_RangeDynamicLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575828F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ClipLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 46)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D680, type metadata accessor for Proto_ClipLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257582B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CeilLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 47)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D6F8, type metadata accessor for Proto_CeilLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257582D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_FloorLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 48)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D6B8, type metadata accessor for Proto_FloorLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257582F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SignLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 49)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D698, type metadata accessor for Proto_SignLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575831C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RoundLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 50)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D6D8, type metadata accessor for Proto_RoundLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575833F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Exp2LayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 51)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DBD0, type metadata accessor for Proto_Exp2LayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257583628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SinLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 52)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DD68, type metadata accessor for Proto_SinLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758385C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CosLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 53)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DD48, type metadata accessor for Proto_CosLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257583A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_TanLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 54)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DD28, type metadata accessor for Proto_TanLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257583CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AsinLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 55)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DD08, type metadata accessor for Proto_AsinLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257583EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AcosLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 56)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DCE8, type metadata accessor for Proto_AcosLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758412C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AtanLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 57)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DCC8, type metadata accessor for Proto_AtanLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257584360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SinhLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 58)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DCA8, type metadata accessor for Proto_SinhLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257584594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CoshLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 59)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DC88, type metadata accessor for Proto_CoshLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575847C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_TanhLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 60)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DC68, type metadata accessor for Proto_TanhLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575849FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AsinhLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 61)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DC48, type metadata accessor for Proto_AsinhLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257584C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AcoshLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 62)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DC28, type metadata accessor for Proto_AcoshLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257584E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AtanhLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 63)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DC08, type metadata accessor for Proto_AtanhLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257585098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ErfLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 64)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D608, type metadata accessor for Proto_ErfLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575852CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GeluLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 65)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D5F0, type metadata accessor for Proto_GeluLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257585500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_EqualLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 66)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E418, type metadata accessor for Proto_EqualLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257585734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_NotEqualLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 67)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E400, type metadata accessor for Proto_NotEqualLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257585968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LessThanLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 68)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E448, type metadata accessor for Proto_LessThanLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257585B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LessEqualLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 69)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E430, type metadata accessor for Proto_LessEqualLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257585DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GreaterThanLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 70)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E478, type metadata accessor for Proto_GreaterThanLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257586004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GreaterEqualLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 71)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E460, type metadata accessor for Proto_GreaterEqualLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257586238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LogicalOrLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 72)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E3C0, type metadata accessor for Proto_LogicalOrLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758646C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LogicalXorLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 73)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E3A0, type metadata accessor for Proto_LogicalXorLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575866A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LogicalNotLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 74)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E380, type metadata accessor for Proto_LogicalNotLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575868D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LogicalAndLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 75)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E3E0, type metadata accessor for Proto_LogicalAndLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257586B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ModBroadcastableLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 76)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DAD0, type metadata accessor for Proto_ModBroadcastableLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257586D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_MinBroadcastableLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 77)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DAE8, type metadata accessor for Proto_MinBroadcastableLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257586F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_MaxBroadcastableLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 78)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DB00, type metadata accessor for Proto_MaxBroadcastableLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575871A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AddBroadcastableLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 79)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DB10, type metadata accessor for Proto_AddBroadcastableLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575873D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_PowBroadcastableLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 80)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DBF0, type metadata accessor for Proto_PowBroadcastableLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758760C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_DivideBroadcastableLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 81)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DA78, type metadata accessor for Proto_DivideBroadcastableLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257587840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_FloorDivBroadcastableLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 82)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DAB8, type metadata accessor for Proto_FloorDivBroadcastableLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257587A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_MultiplyBroadcastableLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 83)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DA88, type metadata accessor for Proto_MultiplyBroadcastableLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257587CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SubtractBroadcastableLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 84)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DAA0, type metadata accessor for Proto_SubtractBroadcastableLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257587EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_TileLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 85)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A268, type metadata accessor for Proto_TileLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257588110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_StackLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 86)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DA00, type metadata accessor for Proto_StackLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257588344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GatherLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 87)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DA60, type metadata accessor for Proto_GatherLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257588578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ScatterLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 88)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DA50, type metadata accessor for Proto_ScatterLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575887AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GatherNDLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 89)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DA40, type metadata accessor for Proto_GatherNDLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575889E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ScatterNDLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 90)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DA30, type metadata accessor for Proto_ScatterNDLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257588C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SoftmaxNDLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 91)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DE00, type metadata accessor for Proto_SoftmaxNDLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257588E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GatherAlongAxisLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 92)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DA20, type metadata accessor for Proto_GatherAlongAxisLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758907C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ScatterAlongAxisLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 93)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DA10, type metadata accessor for Proto_ScatterAlongAxisLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575892B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReverseLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 94)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A270, type metadata accessor for Proto_ReverseLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575894E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReverseSeqLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 95)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A278, type metadata accessor for Proto_ReverseSeqLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257589718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SplitNDLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 96)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D710, type metadata accessor for Proto_SplitNDLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758994C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ConcatNDLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 97)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DE18, type metadata accessor for Proto_ConcatNDLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257589B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_TransposeLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 98)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DE48, type metadata accessor for Proto_TransposeLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257589DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SliceStaticLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 99)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D670, type metadata accessor for Proto_SliceStaticLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257589FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SliceDynamicLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 100)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D658, type metadata accessor for Proto_SliceDynamicLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758A21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SlidingWindowsLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 101)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D5B0, type metadata accessor for Proto_SlidingWindowsLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758A450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_TopKLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 102)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D758, type metadata accessor for Proto_TopKLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758A684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ArgMinLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 103)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D728, type metadata accessor for Proto_ArgMinLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758A8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ArgMaxLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 104)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D740, type metadata accessor for Proto_ArgMaxLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758AAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_EmbeddingNDLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 105)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E210, type metadata accessor for Proto_EmbeddingNDLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758AD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 106)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DE30, type metadata accessor for Proto_BatchedMatMulLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758AF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  ShapeLayerParams = type metadata accessor for Proto_GetShapeLayerParams(0);
  v9 = *(*(ShapeLayerParams - 8) + 64);
  MEMORY[0x28223BE20](ShapeLayerParams);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 107)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D628, type metadata accessor for Proto_GetShapeLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758B188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  ConstantNDLayerParams = type metadata accessor for Proto_LoadConstantNDLayerParams(0);
  v9 = *(*(ConstantNDLayerParams - 8) + 64);
  MEMORY[0x28223BE20](ConstantNDLayerParams);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 108)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DDD0, type metadata accessor for Proto_LoadConstantNDLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758B3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_FillLikeLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 109)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A280, type metadata accessor for Proto_FillLikeLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758B5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_FillStaticLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 110)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A288, type metadata accessor for Proto_FillStaticLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758B824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_FillDynamicLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 111)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A290, type metadata accessor for Proto_FillDynamicLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758BA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BroadcastToLikeLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 112)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DB58, type metadata accessor for Proto_BroadcastToLikeLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758BC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BroadcastToStaticLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 113)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DB40, type metadata accessor for Proto_BroadcastToStaticLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758BEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BroadcastToDynamicLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 114)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DB28, type metadata accessor for Proto_BroadcastToDynamicLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758C0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SqueezeLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 115)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D770, type metadata accessor for Proto_SqueezeLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758C328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ExpandDimsLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 116)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D7E0, type metadata accessor for Proto_ExpandDimsLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758C55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_FlattenTo2DLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 117)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D7D0, type metadata accessor for Proto_FlattenTo2DLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758C790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReshapeLikeLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 118)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D7A0, type metadata accessor for Proto_ReshapeLikeLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758C9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReshapeStaticLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 119)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D7B8, type metadata accessor for Proto_ReshapeStaticLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758CBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReshapeDynamicLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 120)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D788, type metadata accessor for Proto_ReshapeDynamicLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758CE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RankPreservingReshapeLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 121)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D9F0, type metadata accessor for Proto_RankPreservingReshapeLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758D060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ConstantPaddingLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 122)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D9D8, type metadata accessor for Proto_ConstantPaddingLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758D294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RandomNormalLikeLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 123)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D9C0, type metadata accessor for Proto_RandomNormalLikeLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758D4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RandomNormalStaticLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 124)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D9A8, type metadata accessor for Proto_RandomNormalStaticLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758D6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RandomNormalDynamicLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 125)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D990, type metadata accessor for Proto_RandomNormalDynamicLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758D930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RandomUniformLikeLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 126)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D978, type metadata accessor for Proto_RandomUniformLikeLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758DB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RandomUniformStaticLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 127)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D960, type metadata accessor for Proto_RandomUniformStaticLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758DD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RandomUniformDynamicLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 128)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D948, type metadata accessor for Proto_RandomUniformDynamicLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758DFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RandomBernoulliLikeLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 129)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D930, type metadata accessor for Proto_RandomBernoulliLikeLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758E200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RandomBernoulliStaticLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 130)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D918, type metadata accessor for Proto_RandomBernoulliStaticLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758E434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RandomBernoulliDynamicLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 131)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D900, type metadata accessor for Proto_RandomBernoulliDynamicLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758E668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CategoricalDistributionLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 132)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D8E8, type metadata accessor for Proto_CategoricalDistributionLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758E89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReduceL1LayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 133)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D8D0, type metadata accessor for Proto_ReduceL1LayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758EAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReduceL2LayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 134)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D8B8, type metadata accessor for Proto_ReduceL2LayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758ED04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReduceMaxLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 135)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D8A0, type metadata accessor for Proto_ReduceMaxLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758EF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReduceMinLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 136)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D888, type metadata accessor for Proto_ReduceMinLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758F16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReduceSumLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 137)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D870, type metadata accessor for Proto_ReduceSumLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758F3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReduceProdLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 138)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D858, type metadata accessor for Proto_ReduceProdLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758F5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReduceMeanLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 139)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D840, type metadata accessor for Proto_ReduceMeanLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758F808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReduceLogSumLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 140)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D828, type metadata accessor for Proto_ReduceLogSumLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758FA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReduceSumSquareLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 141)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D810, type metadata accessor for Proto_ReduceSumSquareLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758FC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReduceLogSumExpLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 142)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D7F8, type metadata accessor for Proto_ReduceLogSumExpLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758FEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_WhereNonZeroLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 143)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DBB8, type metadata accessor for Proto_WhereNonZeroLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575900D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_MatrixBandPartLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 144)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DBA0, type metadata accessor for Proto_MatrixBandPartLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25759030C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LowerTriangularLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 145)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DB70, type metadata accessor for Proto_LowerTriangularLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257590540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_UpperTriangularLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 146)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DB88, type metadata accessor for Proto_UpperTriangularLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257590774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_WhereBroadcastableLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 147)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DD88, type metadata accessor for Proto_WhereBroadcastableLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575909A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LayerNormalizationLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 148)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D598, type metadata accessor for Proto_LayerNormalizationLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257590BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_NonMaximumSuppressionLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 149)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D580, type metadata accessor for Proto_NonMaximumSuppressionLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257590E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_OneHotLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 150)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D510, type metadata accessor for Proto_OneHotLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257591044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CumSumLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 151)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D4F8, type metadata accessor for Proto_CumSumLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257591278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ClampedReLULayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 152)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D568, type metadata accessor for Proto_ClampedReLULayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575914AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ArgSortLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 153)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D550, type metadata accessor for Proto_ArgSortLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575916E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Pooling3DLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 154)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E1A8, type metadata accessor for Proto_Pooling3DLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257591914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GlobalPooling3DLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 155)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E190, type metadata accessor for Proto_GlobalPooling3DLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257591B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SliceBySizeLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 156)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D538, type metadata accessor for Proto_SliceBySizeLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257591D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Convolution3DLayerParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 157)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E258, type metadata accessor for Proto_Convolution3DLayerParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257591FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_0_0();
  v9 = *(v8(v7) + 20);
  if (*(v5 + v9) != *(v4 + v9))
  {
    v10 = *(v5 + v9);

    v11 = OUTLINED_FUNCTION_277();
    v12 = a4(v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2577431B4();
  OUTLINED_FUNCTION_1_16();
  sub_2575FB760(v13, v14);
  OUTLINED_FUNCTION_44_1();
  return OUTLINED_FUNCTION_266_0() & 1;
}

void sub_2575920A8()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v7 = OUTLINED_FUNCTION_42_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v52 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA40, &qword_2577673F0);
  OUTLINED_FUNCTION_4(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_75_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v16 = OUTLINED_FUNCTION_13(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_183();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_134_0();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v21 = *(v5 + 16);
  v20 = *(v5 + 24);
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v22 = v21 == *(v3 + 16) && v20 == *(v3 + 24);
  if (v22 || (sub_257743994() & 1) != 0)
  {
    OUTLINED_FUNCTION_76_1();
    swift_beginAccess();
    v23 = *(v5 + 32);
    OUTLINED_FUNCTION_76_1();
    swift_beginAccess();
    if (sub_257479C78(v23, *(v3 + 32)))
    {
      OUTLINED_FUNCTION_76_1();
      swift_beginAccess();
      v24 = *(v5 + 40);
      OUTLINED_FUNCTION_76_1();
      swift_beginAccess();
      if (sub_257479C78(v24, *(v3 + 40)))
      {
        v51 = v0;
        OUTLINED_FUNCTION_76_1();
        swift_beginAccess();
        v25 = *(v5 + 48);
        OUTLINED_FUNCTION_76_1();
        swift_beginAccess();
        v26 = *(v3 + 48);

        sub_257482AFC();
        v28 = v27;

        if (v28)
        {
          OUTLINED_FUNCTION_76_1();
          swift_beginAccess();
          v29 = *(v5 + 56);
          OUTLINED_FUNCTION_76_1();
          swift_beginAccess();
          v30 = *(v3 + 56);

          OUTLINED_FUNCTION_167_1();
          sub_257482AFC();
          v32 = v31;

          if (v32)
          {
            OUTLINED_FUNCTION_76_1();
            swift_beginAccess();
            v33 = *(v5 + 64);
            OUTLINED_FUNCTION_76_1();
            swift_beginAccess();
            if (v33 == *(v3 + 64))
            {
              OUTLINED_FUNCTION_76_1();
              swift_beginAccess();
              sub_257487308();
              OUTLINED_FUNCTION_76_1();
              swift_beginAccess();
              v34 = *(v11 + 48);
              sub_257487308();
              sub_257487308();
              OUTLINED_FUNCTION_65(v51);
              if (v22)
              {

                sub_2574695E4(v1, &qword_27F87A318, &qword_257745D10);
                OUTLINED_FUNCTION_65(v51 + v34);
                if (v22)
                {
                  sub_2574695E4(v51, &qword_27F87A318, &qword_257745D10);
                  goto LABEL_12;
                }
              }

              else
              {
                OUTLINED_FUNCTION_144_0();
                sub_257487308();
                OUTLINED_FUNCTION_65(v51 + v34);
                if (!v35)
                {
                  sub_257609B78();
                  v36 = OUTLINED_FUNCTION_194();
                  sub_257528D58(v36, v37, v38, v39, v40, v41, v42, v43, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);

                  sub_257609BCC();
                  OUTLINED_FUNCTION_153_0();
                  sub_2574695E4(v44, v45, v46);
                  OUTLINED_FUNCTION_365();
                  sub_257609BCC();
                  OUTLINED_FUNCTION_153_0();
                  sub_2574695E4(v47, v48, v49);
                  goto LABEL_12;
                }

                sub_2574695E4(v1, &qword_27F87A318, &qword_257745D10);
                OUTLINED_FUNCTION_177_0();
                sub_257609BCC();
              }

              sub_2574695E4(v51, &qword_27F87FA40, &qword_2577673F0);
              goto LABEL_12;
            }
          }
        }
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257592684(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F208, type metadata accessor for Proto_NeuralNetworkLayer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257592724(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E4E0, type metadata accessor for Proto_NeuralNetworkLayer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575927EC()
{
  sub_2575FB760(&qword_27F87E4E0, type metadata accessor for Proto_NeuralNetworkLayer);

  return sub_257743424();
}

uint64_t sub_2575928AC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8C68);
  __swift_project_value_buffer(v0, qword_27F8E8C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ifBranch";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "elseBranch";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257592A74()
{
  OUTLINED_FUNCTION_100_1();
  while (1)
  {
    OUTLINED_FUNCTION_194();
    result = sub_257743234();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_167_1();
      OUTLINED_FUNCTION_353_0();
      v0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_167_1();
      OUTLINED_FUNCTION_353_0();
      v2();
    }
  }

  return result;
}

uint64_t sub_257592AF0()
{
  v0 = *(type metadata accessor for Proto_BranchLayerParams(0) + 20);
  type metadata accessor for Proto_NeuralNetwork(0);
  sub_2575FB760(&qword_27F87A0A8, type metadata accessor for Proto_NeuralNetwork);
  return sub_2577433D4();
}

uint64_t sub_257592BA4()
{
  v0 = *(type metadata accessor for Proto_BranchLayerParams(0) + 24);
  type metadata accessor for Proto_NeuralNetwork(0);
  sub_2575FB760(&qword_27F87A0A8, type metadata accessor for Proto_NeuralNetwork);
  return sub_2577433D4();
}

uint64_t sub_257592C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_111_0();
  v7 = OUTLINED_FUNCTION_4_5();
  result = v8(v7);
  if (!v5)
  {
    v10 = OUTLINED_FUNCTION_4_5();
    a5(v10);
    OUTLINED_FUNCTION_222();
    return sub_257743194();
  }

  return result;
}

uint64_t sub_257592CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A328, &unk_257752BB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_NeuralNetwork(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_BranchLayerParams(0) + 20);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A328, &unk_257752BB0);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87A0A8, type metadata accessor for Proto_NeuralNetwork);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_257592E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A328, &unk_257752BB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_NeuralNetwork(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_BranchLayerParams(0) + 24);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A328, &unk_257752BB0);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87A0A8, type metadata accessor for Proto_NeuralNetwork);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_257593150(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ED78, type metadata accessor for Proto_BranchLayerParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575931F0(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87A330, type metadata accessor for Proto_BranchLayerParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575932B8()
{
  sub_2575FB760(&qword_27F87A330, type metadata accessor for Proto_BranchLayerParams);

  return sub_257743424();
}

uint64_t sub_257593338()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8C80);
  __swift_project_value_buffer(v0, qword_27F8E8C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "maxLoopIterations";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "conditionVar";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "conditionNetwork";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "bodyNetwork";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_25759357C()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_53();
        sub_2577433B4();
        break;
      case 2:
        OUTLINED_FUNCTION_89_2();
        sub_257743394();
        break;
      case 3:
        OUTLINED_FUNCTION_6_8();
        sub_25759361C();
        break;
      case 4:
        OUTLINED_FUNCTION_6_8();
        sub_2575936D0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_25759361C()
{
  v0 = *(type metadata accessor for Proto_LoopLayerParams(0) + 28);
  type metadata accessor for Proto_NeuralNetwork(0);
  sub_2575FB760(&qword_27F87A0A8, type metadata accessor for Proto_NeuralNetwork);
  return sub_2577433D4();
}

uint64_t sub_2575936D0()
{
  v0 = *(type metadata accessor for Proto_LoopLayerParams(0) + 32);
  type metadata accessor for Proto_NeuralNetwork(0);
  sub_2575FB760(&qword_27F87A0A8, type metadata accessor for Proto_NeuralNetwork);
  return sub_2577433D4();
}

uint64_t sub_257593784()
{
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_8_6(), result = sub_257743554(), !v0))
  {
    v3 = *(v1 + 8);
    v4 = *(v1 + 16);
    OUTLINED_FUNCTION_1_6();
    if (!v5 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), !v0))
    {
      v6 = OUTLINED_FUNCTION_3_9();
      result = sub_257593820(v6, v7, v8, v9);
      if (!v0)
      {
        v10 = OUTLINED_FUNCTION_3_9();
        sub_257593A00(v10, v11, v12, v13);
        v14 = *(type metadata accessor for Proto_LoopLayerParams(0) + 24);
        return OUTLINED_FUNCTION_7_5();
      }
    }
  }

  return result;
}

uint64_t sub_257593820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A328, &unk_257752BB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_NeuralNetwork(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_LoopLayerParams(0) + 28);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A328, &unk_257752BB0);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87A0A8, type metadata accessor for Proto_NeuralNetwork);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_257593A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A328, &unk_257752BB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_NeuralNetwork(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_LoopLayerParams(0) + 32);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A328, &unk_257752BB0);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87A0A8, type metadata accessor for Proto_NeuralNetwork);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_257593C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ECB0, type metadata accessor for Proto_LoopLayerParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257593CD0(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F879B78, type metadata accessor for Proto_LoopLayerParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257593D98()
{
  sub_2575FB760(&qword_27F879B78, type metadata accessor for Proto_LoopLayerParams);

  return sub_257743424();
}

uint64_t sub_257593E40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ECB8, type metadata accessor for Proto_LoopBreakLayerParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257593EE0(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F879B80, type metadata accessor for Proto_LoopBreakLayerParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257593FA8()
{
  sub_2575FB760(&qword_27F879B80, type metadata accessor for Proto_LoopBreakLayerParams);

  return sub_257743424();
}

uint64_t sub_25759404C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ECC0, type metadata accessor for Proto_LoopContinueLayerParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575940EC(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F879B88, type metadata accessor for Proto_LoopContinueLayerParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575941B4()
{
  sub_2575FB760(&qword_27F879B88, type metadata accessor for Proto_LoopContinueLayerParams);

  return sub_257743424();
}

uint64_t sub_257594258(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ECA8, type metadata accessor for Proto_CopyLayerParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575942F8(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F879B70, type metadata accessor for Proto_CopyLayerParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575943C0()
{
  sub_2575FB760(&qword_27F879B70, type metadata accessor for Proto_CopyLayerParams);

  return sub_257743424();
}

uint64_t sub_2575944D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EF98, type metadata accessor for Proto_GreaterThanLayerParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257594570(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E478, type metadata accessor for Proto_GreaterThanLayerParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257594638()
{
  sub_2575FB760(&qword_27F87E478, type metadata accessor for Proto_GreaterThanLayerParams);

  return sub_257743424();
}

uint64_t sub_257594778(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EFA0, type metadata accessor for Proto_GreaterEqualLayerParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257594818(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E460, type metadata accessor for Proto_GreaterEqualLayerParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575948E0()
{
  sub_2575FB760(&qword_27F87E460, type metadata accessor for Proto_GreaterEqualLayerParams);

  return sub_257743424();
}

uint64_t sub_257594A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EF88, type metadata accessor for Proto_LessThanLayerParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257594AC0(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E448, type metadata accessor for Proto_LessThanLayerParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257594B88()
{
  sub_2575FB760(&qword_27F87E448, type metadata accessor for Proto_LessThanLayerParams);

  return sub_257743424();
}

uint64_t sub_257594C50()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_53();
      sub_2577432E4();
    }
  }

  return result;
}

uint64_t sub_257594D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EF90, type metadata accessor for Proto_LessEqualLayerParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257594DB4(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E430, type metadata accessor for Proto_LessEqualLayerParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257594E7C()
{
  sub_2575FB760(&qword_27F87E430, type metadata accessor for Proto_LessEqualLayerParams);

  return sub_257743424();
}

uint64_t sub_257594FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EF78, type metadata accessor for Proto_EqualLayerParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25759505C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E418, type metadata accessor for Proto_EqualLayerParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257595124()
{
  sub_2575FB760(&qword_27F87E418, type metadata accessor for Proto_EqualLayerParams);

  return sub_257743424();
}

uint64_t sub_257595264(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EF80, type metadata accessor for Proto_NotEqualLayerParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257595304(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E400, type metadata accessor for Proto_NotEqualLayerParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575953CC()
{
  sub_2575FB760(&qword_27F87E400, type metadata accessor for Proto_NotEqualLayerParams);

  return sub_257743424();
}

uint64_t sub_2575954A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F830, type metadata accessor for Proto_LogicalAndLayerParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257595540(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E3E0, type metadata accessor for Proto_LogicalAndLayerParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257595608()
{
  sub_2575FB760(&qword_27F87E3E0, type metadata accessor for Proto_LogicalAndLayerParams);

  return sub_257743424();
}

uint64_t sub_2575956AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F838, type metadata accessor for Proto_LogicalOrLayerParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25759574C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E3C0, type metadata accessor for Proto_LogicalOrLayerParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257595814()
{
  sub_2575FB760(&qword_27F87E3C0, type metadata accessor for Proto_LogicalOrLayerParams);

  return sub_257743424();
}

uint64_t sub_2575958B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F840, type metadata accessor for Proto_LogicalXorLayerParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257595958(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E3A0, type metadata accessor for Proto_LogicalXorLayerParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257595A20()
{
  sub_2575FB760(&qword_27F87E3A0, type metadata accessor for Proto_LogicalXorLayerParams);

  return sub_257743424();
}

uint64_t sub_257595AC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F848, type metadata accessor for Proto_LogicalNotLayerParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257595B64(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E380, type metadata accessor for Proto_LogicalNotLayerParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257595C2C()
{
  sub_2575FB760(&qword_27F87E380, type metadata accessor for Proto_LogicalNotLayerParams);

  return sub_257743424();
}

void sub_257595CC4()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    v1 = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 10)
    {
      OUTLINED_FUNCTION_6_8();
      sub_2575E8334();
    }
  }
}

void sub_257595D60()
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_2_7();
  if (!*(*v0 + 16) || (type metadata accessor for Proto_BorderAmounts.EdgeSizes(0), sub_2575FB760(&qword_27F87E350, type metadata accessor for Proto_BorderAmounts.EdgeSizes), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_27_4(), sub_257743564(), !v1))
  {
    v2 = *(type metadata accessor for Proto_BorderAmounts(0) + 20);
    OUTLINED_FUNCTION_7_5();
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_257595E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EFC0, type metadata accessor for Proto_BorderAmounts);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257595F30(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E368, type metadata accessor for Proto_BorderAmounts);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257595FF8()
{
  sub_2575FB760(&qword_27F87E368, type metadata accessor for Proto_BorderAmounts);

  return sub_257743424();
}

uint64_t sub_2575960B8()
{
  result = MEMORY[0x259C64E90](0x7A6953656764452ELL, 0xEA00000000007365);
  qword_27F8E8DE8 = 0xD000000000000013;
  unk_27F8E8DF0 = 0x800000025777D760;
  return result;
}

uint64_t sub_257596128()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8DF8);
  __swift_project_value_buffer(v0, qword_27F8E8DF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "startEdgeSize";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endEdgeSize";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575963B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EFC8, type metadata accessor for Proto_BorderAmounts.EdgeSizes);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257596458(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E350, type metadata accessor for Proto_BorderAmounts.EdgeSizes);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257596520()
{
  sub_2575FB760(&qword_27F87E350, type metadata accessor for Proto_BorderAmounts.EdgeSizes);

  return sub_257743424();
}

uint64_t sub_2575965E8()
{
  v0 = *(type metadata accessor for Proto_ValidPadding(0) + 20);
  type metadata accessor for Proto_BorderAmounts(0);
  sub_2575FB760(&qword_27F87E368, type metadata accessor for Proto_BorderAmounts);
  return sub_2577433D4();
}

uint64_t sub_25759669C()
{
  OUTLINED_FUNCTION_111_0();
  v1 = OUTLINED_FUNCTION_4_5();
  result = v2(v1);
  if (!v0)
  {
    OUTLINED_FUNCTION_222();
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2575966E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AC8, &unk_257744010);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BorderAmounts(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_ValidPadding(0) + 20);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F879AC8, &unk_257744010);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87E368, type metadata accessor for Proto_BorderAmounts);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_257596978(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ECA0, type metadata accessor for Proto_ValidPadding);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257596A18(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F879AF0, type metadata accessor for Proto_ValidPadding);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257596AE0()
{
  sub_2575FB760(&qword_27F879AF0, type metadata accessor for Proto_ValidPadding);

  return sub_257743424();
}

uint64_t sub_257596CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F128, type metadata accessor for Proto_SamePadding);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257596D40(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E328, type metadata accessor for Proto_SamePadding);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257596E08()
{
  sub_2575FB760(&qword_27F87E328, type metadata accessor for Proto_SamePadding);

  return sub_257743424();
}

uint64_t sub_257596EB4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8E40);
  __swift_project_value_buffer(v0, qword_27F8E8E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "BOTTOM_RIGHT_HEAVY";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TOP_LEFT_HEAVY";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257597124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  OUTLINED_FUNCTION_2_7();
  if (!*v6 || (OUTLINED_FUNCTION_176_1(), v10 = v9(), OUTLINED_FUNCTION_351_0(v10, v11, v12, v10, v13, v14, v15, v16, v19), OUTLINED_FUNCTION_27_4(), result = sub_2577434C4(), !v7))
  {
    v18 = *(a6(0) + 20);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_257597274(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F850, type metadata accessor for Proto_SamplingMode);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257597314(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E308, type metadata accessor for Proto_SamplingMode);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575973DC()
{
  sub_2575FB760(&qword_27F87E308, type metadata accessor for Proto_SamplingMode);

  return sub_257743424();
}

uint64_t sub_257597488()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8E70);
  __swift_project_value_buffer(v0, qword_27F8E8E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "STRICT_ALIGN_ENDPOINTS_MODE";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ALIGN_ENDPOINTS_MODE";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "UPSAMPLE_MODE";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ROI_ALIGN_MODE";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257597770()
{
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_387_0(v0, v1);
  if (*(v5 + 8) == 1)
  {
    switch(v4)
    {
      case 1:
        if (v3 == 1)
        {
          goto LABEL_6;
        }

        return 0;
      case 2:
        if (v3 == 2)
        {
          goto LABEL_6;
        }

        return 0;
      case 3:
        if (v3 == 3)
        {
          goto LABEL_6;
        }

        return 0;
      default:
        if (v3)
        {
          return 0;
        }

        goto LABEL_6;
    }
  }

  if (v3 != v4)
  {
    return 0;
  }

LABEL_6:
  v7 = v2(0);
  OUTLINED_FUNCTION_95_0(v7);
  sub_2577431B4();
  OUTLINED_FUNCTION_1_16();
  sub_2575FB760(v8, v9);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_257597900(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F860, type metadata accessor for Proto_BoxCoordinatesMode);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575979A0(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E2E8, type metadata accessor for Proto_BoxCoordinatesMode);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257597A68()
{
  sub_2575FB760(&qword_27F87E2E8, type metadata accessor for Proto_BoxCoordinatesMode);

  return sub_257743424();
}

uint64_t sub_257597B14()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8EA0);
  __swift_project_value_buffer(v0, qword_27F8E8EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CORNERS_HEIGHT_FIRST";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CORNERS_WIDTH_FIRST";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CENTER_SIZE_HEIGHT_FIRST";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CENTER_SIZE_WIDTH_FIRST";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257597D78()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8EB8);
  __swift_project_value_buffer(v0, qword_27F8E8EB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257745520;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "floatValue";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "float16Value";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 30;
  *v12 = "rawValue";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 31;
  *v14 = "int8RawValue";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 40;
  *v16 = "quantization";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 50;
  *v18 = "isUpdatable";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257598034()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 50:
        OUTLINED_FUNCTION_10_7();
        sub_257743274();
        break;
      case 2:
      case 30:
      case 31:
        OUTLINED_FUNCTION_10_7();
        sub_2577432D4();
        break;
      case 40:
        OUTLINED_FUNCTION_6_8();
        sub_2575980F0();
        break;
      case 1:
        OUTLINED_FUNCTION_53();
        sub_257743294();
        break;
    }
  }

  return result;
}

uint64_t sub_2575980F0()
{
  v0 = *(type metadata accessor for Proto_WeightParams(0) + 40);
  type metadata accessor for Proto_QuantizationParams(0);
  sub_2575FB760(&qword_27F87E2B8, type metadata accessor for Proto_QuantizationParams);
  return sub_2577433D4();
}

void sub_2575981A4()
{
  OUTLINED_FUNCTION_188_0();
  if (!*(OUTLINED_FUNCTION_6_15() + 16) || (OUTLINED_FUNCTION_8_6(), sub_257743464(), !v0))
  {
    v2 = *(v1 + 8);
    v3 = *(v1 + 16);
    v4 = OUTLINED_FUNCTION_287_0();
    if (sub_2576FF394(v4, v5) || (OUTLINED_FUNCTION_287_0(), OUTLINED_FUNCTION_3_10(), sub_2577434D4(), !v0))
    {
      v6 = *(v1 + 24);
      v7 = *(v1 + 32);
      v8 = OUTLINED_FUNCTION_287_0();
      if (sub_2576FF394(v8, v9) || (OUTLINED_FUNCTION_287_0(), OUTLINED_FUNCTION_3_10(), sub_2577434D4(), !v0))
      {
        v10 = *(v1 + 40);
        v11 = *(v1 + 48);
        v12 = OUTLINED_FUNCTION_287_0();
        if (sub_2576FF394(v12, v13) || (OUTLINED_FUNCTION_287_0(), OUTLINED_FUNCTION_3_10(), sub_2577434D4(), !v0))
        {
          v14 = OUTLINED_FUNCTION_3_9();
          sub_2575982B0(v14, v15, v16, v17);
          if (!v0)
          {
            if (*(v1 + 56) == 1)
            {
              OUTLINED_FUNCTION_12_8();
              sub_2577434B4();
            }

            v18 = *(type metadata accessor for Proto_WeightParams(0) + 36);
            OUTLINED_FUNCTION_7_5();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2575982B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C90, &unk_2577530D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_QuantizationParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_WeightParams(0) + 40);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F879C90, &unk_2577530D0);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87E2B8, type metadata accessor for Proto_QuantizationParams);
  sub_257743574();
  return sub_257609BCC();
}

void sub_257598490()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_0_0();
  v5 = type metadata accessor for Proto_QuantizationParams(v4);
  v6 = OUTLINED_FUNCTION_42_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C90, &unk_2577530D0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_75_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C98, &qword_2577445B0);
  OUTLINED_FUNCTION_41_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_32_3();
  if ((sub_257479B60(*v1, *v0) & 1) == 0 || (MEMORY[0x259C648D0](*(v1 + 8), *(v1 + 16), *(v0 + 8), *(v0 + 16)) & 1) == 0 || (MEMORY[0x259C648D0](*(v1 + 24), *(v1 + 32), *(v0 + 24), *(v0 + 32)) & 1) == 0 || (MEMORY[0x259C648D0](*(v1 + 40), *(v1 + 48), *(v0 + 40), *(v0 + 48)) & 1) == 0)
  {
    goto LABEL_16;
  }

  v26 = type metadata accessor for Proto_WeightParams(0);
  v17 = *(v26 + 40);
  v18 = *(v3 + 48);
  OUTLINED_FUNCTION_149_1();
  OUTLINED_FUNCTION_129_1();
  OUTLINED_FUNCTION_65(v2);
  if (!v19)
  {
    OUTLINED_FUNCTION_277();
    sub_257487308();
    OUTLINED_FUNCTION_65(v2 + v18);
    if (!v19)
    {
      OUTLINED_FUNCTION_254_0();
      OUTLINED_FUNCTION_360();
      _s20MLModelSpecification13NeuralNetworkV12QuantizationV2eeoiySbAE_AEtFZ_0();
      v21 = v20;
      sub_257609BCC();
      OUTLINED_FUNCTION_357_0();
      sub_2574695E4(v2, &qword_27F879C90, &unk_2577530D0);
      if ((v21 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_168_1();
    sub_257609BCC();
LABEL_13:
    sub_2574695E4(v2, &qword_27F879C98, &qword_2577445B0);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_65(v2 + v18);
  if (!v19)
  {
    goto LABEL_13;
  }

  sub_2574695E4(v2, &qword_27F879C90, &unk_2577530D0);
LABEL_15:
  if (*(v1 + 56) == *(v0 + 56))
  {
    v23 = *(v26 + 36);
    sub_2577431B4();
    OUTLINED_FUNCTION_1_16();
    sub_2575FB760(v24, v25);
    v22 = OUTLINED_FUNCTION_4_2();
    goto LABEL_17;
  }

LABEL_16:
  v22 = 0;
LABEL_17:
  OUTLINED_FUNCTION_65_0(v22);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257598768(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F6F8, type metadata accessor for Proto_WeightParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257598808(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575988D0()
{
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams);

  return sub_257743424();
}

uint64_t sub_257598950()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8ED0);
  __swift_project_value_buffer(v0, qword_27F8E8ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "numberOfBits";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 101;
  *v10 = "linearQuantization";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 102;
  *v12 = "lookupTableQuantization";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257598B5C()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 102:
        v7 = OUTLINED_FUNCTION_6_10();
        sub_2575990DC(v7, v8, v9, v10);
        break;
      case 101:
        v3 = OUTLINED_FUNCTION_6_10();
        sub_257598BD8(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_53();
        sub_2577433B4();
        break;
    }
  }

  return result;
}

uint64_t sub_257598BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for Proto_LinearQuantizationParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C80, &qword_25776D180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87EE90, &qword_257766D90);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for Proto_QuantizationParams(0) + 20);
  v30 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879C80, &qword_25776D180);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609BCC();
    }

    else
    {
      sub_2574695E4(v22, &qword_27F87EE90, &qword_257766D90);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_2575FB760(&qword_27F87E2A0, type metadata accessor for Proto_LinearQuantizationParams);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87EE90, &qword_257766D90);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87EE90, &qword_257766D90);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87EE90, &qword_257766D90);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v32;
  sub_2574695E4(v22, &qword_27F87EE90, &qword_257766D90);
  v28 = v29;
  v27 = v30;
  sub_2574695E4(v30 + v29, &qword_27F879C80, &qword_25776D180);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

uint64_t sub_2575990DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for Proto_LookUpTableQuantizationParams(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C80, &qword_25776D180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87EE98, &qword_257766D98);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for Proto_QuantizationParams(0) + 20);
  v30 = a1;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F879C80, &qword_25776D180);
  }

  else
  {
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v22, &qword_27F87EE98, &qword_257766D98);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E288, type metadata accessor for Proto_LookUpTableQuantizationParams);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v22;
    return sub_2574695E4(v24, &qword_27F87EE98, &qword_257766D98);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_2574695E4(v22, &qword_27F87EE98, &qword_257766D98);
    v24 = v20;
    return sub_2574695E4(v24, &qword_27F87EE98, &qword_257766D98);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v32;
  sub_2574695E4(v22, &qword_27F87EE98, &qword_257766D98);
  v28 = v29;
  v27 = v30;
  sub_2574695E4(v30 + v29, &qword_27F879C80, &qword_25776D180);
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

void sub_2575995E0()
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_2_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C80, &qword_25776D180);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_32_4();
  if (!*v0 || (OUTLINED_FUNCTION_8_6(), sub_257743554(), !v1))
  {
    v6 = type metadata accessor for Proto_QuantizationParams(0);
    v7 = *(v6 + 20);
    OUTLINED_FUNCTION_375_0();
    v8 = type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(0);
    v9 = OUTLINED_FUNCTION_171_1();
    OUTLINED_FUNCTION_155(v9, v10, v8);
    if (v11)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_311();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = OUTLINED_FUNCTION_3_9();
      sub_25759990C(v12, v13, v14, v15);
    }

    else
    {
      v16 = OUTLINED_FUNCTION_3_9();
      sub_2575996EC(v16, v17, v18, v19);
    }

    OUTLINED_FUNCTION_60_0();
    sub_257609BCC();
    if (!v1)
    {
LABEL_8:
      v20 = *(v6 + 24);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2575996EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C80, &qword_25776D180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_LinearQuantizationParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_QuantizationParams(0) + 20);
  sub_257487308();
  v11 = type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C80, &qword_25776D180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E2A0, type metadata accessor for Proto_LinearQuantizationParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25759990C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C80, &qword_25776D180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_LookUpTableQuantizationParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_QuantizationParams(0) + 20);
  sub_257487308();
  v11 = type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879C80, &qword_25776D180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E288, type metadata accessor for Proto_LookUpTableQuantizationParams);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

void _s20MLModelSpecification13NeuralNetworkV12QuantizationV2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_0_0();
  v3 = type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(v2);
  v4 = OUTLINED_FUNCTION_42_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C80, &qword_25776D180);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_75_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C88, &unk_2577445A0);
  OUTLINED_FUNCTION_41_4(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_338_0();
  if (!v16)
  {
    goto LABEL_12;
  }

  v15 = type metadata accessor for Proto_QuantizationParams(0);
  OUTLINED_FUNCTION_335_0(v15);
  OUTLINED_FUNCTION_149_1();
  OUTLINED_FUNCTION_129_1();
  OUTLINED_FUNCTION_65(v0);
  if (v16)
  {
    OUTLINED_FUNCTION_65(v0 + v1);
    if (v16)
    {
      sub_2574695E4(v0, &qword_27F879C80, &qword_25776D180);
LABEL_15:
      OUTLINED_FUNCTION_321_0();
      OUTLINED_FUNCTION_1_16();
      sub_2575FB760(v20, v21);
      v17 = OUTLINED_FUNCTION_4_2();
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_277();
  sub_257487308();
  OUTLINED_FUNCTION_65(v0 + v1);
  if (v16)
  {
    OUTLINED_FUNCTION_60_0();
    sub_257609BCC();
LABEL_11:
    sub_2574695E4(v0, &qword_27F879C88, &unk_2577445A0);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_254_0();
  OUTLINED_FUNCTION_360();
  sub_257530D2C();
  v19 = v18;
  sub_257609BCC();
  OUTLINED_FUNCTION_357_0();
  sub_2574695E4(v0, &qword_27F879C80, &qword_25776D180);
  if (v19)
  {
    goto LABEL_15;
  }

LABEL_12:
  v17 = 0;
LABEL_13:
  OUTLINED_FUNCTION_65_0(v17);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257599D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EE88, type metadata accessor for Proto_QuantizationParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257599E38(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E2B8, type metadata accessor for Proto_QuantizationParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257599F00()
{
  sub_2575FB760(&qword_27F87E2B8, type metadata accessor for Proto_QuantizationParams);

  return sub_257743424();
}

uint64_t sub_257599F80()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8EE8);
  __swift_project_value_buffer(v0, qword_27F8E8EE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "scale";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bias";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_25759A148()
{
  if (!*(OUTLINED_FUNCTION_6_15() + 16) || (OUTLINED_FUNCTION_8_6(), result = sub_257743464(), !v0))
  {
    OUTLINED_FUNCTION_285_0();
    if (!v2 || (OUTLINED_FUNCTION_12_11(), result = sub_257743464(), !v0))
    {
      v3 = *(type metadata accessor for Proto_LinearQuantizationParams(0) + 24);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_25759A1C0(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_7_8(a1, a2);
  if ((sub_257479B60(v2, v3) & 1) == 0)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_393_0();
  if ((sub_257479B60(v4, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for Proto_LinearQuantizationParams(0);
  OUTLINED_FUNCTION_308_0(v6);
  OUTLINED_FUNCTION_1_16();
  sub_2575FB760(v7, v8);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_25759A2A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EEA0, type metadata accessor for Proto_LinearQuantizationParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25759A344(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E2A0, type metadata accessor for Proto_LinearQuantizationParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25759A40C()
{
  sub_2575FB760(&qword_27F87E2A0, type metadata accessor for Proto_LinearQuantizationParams);

  return sub_257743424();
}

void sub_25759A4A8()
{
  OUTLINED_FUNCTION_188_0();
  v2 = v1;
  if (!*(OUTLINED_FUNCTION_6_15() + 16) || (OUTLINED_FUNCTION_12_8(), v3(), !v0))
  {
    v4 = *(v2(0) + 20);
    OUTLINED_FUNCTION_7_5();
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_25759A5AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EEA8, type metadata accessor for Proto_LookUpTableQuantizationParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25759A64C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E288, type metadata accessor for Proto_LookUpTableQuantizationParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25759A714()
{
  sub_2575FB760(&qword_27F87E288, type metadata accessor for Proto_LookUpTableQuantizationParams);

  return sub_257743424();
}

uint64_t sub_25759A7D4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8F18);
  __swift_project_value_buffer(v0, qword_27F8E8F18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2577510E0;
  v4 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v4 = "outputChannels";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v32 + v3 + v2 + v1[14];
  *(v32 + v3 + v2) = 2;
  *v8 = "kernelChannels";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v32 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 10;
  *v10 = "nGroups";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v32 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 20;
  *v12 = "kernelSize";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v32 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 30;
  *v14 = "stride";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v32 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 40;
  *v16 = "dilationFactor";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  v17 = (v32 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 50;
  *v18 = "valid";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  v19 = (v32 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 51;
  *v20 = "same";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v7();
  v21 = (v32 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 60;
  *v22 = "isDeconvolution";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 70;
  *v24 = "hasBias";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 90;
  *v26 = "weights";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v7();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 91;
  *v28 = "bias";
  *(v28 + 1) = 4;
  v28[16] = 2;
  v7();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 100;
  *v30 = "outputShape";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v7();
  return sub_257743594();
}

void *sub_25759AC70()
{
  v0[2] = 0;
  v0[3] = 0;
  v1 = MEMORY[0x277D84F90];
  v0[4] = 0;
  v0[5] = v1;
  v0[6] = v1;
  v0[7] = v1;
  v2 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__convolutionPaddingType;
  v3 = type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution) = 0;
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p) = 0;
  v4 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  v5 = type metadata accessor for Proto_WeightParams(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape) = v1;
  return v0;
}

void sub_25759AD38()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_198();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F7A0, &qword_257777FA0);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_198();
  v0[4] = 0;
  v0[3] = 0;
  v0[2] = 0;
  v11 = MEMORY[0x277D84F90];
  v0[5] = MEMORY[0x277D84F90];
  v0[6] = v11;
  v0[7] = v11;
  type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v36 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution;
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution) = 0;
  v37 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p) = 0;
  v16 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = OUTLINED_FUNCTION_79_1(OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias);
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  v23 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape;
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape) = v11;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v24 = v2[2];
  OUTLINED_FUNCTION_447();
  v0[2] = v24;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v25 = v2[3];
  OUTLINED_FUNCTION_447();
  v0[3] = v25;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v26 = v2[4];
  OUTLINED_FUNCTION_447();
  v0[4] = v26;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v27 = v2[5];
  OUTLINED_FUNCTION_250_0();
  v0[5] = v27;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v28 = v2[6];
  OUTLINED_FUNCTION_447();
  v0[6] = v28;

  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v29 = v2[7];
  OUTLINED_FUNCTION_447();
  v30 = v0[7];
  v0[7] = v29;

  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  sub_257487308();
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  LOBYTE(v31) = *(v2 + v31);
  OUTLINED_FUNCTION_447();
  *(v0 + v36) = v31;
  v32 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  LOBYTE(v32) = *(v2 + v32);
  OUTLINED_FUNCTION_447();
  *(v0 + v37) = v32;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  sub_257487308();
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_317_0();
  sub_257487308();
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_317_0();
  sub_25751BB28();
  swift_endAccess();
  v33 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v34 = *(v2 + v33);

  OUTLINED_FUNCTION_447();
  v35 = *(v0 + v23);
  *(v0 + v23) = v34;

  OUTLINED_FUNCTION_372();
  OUTLINED_FUNCTION_35();
}

void *sub_25759B1A4()
{
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[7];

  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__convolutionPaddingType, &qword_27F87F7A0, &qword_257777FA0);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias, &qword_27F87A1A0, &qword_257745750);
  v4 = *(v0 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape);

  return v0;
}

void sub_25759B294()
{
  sub_25759B3F4(319, &qword_27F87BFB8, type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_25759B3F4(319, &qword_27F87BFC0, type metadata accessor for Proto_WeightParams, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_25759B3F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_25759B498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_257743234();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 100:
        sub_2575B39E8();
        break;
      case 2:
        sub_2575CBCAC();
        break;
      case 10:
        sub_2575CBD08();
        break;
      case 20:
        sub_25759B718();
        break;
      case 30:
        sub_25759B76C();
        break;
      case 40:
        sub_25759B7F0();
        break;
      case 50:
        sub_25759B874(a1, a2, a3, a4);
        break;
      case 51:
        sub_25759BDE4(a1, a2, a3, a4);
        break;
      case 60:
      case 70:
        sub_2575CBF70();
        break;
      case 90:
        sub_25759C354();
        break;
      case 91:
        sub_25759C430();
        break;
      case 1:
        sub_2575E28E8();
        break;
    }
  }
}

void sub_25759B718()
{
  OUTLINED_FUNCTION_404_0();
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_82_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_111_1();
  v0();
  OUTLINED_FUNCTION_306_0();
  OUTLINED_FUNCTION_405_0();
}

uint64_t sub_25759B76C()
{
  swift_beginAccess();
  sub_257743354();
  return swift_endAccess();
}

uint64_t sub_25759B7F0()
{
  swift_beginAccess();
  sub_257743354();
  return swift_endAccess();
}

uint64_t sub_25759B874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  valid = type metadata accessor for Proto_ValidPadding(0);
  v6 = *(*(valid - 8) + 64);
  v7 = MEMORY[0x28223BE20](valid);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F7A0, &qword_257777FA0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F178, &qword_257766E08);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, valid);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__convolutionPaddingType;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87F7A0, &qword_257777FA0);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609BCC();
    }

    else
    {
      sub_2574695E4(v25, &qword_27F87F178, &qword_257766E08);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, valid);
    }
  }

  sub_2575FB760(&qword_27F879AF0, type metadata accessor for Proto_ValidPadding);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F178, &qword_257766E08);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, valid) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F178, &qword_257766E08);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F178, &qword_257766E08);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F178, &qword_257766E08);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25759BDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SamePadding(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F7A0, &qword_257777FA0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F180, &qword_257766E10);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__convolutionPaddingType;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F87F7A0, &qword_257777FA0);
  }

  else
  {
    v32[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v25, &qword_27F87F180, &qword_257766E10);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E328, type metadata accessor for Proto_SamePadding);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87F180, &qword_257766E10);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87F180, &qword_257766E10);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87F180, &qword_257766E10);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87F180, &qword_257766E10);
  v31 = v33;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25759C354()
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_25759C430()
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_25759C50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_111_0();
  v9 = *(v5 + *(v8(0) + 20));
  OUTLINED_FUNCTION_10_7();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_222();
    return sub_257743194();
  }

  return result;
}

uint64_t sub_25759C57C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F7A0, &qword_257777FA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21[-v11];
  swift_beginAccess();
  if (!a1[2] || (result = sub_257743554(), !v4))
  {
    swift_beginAccess();
    if (!a1[3] || (result = sub_257743554(), !v4))
    {
      swift_beginAccess();
      if (!a1[4] || (result = sub_257743554(), !v4))
      {
        swift_beginAccess();
        if (!*(a1[5] + 16) || (v14 = a1[5], , sub_2577434A4(), result = , !v4))
        {
          swift_beginAccess();
          if (!*(a1[6] + 16) || (v15 = a1[6], , sub_2577434A4(), result = , !v4))
          {
            swift_beginAccess();
            if (!*(a1[7] + 16) || (v16 = a1[7], , sub_2577434A4(), result = , !v4))
            {
              swift_beginAccess();
              sub_257487308();
              v17 = type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
              if (__swift_getEnumTagSinglePayload(v12, 1, v17) == 1)
              {
                goto LABEL_18;
              }

              if (swift_getEnumCaseMultiPayload() == 1)
              {
                sub_25759CBC4(a1, a2, a3, a4);
              }

              else
              {
                sub_25759C990(a1, a2, a3, a4);
              }

              result = sub_257609BCC();
              if (!v4)
              {
LABEL_18:
                v18 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution;
                swift_beginAccess();
                if (*(a1 + v18) != 1 || (result = sub_2577434B4(), !v4))
                {
                  v19 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
                  swift_beginAccess();
                  if (*(a1 + v19) != 1 || (result = sub_2577434B4(), !v4))
                  {
                    result = sub_25759CDF8(a1, a2, a3, a4);
                    if (!v4)
                    {
                      sub_25759CFEC(a1, a2, a3, a4);
                      v20 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape;
                      result = swift_beginAccess();
                      if (*(*(a1 + v20) + 16))
                      {

                        sub_2577434A4();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_25759C990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F7A0, &qword_257777FA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  valid = type metadata accessor for Proto_ValidPadding(0);
  v9 = *(*(valid - 8) + 64);
  MEMORY[0x28223BE20](valid);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87F7A0, &qword_257777FA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F879AF0, type metadata accessor for Proto_ValidPadding);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25759CBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F7A0, &qword_257777FA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SamePadding(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87F7A0, &qword_257777FA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E328, type metadata accessor for Proto_SamePadding);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25759CDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A1A0, &qword_257745750);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_25759CFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A1A0, &qword_257745750);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_25759D20C(void *a1, void *a2)
{
  v75 = type metadata accessor for Proto_WeightParams(0);
  v4 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v69 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA30, &qword_2577673D8);
  v6 = *(*(v73 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v73);
  v70 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v72 = &v66[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v68 = &v66[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v74 = &v66[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v71 = &v66[-v17];
  MEMORY[0x28223BE20](v16);
  v76 = &v66[-v18];
  v19 = type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA38, &unk_2577673E0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v66[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F7A0, &qword_257777FA0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v66[-v28];
  swift_beginAccess();
  v30 = a1[2];
  swift_beginAccess();
  if (v30 == a2[2])
  {
    swift_beginAccess();
    v31 = a1[3];
    swift_beginAccess();
    if (v31 == a2[3])
    {
      swift_beginAccess();
      v32 = a1[4];
      swift_beginAccess();
      if (v32 == a2[4])
      {
        swift_beginAccess();
        v33 = a1[5];
        swift_beginAccess();
        if (sub_257487374(v33, a2[5]))
        {
          swift_beginAccess();
          v34 = a1[6];
          swift_beginAccess();
          if (sub_257487374(v34, a2[6]))
          {
            swift_beginAccess();
            v35 = a1[7];
            swift_beginAccess();
            if (sub_257487374(v35, a2[7]))
            {
              swift_beginAccess();
              sub_257487308();
              swift_beginAccess();
              v36 = *(v21 + 48);
              sub_257487308();
              sub_257487308();
              if (__swift_getEnumTagSinglePayload(v24, 1, v19) == 1)
              {

                sub_2574695E4(v29, &qword_27F87F7A0, &qword_257777FA0);
                if (__swift_getEnumTagSinglePayload(&v24[v36], 1, v19) == 1)
                {
                  sub_2574695E4(v24, &qword_27F87F7A0, &qword_257777FA0);
                  goto LABEL_17;
                }
              }

              else
              {
                sub_257487308();
                if (__swift_getEnumTagSinglePayload(&v24[v36], 1, v19) != 1)
                {
                  sub_257609B78();

                  sub_257531310();
                  v43 = v42;
                  sub_257609BCC();
                  sub_2574695E4(v29, &qword_27F87F7A0, &qword_257777FA0);
                  sub_257609BCC();
                  sub_2574695E4(v24, &qword_27F87F7A0, &qword_257777FA0);
                  if ((v43 & 1) == 0)
                  {
                    goto LABEL_19;
                  }

LABEL_17:
                  v44 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution;
                  swift_beginAccess();
                  LODWORD(v44) = *(a1 + v44);
                  v45 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution;
                  swift_beginAccess();
                  if (v44 != *(a2 + v45))
                  {
                    goto LABEL_19;
                  }

                  v46 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
                  swift_beginAccess();
                  LODWORD(v46) = *(a1 + v46);
                  v47 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
                  swift_beginAccess();
                  if (v46 != *(a2 + v47))
                  {
                    goto LABEL_19;
                  }

                  swift_beginAccess();
                  v48 = v76;
                  sub_257487308();
                  swift_beginAccess();
                  v50 = v72;
                  v49 = v73;
                  v51 = *(v73 + 48);
                  sub_257487308();
                  v52 = v50;
                  sub_257487308();
                  v53 = v50;
                  v54 = v75;
                  if (__swift_getEnumTagSinglePayload(v53, 1, v75) == 1)
                  {
                    sub_2574695E4(v48, &qword_27F87A1A0, &qword_257745750);
                    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52 + v51, 1, v54);
                    v56 = v74;
                    if (EnumTagSinglePayload == 1)
                    {
                      sub_2574695E4(v52, &qword_27F87A1A0, &qword_257745750);
LABEL_28:
                      swift_beginAccess();
                      sub_257487308();
                      swift_beginAccess();
                      v59 = *(v49 + 48);
                      v60 = v70;
                      sub_257487308();
                      sub_257487308();
                      if (__swift_getEnumTagSinglePayload(v60, 1, v54) == 1)
                      {
                        sub_2574695E4(v56, &qword_27F87A1A0, &qword_257745750);
                        if (__swift_getEnumTagSinglePayload(v60 + v59, 1, v54) == 1)
                        {
                          sub_2574695E4(v60, &qword_27F87A1A0, &qword_257745750);
LABEL_35:
                          v63 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape;
                          swift_beginAccess();
                          v64 = *(a1 + v63);
                          v65 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape;
                          swift_beginAccess();
                          v37 = sub_257487374(v64, *(a2 + v65));
                          goto LABEL_20;
                        }
                      }

                      else
                      {
                        sub_257487308();
                        if (__swift_getEnumTagSinglePayload(v60 + v59, 1, v54) != 1)
                        {
                          sub_257609B78();
                          sub_257598490();
                          v62 = v61;
                          sub_257609BCC();
                          sub_2574695E4(v56, &qword_27F87A1A0, &qword_257745750);
                          sub_257609BCC();
                          sub_2574695E4(v60, &qword_27F87A1A0, &qword_257745750);
                          if (v62)
                          {
                            goto LABEL_35;
                          }

LABEL_19:
                          v37 = 0;
LABEL_20:

                          return v37 & 1;
                        }

                        sub_2574695E4(v56, &qword_27F87A1A0, &qword_257745750);
                        sub_257609BCC();
                      }

                      v39 = &qword_27F87FA30;
                      v40 = &qword_2577673D8;
                      v41 = v60;
LABEL_15:
                      sub_2574695E4(v41, v39, v40);
                      goto LABEL_19;
                    }
                  }

                  else
                  {
                    sub_257487308();
                    v57 = __swift_getEnumTagSinglePayload(v52 + v51, 1, v54);
                    v56 = v74;
                    if (v57 != 1)
                    {
                      sub_257609B78();
                      sub_257598490();
                      v67 = v58;
                      sub_257609BCC();
                      sub_2574695E4(v76, &qword_27F87A1A0, &qword_257745750);
                      sub_257609BCC();
                      sub_2574695E4(v52, &qword_27F87A1A0, &qword_257745750);
                      if ((v67 & 1) == 0)
                      {
                        goto LABEL_19;
                      }

                      goto LABEL_28;
                    }

                    sub_2574695E4(v76, &qword_27F87A1A0, &qword_257745750);
                    sub_257609BCC();
                  }

                  v39 = &qword_27F87FA30;
                  v40 = &qword_2577673D8;
                  v41 = v52;
                  goto LABEL_15;
                }

                sub_2574695E4(v29, &qword_27F87F7A0, &qword_257777FA0);
                sub_257609BCC();
              }

              v39 = &qword_27F87FA38;
              v40 = &unk_2577673E0;
              v41 = v24;
              goto LABEL_15;
            }
          }
        }
      }
    }
  }

  v37 = 0;
  return v37 & 1;
}

uint64_t sub_25759DEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F798, type metadata accessor for Proto_ConvolutionLayerParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25759DF58(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E270, type metadata accessor for Proto_ConvolutionLayerParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25759E020()
{
  sub_2575FB760(&qword_27F87E270, type metadata accessor for Proto_ConvolutionLayerParams);

  return sub_257743424();
}

uint64_t sub_25759E0E0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8F30);
  __swift_project_value_buffer(v0, qword_27F8E8F30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_257751100;
  v4 = v54 + v3 + v1[14];
  *(v54 + v3) = 1;
  *v4 = "outputChannels";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v54 + v3 + v2 + v1[14];
  *(v54 + v3 + v2) = 2;
  *v8 = "inputChannels";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v54 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 10;
  *v10 = "nGroups";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v54 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 20;
  *v12 = "kernelDepth";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v54 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 21;
  *v14 = "kernelHeight";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v54 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 22;
  *v16 = "kernelWidth";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v54 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 31;
  *v18 = "strideDepth";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v7();
  v19 = (v54 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 32;
  *v20 = "strideHeight";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v7();
  v21 = (v54 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 33;
  *v22 = "strideWidth";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v54 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 40;
  *v24 = "dilationDepth";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v7();
  v25 = (v54 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 41;
  *v26 = "dilationHeight";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v7();
  v27 = (v54 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 42;
  *v28 = "dilationWidth";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v7();
  v29 = (v54 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 50;
  *v30 = "hasBias";
  *(v30 + 1) = 7;
  v30[16] = 2;
  v7();
  v31 = (v54 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 60;
  *v32 = "weights";
  *(v32 + 1) = 7;
  v32[16] = 2;
  v7();
  v33 = (v54 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 61;
  *v34 = "bias";
  *(v34 + 1) = 4;
  v34[16] = 2;
  v7();
  v35 = (v54 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 70;
  *v36 = "paddingType";
  *(v36 + 1) = 11;
  v36[16] = 2;
  v7();
  v37 = (v54 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 80;
  *v38 = "customPaddingFront";
  *(v38 + 1) = 18;
  v38[16] = 2;
  v7();
  v39 = (v54 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 81;
  *v40 = "customPaddingBack";
  *(v40 + 1) = 17;
  v40[16] = 2;
  v7();
  v41 = (v54 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 82;
  *v42 = "customPaddingTop";
  *(v42 + 1) = 16;
  v42[16] = 2;
  v7();
  v43 = (v54 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 83;
  *v44 = "customPaddingBottom";
  *(v44 + 1) = 19;
  v44[16] = 2;
  v7();
  v45 = (v54 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 84;
  *v46 = "customPaddingLeft";
  *(v46 + 1) = 17;
  v46[16] = 2;
  v7();
  v47 = (v54 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 85;
  *v48 = "customPaddingRight";
  *(v48 + 1) = 18;
  v48[16] = 2;
  v7();
  v49 = (v54 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 86;
  *v50 = "isDeconvolution";
  *(v50 + 1) = 15;
  v50[16] = 2;
  v7();
  v51 = (v54 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 87;
  *v52 = "outputShape";
  *(v52 + 1) = 11;
  v52[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_25759E834()
{
  *(v0 + 64) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v1 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  v2 = type metadata accessor for Proto_WeightParams(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__paddingType;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingFront) = 0;
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingBack) = 0;
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingTop) = 0;
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingBottom) = 0;
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingLeft) = 0;
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingRight) = 0;
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution) = 0;
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape) = MEMORY[0x277D84F90];
  return v0;
}

uint64_t sub_25759E930(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v42[1] = v42 - v5;
  *(v1 + 64) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v6 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  v42[0] = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  v7 = type metadata accessor for Proto_WeightParams(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v42[2] = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__paddingType;
  *v8 = 0;
  *(v8 + 8) = 1;
  v43 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingFront;
  *(v1 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingFront) = 0;
  v44 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingBack;
  *(v1 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingBack) = 0;
  v45 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingTop;
  *(v1 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingTop) = 0;
  v46 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingBottom;
  *(v1 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingBottom) = 0;
  v47 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingLeft;
  *(v1 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingLeft) = 0;
  v48 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingRight;
  *(v1 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingRight) = 0;
  v49 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution;
  *(v1 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution) = 0;
  v50 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape;
  *(v1 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape) = MEMORY[0x277D84F90];
  swift_beginAccess();
  v9 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v9;
  swift_beginAccess();
  v10 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 20) = v10;
  swift_beginAccess();
  v11 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v11;
  swift_beginAccess();
  v12 = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 28) = v12;
  swift_beginAccess();
  v13 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v13;
  swift_beginAccess();
  v14 = *(a1 + 36);
  swift_beginAccess();
  *(v1 + 36) = v14;
  swift_beginAccess();
  v15 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v15;
  swift_beginAccess();
  v16 = *(a1 + 44);
  swift_beginAccess();
  *(v1 + 44) = v16;
  swift_beginAccess();
  v17 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v17;
  swift_beginAccess();
  v18 = *(a1 + 52);
  swift_beginAccess();
  *(v1 + 52) = v18;
  swift_beginAccess();
  v19 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v19;
  swift_beginAccess();
  v20 = *(a1 + 60);
  swift_beginAccess();
  *(v1 + 60) = v20;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 64) = v20;
  swift_beginAccess();
  sub_257487308();
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  swift_beginAccess();
  sub_257487308();
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v21 = (a1 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__paddingType);
  swift_beginAccess();
  v22 = *v21;
  LOBYTE(v21) = *(v21 + 8);
  swift_beginAccess();
  *v8 = v22;
  *(v8 + 8) = v21;
  v23 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingFront;
  swift_beginAccess();
  LODWORD(v23) = *(a1 + v23);
  v24 = v43;
  swift_beginAccess();
  *(v1 + v24) = v23;
  v25 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingBack;
  swift_beginAccess();
  LODWORD(v25) = *(a1 + v25);
  v26 = v44;
  swift_beginAccess();
  *(v1 + v26) = v25;
  v27 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingTop;
  swift_beginAccess();
  LODWORD(v27) = *(a1 + v27);
  v28 = v45;
  swift_beginAccess();
  *(v1 + v28) = v27;
  v29 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingBottom;
  swift_beginAccess();
  LODWORD(v29) = *(a1 + v29);
  v30 = v46;
  swift_beginAccess();
  *(v1 + v30) = v29;
  v31 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingLeft;
  swift_beginAccess();
  LODWORD(v31) = *(a1 + v31);
  v32 = v47;
  swift_beginAccess();
  *(v1 + v32) = v31;
  v33 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingRight;
  swift_beginAccess();
  LODWORD(v33) = *(a1 + v33);
  v34 = v48;
  swift_beginAccess();
  *(v1 + v34) = v33;
  v35 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution;
  swift_beginAccess();
  LOBYTE(v35) = *(a1 + v35);
  v36 = v49;
  swift_beginAccess();
  *(v1 + v36) = v35;
  v37 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape;
  swift_beginAccess();
  v38 = *(a1 + v37);

  v39 = v50;
  swift_beginAccess();
  v40 = *(v1 + v39);
  *(v1 + v39) = v38;

  return v1;
}

uint64_t sub_25759F06C()
{
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias, &qword_27F87A1A0, &qword_257745750);
  v1 = *(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape);

  return v0;
}

void sub_25759F124()
{
  sub_25759B3F4(319, &qword_27F87BFC0, type metadata accessor for Proto_WeightParams, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_25759F240()
{
  while (1)
  {
    v3 = sub_257743234();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (!v2 & v1)
    {
      switch(v3)
      {
        case 61:
          sub_25759FC0C();
          break;
        case 2:
          sub_25759F630();
          break;
        case 10:
          sub_2575E293C();
          break;
        case 40:
          sub_25759F948();
          break;
        case 41:
          sub_25759F9CC();
          break;
        case 42:
          sub_25759FA50();
          break;
        case 50:
          sub_25759FAD4();
          break;
        case 60:
          sub_25759FB30();
          break;
        case 1:
          sub_257507848();
          break;
      }
    }

    else
    {
      switch(v3)
      {
        case 'F':
          sub_25759FCE8();
          break;
        case 'G':
        case 'H':
        case 'I':
        case 'J':
        case 'K':
        case 'L':
        case 'M':
        case 'N':
        case 'O':
          continue;
        case 'P':
        case 'Q':
        case 'R':
        case 'S':
        case 'T':
        case 'U':
          sub_25759FD84();
          break;
        case 'V':
          sub_2575CBF70();
          break;
        case 'W':
          sub_2575B39E8();
          break;
        default:
          JUMPOUT(0);
      }
    }
  }
}

uint64_t sub_25759F630()
{
  swift_beginAccess();
  sub_257743304();
  return swift_endAccess();
}

uint64_t sub_25759F6B4()
{
  swift_beginAccess();
  sub_257743304();
  return swift_endAccess();
}

uint64_t sub_25759F738()
{
  swift_beginAccess();
  sub_257743304();
  return swift_endAccess();
}

uint64_t sub_25759F7BC()
{
  swift_beginAccess();
  sub_257743304();
  return swift_endAccess();
}

uint64_t sub_25759F840()
{
  swift_beginAccess();
  sub_257743304();
  return swift_endAccess();
}

uint64_t sub_25759F8C4()
{
  swift_beginAccess();
  sub_257743304();
  return swift_endAccess();
}

uint64_t sub_25759F948()
{
  swift_beginAccess();
  sub_257743304();
  return swift_endAccess();
}

uint64_t sub_25759F9CC()
{
  swift_beginAccess();
  sub_257743304();
  return swift_endAccess();
}

uint64_t sub_25759FA50()
{
  swift_beginAccess();
  sub_257743304();
  return swift_endAccess();
}

uint64_t sub_25759FAD4()
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_82_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_64_1();
  sub_257743274();
  return OUTLINED_FUNCTION_306_0();
}

uint64_t sub_25759FB30()
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_25759FC0C()
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_25759FCE8()
{
  swift_beginAccess();
  sub_25760A1B4();
  sub_257743284();
  return swift_endAccess();
}

void sub_25759FD84()
{
  OUTLINED_FUNCTION_404_0();
  OUTLINED_FUNCTION_147_0();
  v1 = *v0;
  OUTLINED_FUNCTION_82_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_64_1();
  sub_257743304();
  OUTLINED_FUNCTION_306_0();
  OUTLINED_FUNCTION_405_0();
}

uint64_t sub_25759FDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_2577434F4(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 20) || (result = sub_2577434F4(), !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 24) || (result = sub_2577434F4(), !v4))
      {
        swift_beginAccess();
        if (!*(a1 + 28) || (result = sub_2577434F4(), !v4))
        {
          swift_beginAccess();
          if (!*(a1 + 32) || (result = sub_2577434F4(), !v4))
          {
            swift_beginAccess();
            if (!*(a1 + 36) || (result = sub_2577434F4(), !v4))
            {
              swift_beginAccess();
              if (!*(a1 + 40) || (result = sub_2577434F4(), !v4))
              {
                swift_beginAccess();
                if (!*(a1 + 44) || (result = sub_2577434F4(), !v4))
                {
                  swift_beginAccess();
                  if (!*(a1 + 48) || (result = sub_2577434F4(), !v4))
                  {
                    swift_beginAccess();
                    if (!*(a1 + 52) || (result = sub_2577434F4(), !v4))
                    {
                      swift_beginAccess();
                      if (!*(a1 + 56) || (result = sub_2577434F4(), !v4))
                      {
                        swift_beginAccess();
                        if (!*(a1 + 60) || (result = sub_2577434F4(), !v4))
                        {
                          swift_beginAccess();
                          if (*(a1 + 64) != 1 || (result = sub_2577434B4(), !v4))
                          {
                            result = sub_2575A03D0(a1, a2, a3, a4);
                            if (!v4)
                            {
                              sub_2575A05C4(a1, a2, a3, a4);
                              v10 = a1 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__paddingType;
                              swift_beginAccess();
                              if (*v10)
                              {
                                v19 = *v10;
                                v20 = *(v10 + 8);
                                sub_25760A1B4();
                                sub_2577434C4();
                              }

                              v11 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingFront;
                              swift_beginAccess();
                              if (*(a1 + v11))
                              {
                                sub_2577434F4();
                              }

                              v12 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingBack;
                              swift_beginAccess();
                              if (*(a1 + v12))
                              {
                                sub_2577434F4();
                              }

                              v13 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingTop;
                              swift_beginAccess();
                              if (*(a1 + v13))
                              {
                                sub_2577434F4();
                              }

                              v14 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingBottom;
                              swift_beginAccess();
                              if (*(a1 + v14))
                              {
                                sub_2577434F4();
                              }

                              v15 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingLeft;
                              swift_beginAccess();
                              if (*(a1 + v15))
                              {
                                sub_2577434F4();
                              }

                              v16 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingRight;
                              swift_beginAccess();
                              if (*(a1 + v16))
                              {
                                sub_2577434F4();
                              }

                              v17 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution;
                              swift_beginAccess();
                              if (*(a1 + v17) == 1)
                              {
                                sub_2577434B4();
                              }

                              v18 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape;
                              result = swift_beginAccess();
                              if (*(*(a1 + v18) + 16))
                              {

                                sub_2577434A4();
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}