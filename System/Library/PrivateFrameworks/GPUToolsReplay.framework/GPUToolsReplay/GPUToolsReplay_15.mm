uint64_t sub_24D842890(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = 0;
    v2 = *(v1 + 8);
    if ((v2 ^ (v2 - 1)) > v2 - 1 && (v2 - 2049) >= 0xFFFFF80F)
    {
      v3 = *(v1 + 12);
      if ((v3 ^ (v3 - 1)) <= v3 - 1 || (v3 - 8193) < 0xFFFFE03F)
      {
        return 0;
      }

      v5 = *(v1 + 16);
      if (v5.i32[0] >= 0x80u && (v6 = vcnt_s8(v5), v6.i16[0] = vaddlv_u8(v6), v6.i32[0] == 1))
      {
        if (v5.i32[0] > 0x8000u)
        {
          return 0;
        }
      }

      else if (v5.i32[0])
      {
        return 0;
      }

      v7 = *(v1 + 24);
      if (v7 == 1024 || v7 == 0x40000 || v7 == 4096)
      {
        operator new();
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_24D842978(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2860BB500;
  v4 = *a2;
  *(a1 + 24) = a2[1];
  *(a1 + 8) = v4;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  *(a1 + 88) = a2[5];
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 152) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 134) = 0u;
  v8 = *(a2 + 4);
  if (v8 <= 0x7FF)
  {
    v9 = sub_24D809C04();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_24D85D764(a2 + 4, v9);
    }

LABEL_7:
    v11 = *(a2 + 4);
    goto LABEL_10;
  }

  if (v8 < 4 * *(a2 + 2))
  {
    v10 = sub_24D809C04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_24D85D6AC(a2 + 4, a2 + 2, v10);
    }

    goto LABEL_7;
  }

  v11 = v8 - 2048;
  if (v11 <= 0x400)
  {
    v11 = 1024;
  }

LABEL_10:
  *(a1 + 160) = v11;
  *(a1 + 168) = xmmword_24DA8B940;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  if (*(a2 + 7) && *(a2 + 8))
  {
    v48 = 305;
    __p[3] = &unk_2860BB528;
    LOBYTE(v46) = 0;
    v12 = sub_24D79714C(__p, 305);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = 0;
      v15 = *(a2 + 7);
      v16 = __p[0];
      do
      {
        v12 = sub_24D846210(v12, *(v15 + 8 * v14));
        if (v12 != 305)
        {
          *&v16[(v12 >> 3) & 0x1FFFFFF8] |= 1 << v12;
          v13 = *(a2 + 8);
        }

        ++v14;
      }

      while (v14 < v13);
    }

    operator new();
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = *(a2 + 9);
  v17 = (a1 + 328);
  v18 = 12480;
  do
  {
    *(v17 - 88) = 0;
    *v17 = 0;
    v17 += 96;
    v18 -= 96;
  }

  while (v18);
  v19 = 448;
  v20 = (a1 + 12768);
  do
  {
    *(v20 - 48) = 0;
    *v20 = 0;
    v20 += 56;
    v19 -= 56;
  }

  while (v19);
  v21 = (a1 + 13200);
  v22 = 640;
  do
  {
    *(v21 - 32) = 0;
    *v21 = 0;
    v21 += 40;
    v22 -= 40;
  }

  while (v22);
  v23 = (a1 + 13912);
  v24 = 4080;
  do
  {
    *(v23 - 8) = 0;
    *v23 = 0;
    v23 += 16;
    v24 -= 16;
  }

  while (v24);
  v25 = 128;
  v26 = (a1 + 18020);
  do
  {
    *(v26 - 12) = 0;
    *v26 = 0;
    v26 += 16;
    v25 -= 16;
  }

  while (v25);
  v27 = (a1 + 18148);
  v28 = 128;
  do
  {
    *(v27 - 12) = 0;
    *v27 = 0;
    v27 += 16;
    v28 -= 16;
  }

  while (v28);
  v29 = (a1 + 18276);
  v30 = 128;
  do
  {
    *(v29 - 12) = 0;
    *v29 = 0;
    v29 += 16;
    v30 -= 16;
  }

  while (v30);
  v31 = (a1 + 18432);
  v32 = 6144;
  do
  {
    *(v31 - 40) = 0;
    *v31 = 0;
    v31 += 48;
    v32 -= 48;
  }

  while (v32);
  v33 = 8320;
  v34 = 24536;
  do
  {
    v35 = (a1 + v34);
    *v35 = 0;
    v35[1] = 0;
    v34 += 1040;
    v33 -= 1040;
  }

  while (v33);
  *(a1 + 17984) = 0u;
  *(a1 + 17998) = 0;
  *(a1 + 32856) = 0u;
  *(a1 + 32872) = 0u;
  v36 = *(a1 + 20);
  if (v36 == 0x2000)
  {
    v37 = 7;
  }

  else
  {
    v37 = 0;
  }

  if (v36 == 4096)
  {
    v38 = 6;
  }

  else
  {
    v38 = v37;
  }

  if (v36 == 2048)
  {
    v39 = 5;
  }

  else
  {
    v39 = 0;
  }

  if (v36 == 1024)
  {
    v40 = 4;
  }

  else
  {
    v40 = v39;
  }

  if (v36 <= 4095)
  {
    v38 = v40;
  }

  if (v36 == 512)
  {
    v41 = 3;
  }

  else
  {
    v41 = 0;
  }

  if (v36 == 256)
  {
    v42 = 2;
  }

  else
  {
    v42 = v41;
  }

  if (v36 == 128)
  {
    v43 = 1;
  }

  else
  {
    v43 = v42;
  }

  if (v36 <= 1023)
  {
    v44 = v43;
  }

  else
  {
    v44 = v38;
  }

  *(a1 + 156) = v44;
  sub_24D790B1C((a1 + 8), (a1 + 32856));
  return a1;
}

uint64_t sub_24D846148(uint64_t a1)
{
  v2 = a1 + 0x8000;
  *a1 = &unk_2860BB500;
  if (*(a1 + 200))
  {
    v3 = sub_24D7CFC0C();
    MEMORY[0x2530332C0](v3, 0x10B0C40146BE95CLL);
    *(a1 + 200) = 0;
  }

  v4 = *(v2 + 88);
  if (v4)
  {
    *(v2 + 96) = v4;
    operator delete(v4);
  }

  v6 = (a1 + 208);
  std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  return a1;
}

void sub_24D8461D8(uint64_t a1)
{
  sub_24D846148(a1);

  JUMPOUT(0x2530332C0);
}

uint64_t sub_24D846210(int a1, char *__s1)
{
  if (!__s1)
  {
    return 305;
  }

  result = strcmp(__s1, "9B37F49C310110FE3C1D0349A0DBD1F4165E5E1873418FE3D8E02DBD2C42360F");
  if (result)
  {
    if (!strcmp(__s1, "ECE8C77FAA463F6CD7C69976F66D170E06AABA1F8EAADE7E5C2EF059C7FD1BC6"))
    {
      return 1;
    }

    else if (!strcmp(__s1, "8751E932723FAB8324B1EFAB05DE911953F94AB079963EC9D4882EC0F853207E"))
    {
      return 2;
    }

    else if (!strcmp(__s1, "6EA38ABD760FE83DDB724F359C9F761841C5BD69E5DCCC1C211D42F98751EF80"))
    {
      return 3;
    }

    else if (!strcmp(__s1, "92CB5205D6DC7B8CF67306FCBBF4D2E22C50A82E14C323C9869A8154961E1379"))
    {
      return 4;
    }

    else if (!strcmp(__s1, "87BA80BEA278BCBDE11D4ADFEA6B3C8BEF365D8260CDE3591D5B76B2C36DD853"))
    {
      return 5;
    }

    else if (!strcmp(__s1, "D2D6A9827703DC8826305F130123DE83C3648F82DCB4F96DFCD7E33EA799BD62"))
    {
      return 6;
    }

    else if (!strcmp(__s1, "98A511FEF2F07DAECD3383521C19383B6DCA2C733FA4611CDFA49CC62B7B5181"))
    {
      return 7;
    }

    else if (!strcmp(__s1, "51A34CA49D64B984F464BC878382CDD07EEF0B001EBE4F2E95026F21673969A7"))
    {
      return 8;
    }

    else if (!strcmp(__s1, "83B2F8BA9316B9EFB16E84445A86F4306028A166E21E7B350C8D908E696445FC"))
    {
      return 9;
    }

    else if (!strcmp(__s1, "5BA476059E7B48575673F80A8DC1251E26C5B23F5DCF5BCB3AB1251D0D3424E8"))
    {
      return 10;
    }

    else if (!strcmp(__s1, "D613D0441777617363D2EF9031155D28A493ED4CF2B714C61332BEB8E694A21C"))
    {
      return 11;
    }

    else if (!strcmp(__s1, "250DFDD8D5BC61F9B0D9CD91F4DDCE0E4799ED7B1264EEF03FAD66612BCA288D"))
    {
      return 12;
    }

    else if (!strcmp(__s1, "06E83674FEE3BAEADDA04BCE4F798E64EAF9562959486A334178EFE9614AFE02"))
    {
      return 13;
    }

    else if (!strcmp(__s1, "CFC88028D48CFFC122779E410D958A0644A7B3219492B8F56805460AE11D3317"))
    {
      return 14;
    }

    else if (!strcmp(__s1, "C38EE6AA610415ACB3D10D68E346EE868CDB70CFC2F46D887E5E152FD4A256B2"))
    {
      return 15;
    }

    else if (!strcmp(__s1, "AEB4C02667999241FFC01E220B4443963E1B34D3ACD2C5545F5BBE1143870378"))
    {
      return 16;
    }

    else if (!strcmp(__s1, "40A9788933E5BA39796E86A50864B263BC0F2291A4B895C7EA6BBB144E5DACA5"))
    {
      return 17;
    }

    else if (!strcmp(__s1, "D469DF7536BAE8E1DE2CB8B3C1E14B4133343771592D97C7BCEC1D03BF0EE40A"))
    {
      return 18;
    }

    else if (!strcmp(__s1, "F9F04A751DF32AED42FF9EFB131D3CD40E499AA0A99A68D0DD6778167E42BF26"))
    {
      return 19;
    }

    else if (!strcmp(__s1, "357D351342C59B72F21BD4580AD1B2F1C4C47D0006AB615A4760BC3BEBD99E48"))
    {
      return 20;
    }

    else if (!strcmp(__s1, "3E6CC5C197ACBED66DB18F36FE33CAF7D744175ADB2FE6C6FAE97B0CBB5B21CD"))
    {
      return 21;
    }

    else if (!strcmp(__s1, "FB75B1EE028F765D95134B65BAFD26602EE879B247F31514268AFE1DF00830D4"))
    {
      return 22;
    }

    else if (!strcmp(__s1, "C8CAD3DF32303A6876151218FAAA63CA0642964F0528B51E0F3BBA792A0FA006"))
    {
      return 23;
    }

    else if (!strcmp(__s1, "55DDF08ED5B641C5048444150A2D58A930D81F86EEA506CD8B4073F64FC0F1C2"))
    {
      return 24;
    }

    else if (!strcmp(__s1, "C4B3D90E89BC6B96BEB336D1A17757038334C2A490EDF56428037F1BC405BF70"))
    {
      return 25;
    }

    else if (!strcmp(__s1, "E0822A12A8DD1B222198A771537F2CE4899EB45BC94D7854E0E6FA983E6EBC89"))
    {
      return 26;
    }

    else if (!strcmp(__s1, "33634F0DC72BA827D588E38DC75C388CF4976E4671D85148780CFAFD262B07FB"))
    {
      return 27;
    }

    else if (!strcmp(__s1, "FD6F91B4C067953424B95F0B332F0FB4A64F7E43DC4D6E8CDE26B1D5D7C07A42"))
    {
      return 28;
    }

    else if (!strcmp(__s1, "50E7E1AAC46F3CF79A6B3BB2DDC0BCDCF0ACD9011439415E47AEA7B6579F3EA8"))
    {
      return 29;
    }

    else if (!strcmp(__s1, "B6B78FABA9FD12B688986DC5EA4D4B8B731265EDEC1E5AE52B0CAA6FC31801F2"))
    {
      return 30;
    }

    else if (!strcmp(__s1, "EE8BC6D1FFF4A5A917BB00BF2D4D1731C21189C48D1E9BC5D3ADA75BBEFB1B21"))
    {
      return 31;
    }

    else if (!strcmp(__s1, "25C93B5B4A76FFE8A20CA68271CF612F43D0B5504B6680945F3BB046DA47213A"))
    {
      return 32;
    }

    else if (!strcmp(__s1, "7F94E8CDDF759E47648859D758AC1D2F3A203FDADD7EBE71974F98670262F0E1"))
    {
      return 33;
    }

    else if (!strcmp(__s1, "B4FDED34CDC40097AF8781159958E328E97F9506A54251304F3044F35734BA1F"))
    {
      return 34;
    }

    else if (!strcmp(__s1, "8DE3EB67F4A5DDDF3DF41FF1DCEC7946DE4C0AC8C6E18A46B9A3E61C6C497F69"))
    {
      return 35;
    }

    else if (!strcmp(__s1, "06233651FBD08F0066125C1134383BAF4791BCC2DFBBF905ACA71F5466ADED9B"))
    {
      return 36;
    }

    else if (!strcmp(__s1, "5B5DC5D95D1F90AD39F549F24C70BAC5928129DDCBB79BAB2158AA85317B2099"))
    {
      return 37;
    }

    else if (!strcmp(__s1, "C521760ABB46B43088E9E6E286368E5464F20AE90F1D698DF07C00A6FBB3D115"))
    {
      return 38;
    }

    else if (!strcmp(__s1, "360081D8A192D9EAB8DC6F6EAC25370B5B838CEB9F334BAC919F4CC2E7CD4ED6"))
    {
      return 39;
    }

    else if (!strcmp(__s1, "ED33A3CBB8630DAFA661B6977D341D62361A584B83C50CE4AA9F20C77278610B"))
    {
      return 40;
    }

    else if (!strcmp(__s1, "4978C08E9D3AB613EE1B8B0BDCCE4046D596D77E4B3285FD26DE51CBED95C706"))
    {
      return 41;
    }

    else if (!strcmp(__s1, "4D997B4599AD37918CEE1A51347AE6F6595A4B4F6BDB5A626BC00348DC070B38"))
    {
      return 42;
    }

    else if (!strcmp(__s1, "A1F762436C046FC59046061C0CB7BD0DE45C222A5E57C1C47F87948850234594"))
    {
      return 43;
    }

    else if (!strcmp(__s1, "C51A7FA32CB56141CC2697BD50AA465B125331846CF486D1A23C56491C063BCA"))
    {
      return 44;
    }

    else if (!strcmp(__s1, "85F2A20F2D46E2D369470A5B664F4163FB619D3513AB222F4222C880D59B383A"))
    {
      return 45;
    }

    else if (!strcmp(__s1, "1E68C8A4555F978F7EBB48C7CDE72B0B669D4FCF524878C1B09753DC85FA51C6"))
    {
      return 46;
    }

    else if (!strcmp(__s1, "D2BAB1CC9060EBB2601E0D9594280A394EF3A978788A7F144337BDE41C25A9D3"))
    {
      return 47;
    }

    else if (!strcmp(__s1, "8D544DD9E94EA7D05E520E44F9BD5E58A12EACF9440D3323E8A9EBD681E1B22E"))
    {
      return 48;
    }

    else if (!strcmp(__s1, "68955CD4DD2B024A2C3B1347FAA2EE1C0FEAC9A54B834FFD798DB5B40F86EF99"))
    {
      return 49;
    }

    else if (!strcmp(__s1, "7CA95EAA0720DCB83F7592E7A95207136D0365E3259721FA97A5F2E3B189472C"))
    {
      return 50;
    }

    else if (!strcmp(__s1, "30CF25A160D15BDFBD79EE3DEFAF8D8673918FA6239A815D00E6989DA599205A"))
    {
      return 51;
    }

    else if (!strcmp(__s1, "55CEE38A63D2BFA2E2E0C34CCA91302C92577CB2B3213282D9DABC41F03D0D21"))
    {
      return 52;
    }

    else if (!strcmp(__s1, "D56B7E7432EDA7633C4AFD6FFE777A29E7AACB6AB05EABE4DE90F2936E5B2623"))
    {
      return 53;
    }

    else if (!strcmp(__s1, "F95DFFE3A1BA6540BA6B0C8C3B3B08C3D4C0BCCC082A0874526304B7CF0313EF"))
    {
      return 54;
    }

    else if (!strcmp(__s1, "8C878172DC559994374EED2CC5251FCD50A25BB771DEBC5FD9EE64B4665AD14D"))
    {
      return 55;
    }

    else if (!strcmp(__s1, "0EE126743B64823629A81C2920FAA6966E0E52263862EF2A9F3DFF35C2AC8A9C"))
    {
      return 56;
    }

    else if (!strcmp(__s1, "44154E71B9E814B41C5ECA21680AC1383FF6126ED3EB45B479A9D67BA843AFB2"))
    {
      return 57;
    }

    else if (!strcmp(__s1, "79E88035C9BC883D403F17831B8C9264E643C6B76E9B3C1451B49B0F672C32BF"))
    {
      return 58;
    }

    else if (!strcmp(__s1, "AA1E812506867A5F2C54D3BA3268DB5C4BB2C6B0E4F500340DD23C4E1E637D9D"))
    {
      return 59;
    }

    else if (!strcmp(__s1, "295D65BB175E4E4EEF9003E008E093043C9B8CE43190BE0A2D8F1771F9837033"))
    {
      return 60;
    }

    else if (!strcmp(__s1, "4BF63E209F7D92B4E8341476C80013664D3299327C72E7A7F0D16E1CBD4904FC"))
    {
      return 61;
    }

    else if (!strcmp(__s1, "9C4011AA6D96FA382174AFD86D59DF18369E28D27CF17B9BB9ACA4FF95E40B54"))
    {
      return 62;
    }

    else if (!strcmp(__s1, "6E4B985D58D9922328978C1195CE700B9D0ADEA8B6F32EE2B50F86C993F53566"))
    {
      return 63;
    }

    else if (!strcmp(__s1, "9382104F02B29DB357F4F725145F7C1FB09501D2B49FEE4E19072E37FC7BD72A"))
    {
      return 64;
    }

    else if (!strcmp(__s1, "904CBFF8576D1B845F2199FC58EB496E6C12A8412850799564035215C2EE4EA6"))
    {
      return 65;
    }

    else if (!strcmp(__s1, "7A1AA2B358C4A67EB5370BDD2302AF92968558ABF28AC078D6FA40D578116978"))
    {
      return 66;
    }

    else if (!strcmp(__s1, "3856FBD8576C0AA988700D7EF5787AAAE94A3BBFBB393B0426FA9D379DA69C91"))
    {
      return 67;
    }

    else if (!strcmp(__s1, "97C8674BCC5158E92BF4C5A05149D966851A4049E662F540F6B03D6AD581EAE3"))
    {
      return 68;
    }

    else if (!strcmp(__s1, "D45640E968D6D66E66F8457BBE4543C7AD52C659AAC83DA1F84538E5A3422E7F"))
    {
      return 69;
    }

    else if (!strcmp(__s1, "260130B343BA0695AB911D986B3870FA0CCD0EC58E6F55895A856F37201CE9F8"))
    {
      return 70;
    }

    else if (!strcmp(__s1, "100299043F027ADADB62685130C7FBE549E29F08B58C365844FF8EC25BAEEAB0"))
    {
      return 71;
    }

    else if (!strcmp(__s1, "547021D0E82D62B7841769A23FC7FE04F7A63B8A0528A3F6E4C67E8B9420360E"))
    {
      return 72;
    }

    else if (!strcmp(__s1, "76F5A23AACC27615C980BE3E58B52994192195866836855BCA7C3F885796297B"))
    {
      return 73;
    }

    else if (!strcmp(__s1, "02FFFEEC34CB4F9BB2B7187D31D98A830068967AB21581BD376B54C226438E89"))
    {
      return 74;
    }

    else if (!strcmp(__s1, "04073FDE1194CB0F72482834FBBA80AA6F003D403E8E1D5F5D20A78285361A15"))
    {
      return 75;
    }

    else if (!strcmp(__s1, "6E9FC9ADDBC6FDE3F223F4689164CD676FE137A81548507A1D0C44EEA6492399"))
    {
      return 76;
    }

    else if (!strcmp(__s1, "E0A8B6C5B8F699697896183E1FAFABD9541AA90136D44C9E11F2D135A32D37D7"))
    {
      return 77;
    }

    else if (!strcmp(__s1, "1FFBA951E06F1A7810DC823264210F0C13273E454D699383F3D6265630FEDD53"))
    {
      return 78;
    }

    else if (!strcmp(__s1, "2EE823490C4844D08DDAEE1062DFA5A9C775681202733CE713820F1D6509A369"))
    {
      return 79;
    }

    else if (!strcmp(__s1, "6A6B877E9B92C01826C49C745214903A1ABE8A4F2643F72ED9F893CBE42C4B3A"))
    {
      return 80;
    }

    else if (!strcmp(__s1, "9E7E7B3180DA596EBA2925972639C8DC058E97904ADA86E8FA31E691D63CA97B"))
    {
      return 81;
    }

    else if (!strcmp(__s1, "0D43CB377576A411251DB7D5579117D02FC1BB178830D97B5332A806AC122B37"))
    {
      return 82;
    }

    else if (!strcmp(__s1, "ECCE75AB7F80F9519A3E08E3A0EE71610AE67E3B82829786B02D98C09276F560"))
    {
      return 83;
    }

    else if (!strcmp(__s1, "D7642F4CD8A1F1052D8874FFCB84623EEB5AD8DB476AAA36BB13F44E0122717D"))
    {
      return 84;
    }

    else if (!strcmp(__s1, "35E9B0A78729DBBE416E11951D26DDC657D957CE37E23B41A2915BB6CC8CF792"))
    {
      return 85;
    }

    else if (!strcmp(__s1, "FE4E8A2782700A8DEC84E195627096B91A904FF6F486B78EF381501FB9667E0F"))
    {
      return 86;
    }

    else if (!strcmp(__s1, "8CF1E386EE3A3B138617A8BCFBEB4D376D2B696364330A1BFD8711185D4729B3"))
    {
      return 87;
    }

    else if (!strcmp(__s1, "300AF657F991E64A7D1C840E67C80384F989A47CEDCCA986B57DBE26768A2730"))
    {
      return 88;
    }

    else if (!strcmp(__s1, "51189DA6335464233B7B06C10962008F93292B56018C07FED32661289705C6ED"))
    {
      return 89;
    }

    else if (!strcmp(__s1, "5C54374704E9720290CC29DD546EB2792D9D700BE3F0A1F6CCAFA3D19D8F9832"))
    {
      return 90;
    }

    else if (!strcmp(__s1, "C04589D08BD1AA2481137A423CC2E81C537B75011557AB0EA579F58E489D9981"))
    {
      return 91;
    }

    else if (!strcmp(__s1, "A1CD5E72A4CAD33DD4C2190F293103B9FD8B40FFE76B1A99A195768465964F91"))
    {
      return 92;
    }

    else if (!strcmp(__s1, "7C3CD59A80673DD0787DF037FB1FB45E0EB635BFDB2554E10CBF5D056FEDAB78"))
    {
      return 93;
    }

    else if (!strcmp(__s1, "EE1C44BA654C2C10C7DB0434A851DBB3103BDD9D9306720B99A54BAC5F81779F"))
    {
      return 94;
    }

    else if (!strcmp(__s1, "12BC4E6523E256F1909E802458C2E880B38E5A8E96D01E889A5C9CBE7C376450"))
    {
      return 95;
    }

    else if (!strcmp(__s1, "30E723A308ED187FBA1B1767CFC4B4194C6A5B389089F21A3C0995763C0B223C"))
    {
      return 96;
    }

    else if (!strcmp(__s1, "171BC401E17487FA4D07865739044B318EEDC79CADD0317DD27D70E2BD0E5F5E"))
    {
      return 97;
    }

    else if (!strcmp(__s1, "F87F5FA1ACBE57E6A8D239141A2AEB89660AA820F4752500BE993B80E3AE6AD0"))
    {
      return 98;
    }

    else if (!strcmp(__s1, "41919D0D7426716623EB2B8CEC8FEC7C0185029A4F970CA7905BA42388A97673"))
    {
      return 99;
    }

    else if (!strcmp(__s1, "4F15DAD92E0A785D745021F7B94F51521E898720D5169990597E128646A6955D"))
    {
      return 100;
    }

    else if (!strcmp(__s1, "08AB4C79C0BDC9E53461A58B27E6D0E7EB2C43FF4B5F7E4DAD07415A5E112741"))
    {
      return 101;
    }

    else if (!strcmp(__s1, "C5491B58BB279B039FAC8C9736C09E9A33E7EC5399E387F4D13BBAE612BCA350"))
    {
      return 102;
    }

    else if (!strcmp(__s1, "6CF80B1A4946AE0C475E5E4AC168052F3850D07EBCA0C1CD0369D2D3C2C64D04"))
    {
      return 103;
    }

    else if (!strcmp(__s1, "D754A0D8A25FC01887EF6D4864286FB54EE1AD4C88BE01CFF4EA45226ED884B3"))
    {
      return 104;
    }

    else if (!strcmp(__s1, "DC2161FB676079EFF4C6F12BF10A5EE9711C91E511F1FD4709AEDD025D8A940D"))
    {
      return 105;
    }

    else if (!strcmp(__s1, "A6C2B5EE1745CD5EB5C81F2B31F5E946A0C1BDC93B226BB05571EFA08555EF8F"))
    {
      return 106;
    }

    else if (!strcmp(__s1, "18487C9D7CEF0D61908387ACBCC7316000F44757B4F9C98EA18217C35C6ECF85"))
    {
      return 107;
    }

    else if (!strcmp(__s1, "274A1E04D620A2A93E0AAFC7DB5F0BC3A6322D745709FD3011852A7608D0DC59"))
    {
      return 108;
    }

    else if (!strcmp(__s1, "E21086636B17AA11D0ECA0545AB90C82D396EB03C6D33A9DE49DEEC71BFEC9A3"))
    {
      return 109;
    }

    else if (!strcmp(__s1, "F93BD51590E12E152D57812AB309EAEBF9071D5C2388B7655E68B247C0FAD0D1"))
    {
      return 110;
    }

    else if (!strcmp(__s1, "BBCAED11B11B532D059ECCE803187E921B88B8E216E034B59775007DCF9780DE"))
    {
      return 111;
    }

    else if (!strcmp(__s1, "000DAB9E75390C26D045E00DFBE36CBC2FFBD42E8B0530540C4DCD8981FB52C9"))
    {
      return 112;
    }

    else if (!strcmp(__s1, "20704FA8349FC82949E901F75BCF6DA19690A9A2FE0383950F4A47E8056DB114"))
    {
      return 113;
    }

    else if (!strcmp(__s1, "33B334FD12A6201DB49E4003CB6BB2666575C9DF119DB5CF714FF5C4CF8B9156"))
    {
      return 114;
    }

    else if (!strcmp(__s1, "768E15468DD7366F4763C6D1E172AFF1731073A8C04B89CE1D9C2920364B4386"))
    {
      return 115;
    }

    else if (!strcmp(__s1, "0AF6A9208DBB7C0C06A19C4C9090BF87CF00BBEE2BDFD9E0C49423DD641C1174"))
    {
      return 116;
    }

    else if (!strcmp(__s1, "0D32627A10C5DB983D8E5DF466E154001CBB4E945D22A4E280A08C8D0F1701A7"))
    {
      return 117;
    }

    else if (!strcmp(__s1, "DFF91EC9DAE4F9D14485F569D87B6AC75F93DD47C850ACF09E9DD7A3D0EFCE8A"))
    {
      return 118;
    }

    else if (!strcmp(__s1, "D1922B4CF1F4DC1E2062378D34EE4E6EAB398BD0417BC95E5EF60C5C1F53E035"))
    {
      return 119;
    }

    else if (!strcmp(__s1, "EED11884758646FD70438F8D2661EC13F25DF1E40EC651E073736D2EFDAB9F0D"))
    {
      return 120;
    }

    else if (!strcmp(__s1, "3CCBBD2DBDE74F294638B5661472C6041FD802D082125437CB926C2F4E201182"))
    {
      return 121;
    }

    else if (!strcmp(__s1, "3FAA4DE8275531852B39C91E52291523AEA993A6114D2CF7645F7C8AC1EF27CE"))
    {
      return 122;
    }

    else if (!strcmp(__s1, "2660D91E9E44E8375C647F1F4FDD89923B3BFA26A3AF29D5937BAF8EF1E10CFE"))
    {
      return 123;
    }

    else if (!strcmp(__s1, "6CFA2D1125EAFC658FDF0E2F1A1B4F8D315296A1AFB116D0A8ECF669C026FF69"))
    {
      return 124;
    }

    else if (!strcmp(__s1, "B6C42286FD0AB628E79B9D4F5F10DC31C2DFD460570800BEB5C9E53651363C7D"))
    {
      return 125;
    }

    else if (!strcmp(__s1, "8F37B8C186E20EAB68B65FA965112E8C106205370CA0829C3EBD548C49C99A46"))
    {
      return 126;
    }

    else if (!strcmp(__s1, "7D8633F6EB10ABA43002BB46D28FA26BFFA1093AB39728908221CE3FD922C72D"))
    {
      return 127;
    }

    else if (!strcmp(__s1, "E01BD71065BD9CE02CFEEC935E09F6DE3C3B9EFAED8F187A533C6321069B4D85"))
    {
      return 128;
    }

    else if (!strcmp(__s1, "0597494BBDA7FA995805FB01DD8AD6D81CC143C09F8EFB86702288F745E3F791"))
    {
      return 129;
    }

    else if (!strcmp(__s1, "6FFBFD65F64B0F892C812D9952748E8632E02C4DF155F5E233927E6D0DC88D38"))
    {
      return 130;
    }

    else if (!strcmp(__s1, "5DCA18DF36F9FA665E30157E71359C15F04492B59DA944CC2B10D7A925843DA7"))
    {
      return 131;
    }

    else if (!strcmp(__s1, "E2D94E3051875514422124C186B05CDA6F417AF1FC67511A17055B65BED227AA"))
    {
      return 132;
    }

    else if (!strcmp(__s1, "A6DE7D11FD45FD0B0F5541862F786FAAA17E530F3CBAC5CE63EFD6C7B7B8EC27"))
    {
      return 133;
    }

    else if (!strcmp(__s1, "2C9ACA342CA7C8F4A29CA1C798155F709AC8B8D95F0D20C549DBC00F1C42184D"))
    {
      return 134;
    }

    else if (!strcmp(__s1, "54D70702DEC6F85C65B8D1E26F089610058B0CDC6B23440F6FD07F26E6E23315"))
    {
      return 135;
    }

    else if (!strcmp(__s1, "5851D9888A5EE313F6D80CC60F6BB6ADFC20BB0BA8D9BED753F04382DF6BED1A"))
    {
      return 136;
    }

    else if (!strcmp(__s1, "1ADDCB1D74CE36E8E4C6007CDB14DD6A053A9C2FBDB707345B3C5E7BB07299AA"))
    {
      return 137;
    }

    else if (!strcmp(__s1, "0AAC94B02176D8B144479EAFEE546A608C8B5E61D7A27481868626A7820E0CB1"))
    {
      return 138;
    }

    else if (!strcmp(__s1, "EC02EE62A95DE2B0B2BC9C65A400E1318CFD7FFA894EECC7B23F8FB164A10C08"))
    {
      return 139;
    }

    else if (!strcmp(__s1, "E9FDDF0E4E3D3ABB4D40C135F207C0310E5BE4CCF2EC1099CB89594DD756B745"))
    {
      return 140;
    }

    else if (!strcmp(__s1, "53E08B2D38CDBBC0D198B95302BCC632B50E773651E9BA4C57373B002114CBBC"))
    {
      return 141;
    }

    else if (!strcmp(__s1, "972B60C198C39199A11F25454037CADA381BB118BE18D850A36534F88A82B7F1"))
    {
      return 142;
    }

    else if (!strcmp(__s1, "244B94B5F2129A5A0083F3661EAC9C6B9EB5FB62A499E6ED236452F5BE6828F5"))
    {
      return 143;
    }

    else if (!strcmp(__s1, "FD406D36CD5763CFC9F0DD6C37C7BDC528ADF3990CF9725229F4258C1758C94D"))
    {
      return 144;
    }

    else if (!strcmp(__s1, "353FBA19946FC52BCED9C06F6EE4844496369F4985110F6E78E467505E48C88F"))
    {
      return 145;
    }

    else if (!strcmp(__s1, "5537928133BBD235A03487186F42FBFF9D0FC45873C83FD5219EB5EBF500ED10"))
    {
      return 146;
    }

    else if (!strcmp(__s1, "75D1CF68BBA66F3E658B115EF614F1449D832863CAF5F46D092488791378897F"))
    {
      return 147;
    }

    else if (!strcmp(__s1, "63CA0F7A21417297C42CDF8868259FBCECF5C6A5C1C994C3A1CA5F608179B458"))
    {
      return 148;
    }

    else if (!strcmp(__s1, "F6D454657EA6A999B3D168C1A68D6592B2F348BA088B279DBF0A992754767224"))
    {
      return 149;
    }

    else if (!strcmp(__s1, "42EA38C66C2CC54A764D5E204FF38F3402542A5F05B7731D549F22D745429051"))
    {
      return 150;
    }

    else if (!strcmp(__s1, "37C7DEA7C7AC62E48672D62B73746ED032AC86A05AA223DB4F373D44F106CD6A"))
    {
      return 151;
    }

    else if (!strcmp(__s1, "C437CC379874665252F935CA927505B4C191927511AC72B4669F58BE3576516D"))
    {
      return 152;
    }

    else if (!strcmp(__s1, "F942A7256C77ACD182AE0B767F21133B11937660A61610A18CD14087D1F2F71C"))
    {
      return 153;
    }

    else if (!strcmp(__s1, "AC7E4629ABFA704A6369754CB199383D2901F0916E230FB75D765420550E8244"))
    {
      return 154;
    }

    else if (!strcmp(__s1, "6368DD78E9738AAB3001F4C17EBE26BFB0414CDCC1399D092A48AB5A57536454"))
    {
      return 155;
    }

    else if (!strcmp(__s1, "26456E27CBF6165D84C883AC666AF50E5EAAA39D07887C37BD3A9BD26A74B2FE"))
    {
      return 156;
    }

    else if (!strcmp(__s1, "DD96D75C3E233EE9B4528803691C00E98D5F49F2B4B3B83676332ABFBB65DE07"))
    {
      return 157;
    }

    else if (!strcmp(__s1, "7262FC4EB2434704063840AB716EF14B50F3A0E5E3457E8EBF9E014325CAE94F"))
    {
      return 158;
    }

    else if (!strcmp(__s1, "27A93DA3DF54447DCB9F371C54907BEFA8F17B7FA905EDAC2B523C7A0D93A918"))
    {
      return 159;
    }

    else if (!strcmp(__s1, "038FA673BF47F15B7C5236E4863A96C910C3993AB31529A041DE199F3EEB66CB"))
    {
      return 160;
    }

    else if (!strcmp(__s1, "89DBD24AAAD1D4D50F3F74A7040B52C5B06B4768F1E09DC89D4067D243744882"))
    {
      return 161;
    }

    else if (!strcmp(__s1, "9EB2D21E75D0AA677C8D110763485DB3A78262C89D05CA0C3AF7EBD2D6AB99DD"))
    {
      return 162;
    }

    else if (!strcmp(__s1, "00EB2F035A98609505AB8DAB9B98D1FECEAA766F368932F7FE6316AE8BAEFBE0"))
    {
      return 163;
    }

    else if (!strcmp(__s1, "FED7B076A3D7DE52B6D9A21D14FB1A49BABF975B73BE74181C4EA26976162724"))
    {
      return 164;
    }

    else if (!strcmp(__s1, "903B8B51F5368A75F9777D9155C6A2664116770701ED241A6D1662131A802333"))
    {
      return 165;
    }

    else if (!strcmp(__s1, "2A5A81F290FDE6D31DB132DD493737A7252C441023286294F3C77CE48DD4E2F0"))
    {
      return 166;
    }

    else if (!strcmp(__s1, "0C60DB8A2A73C9B343C4B279EDF24580976BD74BD0294B1AAC17B0A4273D8C28"))
    {
      return 167;
    }

    else if (!strcmp(__s1, "BA7A33DF7A125E9EE5C1036DD6DADB3B74CC4B9BA9C5C1B235C131E70B7B4E41"))
    {
      return 168;
    }

    else if (!strcmp(__s1, "CB722FC55B016A1B6B95E9316EFDF36E515F81CBEC5C608C65C75545CF6A8AF6"))
    {
      return 169;
    }

    else if (!strcmp(__s1, "D998C752E374455CC51E6E7F972E9066BF96493F5E519C39314E6EA182DEC989"))
    {
      return 170;
    }

    else if (!strcmp(__s1, "09DBC5707B0508DF4552BDD0A6D1C0362F12D86F14D85FE59143DBA848B60A12"))
    {
      return 171;
    }

    else if (!strcmp(__s1, "7D81B2258620371E7E3F46DE81A1FC69C64ECAB0DA1CD623CA673B0D86987A36"))
    {
      return 172;
    }

    else if (!strcmp(__s1, "9274482D2155583DF6DC8DAAD9BB268AE60B20BFFA13A63930E14F6A3127D9D5"))
    {
      return 173;
    }

    else if (!strcmp(__s1, "33AD1B205F044CBAEC55DFC345AA90BA5963981BDDE6DD1424C7C664BBDA9A19"))
    {
      return 174;
    }

    else if (!strcmp(__s1, "0D94F9D5A8925DD3B142B148680218765B9EF3E1EB67BFC606809EB277E5C6CE"))
    {
      return 175;
    }

    else if (!strcmp(__s1, "1056FF4E9C025008F2D447EDDE5A503562A8E76EEBAC4B808EFE5FF3E72CECF0"))
    {
      return 176;
    }

    else if (!strcmp(__s1, "174B580253D8D7F46E44DF83C10DA938CFF5D9BD3B2339D54D87E4A3E166E49E"))
    {
      return 177;
    }

    else if (!strcmp(__s1, "30279F1D27E2CECF38ED5CD935A9A792653BE3D53A1F756492AADAD9F0634710"))
    {
      return 178;
    }

    else if (!strcmp(__s1, "3A0E73407DCB7199567E5320EC6E25CCE532523BE0472FC636F53E1F15C1E066"))
    {
      return 179;
    }

    else if (!strcmp(__s1, "E7B5AB360AE1053BFA5A4BB525797E599DB1DCD31F6AC898D2C91F672799E697"))
    {
      return 180;
    }

    else if (!strcmp(__s1, "265B003FED41A5E71955524A17181E7FD234A47BD4C5256A4BDB11D13B89ADF5"))
    {
      return 181;
    }

    else if (!strcmp(__s1, "D445AF5F7C0B607D6832FFA57C38B00F366DF954DBCB4A53A7E3332E1D600002"))
    {
      return 182;
    }

    else if (!strcmp(__s1, "761E041C40B88964C49745B71E4CE88821E906DB6A7BCA88B643683E1BD77B41"))
    {
      return 183;
    }

    else if (!strcmp(__s1, "2BCC056CDB3F6A0D07B9FB382032A8567BFD2502097371C855513B9CACDE4A26"))
    {
      return 184;
    }

    else if (!strcmp(__s1, "D2D14661D9692EBD5065F06CB4C2AC7DD14339CAEA538D5AFA4A2B5813E87D5D"))
    {
      return 185;
    }

    else if (!strcmp(__s1, "28B92DE785184753FAF5508E080CB8FE784D6A5214E5E6382751D52534A72FCE"))
    {
      return 186;
    }

    else if (!strcmp(__s1, "CA5FDEAD1B2DEC16F5B525E9AE3CA7C4EDC163EEE950D7A77A7C5284A607369F"))
    {
      return 187;
    }

    else if (!strcmp(__s1, "D5D2B254E0B808929711EBFC999F2E0F884DB9876C90B056E230E4DD6D3261CE"))
    {
      return 188;
    }

    else if (!strcmp(__s1, "12ADE1668F06776E2CE9CC2CC563E0BD45A5346C6D883D748FD3C132E7EB8A2F"))
    {
      return 189;
    }

    else if (!strcmp(__s1, "12038A812C239440324EDCEB54DA13B6B7D0C4D89F61582F9A4628C4409FAAE6"))
    {
      return 190;
    }

    else if (!strcmp(__s1, "316635C054256728753D20516A98550DBF581EBA16691321F7BBCE3A9177E09D"))
    {
      return 191;
    }

    else if (!strcmp(__s1, "0E8C0AF79B626C37D4BD04D61ACC6B1841B7F784FEF6692E84A2B1971C771CF6"))
    {
      return 192;
    }

    else if (!strcmp(__s1, "152B31D6CDC80AD2A7F1593F1E81074F9FEB957043B213E8537F5C9098DFD449"))
    {
      return 193;
    }

    else if (!strcmp(__s1, "E60420C1A25456D560E8CD9611A939376974BEBAFA619C12639380F0B31FD8B8"))
    {
      return 194;
    }

    else if (!strcmp(__s1, "4713C70EDB33363B2C09D578EAF1776DAF492F1CF7FC8D5BA3CC2B74B6BCB97C"))
    {
      return 195;
    }

    else if (!strcmp(__s1, "C5B8AC3EFD6D9E22434A119330212D0B0CD6D432EDF6E86FCCEF7CCF823802C4"))
    {
      return 196;
    }

    else if (!strcmp(__s1, "7401310D7AC47EE7D18793C9381D0E7B211C27413EED891054A50674A3A43D55"))
    {
      return 197;
    }

    else if (!strcmp(__s1, "E37B71F0829DCC5E49BFA2EC41E5995C98E0C6F9D6A50126D6813647621C31A9"))
    {
      return 198;
    }

    else if (!strcmp(__s1, "164EEDE66D74F9279F17F86F1CDCA94299BF6213C2BA64E50786F8D0ABBCCAB9"))
    {
      return 199;
    }

    else if (!strcmp(__s1, "A60D3215F4F6222E067084EC53C4CB6D6F0C90C9CE2340806435D4D7B71CDE8D"))
    {
      return 200;
    }

    else if (!strcmp(__s1, "F01E4AED4622CF10C11CE6A7F898827E4AFD081185296BF76777B2207981E836"))
    {
      return 201;
    }

    else if (!strcmp(__s1, "526C20712356D4CB263465D867971F7887BB1970662A18C1A9E038A9A64F5905"))
    {
      return 202;
    }

    else if (!strcmp(__s1, "E2175386E8858E1E5273EB120A19C734896FE34E529B7720E38F90C3E66633CC"))
    {
      return 203;
    }

    else if (!strcmp(__s1, "1513162A9F37F71138014E6B4184BAD2DA941D4140D9F8F006E771B77F5BC38B"))
    {
      return 204;
    }

    else if (!strcmp(__s1, "CFEE285EA42317F1E8CE16B6BAED451F1D8029F8C057963B2486EA9093B3CD28"))
    {
      return 205;
    }

    else if (!strcmp(__s1, "1F6D45D5DEB05AFFD7C7C1DAC38D882FA9A9D616990FBB135621C1F0D30CA596"))
    {
      return 206;
    }

    else if (!strcmp(__s1, "BEE28431C5E817DF3C9C265B3672660D03A6C89EE5236507323554958AE59578"))
    {
      return 207;
    }

    else if (!strcmp(__s1, "A5AD2AAF51022A15627C4C6C3F18D612BFF2CA7F01F65EC1C26965ED6DDC6563"))
    {
      return 208;
    }

    else if (!strcmp(__s1, "D51129E2277ED8B7AE37E82DA9F8FEB9C3FDB71EC4E4B5548B4D3763A89AF1C2"))
    {
      return 209;
    }

    else if (!strcmp(__s1, "24B2EDEBE37A35C073BBC2B83505D52B7FDB9C121406C6308CF528457883D4BE"))
    {
      return 210;
    }

    else if (!strcmp(__s1, "C46314BBA0AA01362E06989DA928CE0AED5C5A628892598193CCE37C495FE865"))
    {
      return 211;
    }

    else if (!strcmp(__s1, "DC615E09F661E340E6495BF8406FDB597D2C6B7CD5AB0CA1E1155D715C73C434"))
    {
      return 212;
    }

    else if (!strcmp(__s1, "380FDF6575F27B17985711ECE0E551113641F9F9447B55D386C6BBDE95DBA9DE"))
    {
      return 213;
    }

    else if (!strcmp(__s1, "74B8506E0293EF192597C6C641B6C4C6A59F95177448E44017C4210467A625AC"))
    {
      return 214;
    }

    else if (!strcmp(__s1, "C648A066B5DF92C6610FB4DD77453469B226FC0B0B2903FDA7E76C7AD03011AC"))
    {
      return 215;
    }

    else if (!strcmp(__s1, "E9DD4EFE9ABCE80DF05B97D5043161FCF2371855DF6715BE46971FCE7EBE2B32"))
    {
      return 216;
    }

    else if (!strcmp(__s1, "6634D05466F515CAD98B1548EE7DCC52386712E059BE4C1A3FBB157892D9D61E"))
    {
      return 217;
    }

    else if (!strcmp(__s1, "FBF25B757E387E5538EE893DFCD803EF74AC4FDE7BD9AC9064121A84F2E26715"))
    {
      return 218;
    }

    else if (!strcmp(__s1, "2F5E861CD13CBCECC15CB691FCC7DCE54FC0755F96F1289D26AFB056BD6788D5"))
    {
      return 219;
    }

    else if (!strcmp(__s1, "7EFBE7B468F2C8FF4C34E67EDC7E8F80DB3E295C6221F8408D4440A78430C64F"))
    {
      return 220;
    }

    else if (!strcmp(__s1, "D67C31C99E39309E5E09E11F7A5E7B3576972C57135463976A5539814860D051"))
    {
      return 221;
    }

    else if (!strcmp(__s1, "3216E3D0006FC749B832DD3C33FF4B7CAE3CE455B3FE030A3EB061DC0356D829"))
    {
      return 222;
    }

    else if (!strcmp(__s1, "FF9225FC7116F7583194D2D2F948E6CFD131F9020C7B7C9D61A8DE2F46571C5F"))
    {
      return 223;
    }

    else if (!strcmp(__s1, "E5FA747F28EBFE3E4BBD4BE279044F914B09502E3EB62035341300536242F90B"))
    {
      return 224;
    }

    else if (!strcmp(__s1, "C517BA395C2A64392D1C11AE86475E6F476E22867252458FCC5152B58A43603D"))
    {
      return 225;
    }

    else if (!strcmp(__s1, "860E5D173A5DA8DE4C5A88EDDF57BFB0D9E7D010DFD109852AF3D1C8480DE485"))
    {
      return 226;
    }

    else if (!strcmp(__s1, "A2AEBDCCCD11BCF937DC0DE23C78762A9FD1425DA34EE911F615F041D947D3CE"))
    {
      return 227;
    }

    else if (!strcmp(__s1, "C1F228965CE72DCBDF0563CA9125430BFC5215644CF7426375AAE844D9C393CF"))
    {
      return 228;
    }

    else if (!strcmp(__s1, "7973408EAAC4FAF261DDB68AD698E34EFC1018CD38876DB49DA34E1C044F2CFC"))
    {
      return 229;
    }

    else if (!strcmp(__s1, "860D0C5DDAD4834897AD2855323B0F84BFB94C6408693EDD64E48678854A39E2"))
    {
      return 230;
    }

    else if (!strcmp(__s1, "1A14FA801FD36553E38F18E90CEB6CB248AF393AE875E771D4D2CED9135245CF"))
    {
      return 231;
    }

    else if (!strcmp(__s1, "C09670CBF5C817FC5F16F1D991E68C7128FE10423294054EC3D14481CCAFF9A2"))
    {
      return 232;
    }

    else if (!strcmp(__s1, "65680CA02B0AB0FB58368C5DA0B737E932C5096909EF60DFEB99EA6D913CED5C"))
    {
      return 233;
    }

    else if (!strcmp(__s1, "FEF0C4DC88EB03CB2B7C35C0402BCE3679103CDCF63AB5D41AE04E7B03B8E8CD"))
    {
      return 234;
    }

    else if (!strcmp(__s1, "72549B14A2777196B859DD8F3F3A7C09F65C8FE41E7DF820281DBEFCA068AF83"))
    {
      return 235;
    }

    else if (!strcmp(__s1, "13765AB2D83DF63D3276A96627599236F39AA4475245AF44E1F3A99845DBAD04"))
    {
      return 236;
    }

    else if (!strcmp(__s1, "F02CACF2781BB39B535879AA9AFB4C949A7281D7D5FF7E28473E58D1C4B5E4B7"))
    {
      return 237;
    }

    else if (!strcmp(__s1, "80D32EE53C5FFF487C9F1A19EE21B1C60F4DBCAC41F9B9DD57C95F6CF69C6D2A"))
    {
      return 238;
    }

    else if (!strcmp(__s1, "2840424A5BD7D8F5081428F1D59B674C7C40087B50C4B506EC8BEDC31CB50802"))
    {
      return 239;
    }

    else if (!strcmp(__s1, "2ACA46F8AA1BA85315C95942DC14867908EA6DAC465EF4791C74EADDAE1803E4"))
    {
      return 240;
    }

    else if (!strcmp(__s1, "FF6E5A673E53B5932E3314B528F12468734F2175D88CAF944291DF3080664C3D"))
    {
      return 241;
    }

    else if (!strcmp(__s1, "0655B13E7C1F22DE302E3188ABE7ADE8E2BF49F60170A06A910B36AE620817A1"))
    {
      return 242;
    }

    else if (!strcmp(__s1, "F38792D8141192A878FA165FCDB2D172704FB2D0D9F5E3B2C5285897FC2BE136"))
    {
      return 243;
    }

    else if (!strcmp(__s1, "C0B1D45F144DA53F21A24FFE49F7DA9B6E3D88FFD508AF9D33CF4C12689868A1"))
    {
      return 244;
    }

    else if (!strcmp(__s1, "DF5C260E67D923CF507669C7BB10EF7285B5CC1D29DEA8B4BD91FE8CCBF19F8C"))
    {
      return 245;
    }

    else if (!strcmp(__s1, "F5B97BA71877E7014D8BB80B1B5750123154A26D4FD86B41AE0525EDEF44A41B"))
    {
      return 246;
    }

    else if (!strcmp(__s1, "3473F3E1E2A85DAEEB664F0C421CDF84D3B27258796FFBB2881208B73DEFC007"))
    {
      return 247;
    }

    else if (!strcmp(__s1, "CBB7FC5C90F6950C90B30709E38AC295085E9F9A5D82EB5DF56E89752A1E0252"))
    {
      return 248;
    }

    else if (!strcmp(__s1, "996E91405229B0F31165936664CCE9F7D3145963C1A14FA9DD57A320E349F123"))
    {
      return 249;
    }

    else if (!strcmp(__s1, "727820125C45F365E03E3C14E8202CFF1E0049F24543B5D589F3956E11F5C581"))
    {
      return 250;
    }

    else if (!strcmp(__s1, "95DD082534B76465BAA6B38551429C11CD11A77CB351740B05F3D18D2CD2B990"))
    {
      return 251;
    }

    else if (!strcmp(__s1, "294111BEC0EE4CFDDCE430D197B75A1CB09E21EB1C822E16CD1CBCC982D46A3F"))
    {
      return 252;
    }

    else if (!strcmp(__s1, "7B4CF9B631F81D78F2CEA2F4869D0137BE4CA667AE9B13DB22A617C2BA15C075"))
    {
      return 253;
    }

    else if (!strcmp(__s1, "EA870EDD0C8AD026DB44FB5C6AC53D8875D62255F794C489EAB9F8222F0616CB"))
    {
      return 254;
    }

    else if (!strcmp(__s1, "2D29DA77B4EF8E7B1D2F3F764587274747D1C2AB05C053B4CE38AE701116BF6A"))
    {
      return 255;
    }

    else if (!strcmp(__s1, "CA1DD5B830AB9668FC5EBD5904EB9B0113C766FCE57EF59AEC58982AE744413A"))
    {
      return 256;
    }

    else if (!strcmp(__s1, "B0D00D3E15F0D45E0DAD2FE819496F3837110BDADE01AC3A17862CDDACDEE5AB"))
    {
      return 257;
    }

    else if (!strcmp(__s1, "83156D57355E76E46E7319E18EA9D6A8D20E78958733028FD3F74C3FD9B0BCC5"))
    {
      return 258;
    }

    else if (!strcmp(__s1, "13BD490F589A93A7F9F00F581335E02561B0962E24CBC2CA7F5E9E597DDB0883"))
    {
      return 259;
    }

    else if (!strcmp(__s1, "EA0E6779669CD68B775C12180EB104AA00D213A9F8DAA8D16F0A89F44905776F"))
    {
      return 260;
    }

    else if (!strcmp(__s1, "EFB75E9FD38545B03C8FA249FE186D7325571BBEE033398757D0936AAC97F4AF"))
    {
      return 261;
    }

    else if (!strcmp(__s1, "0DBBF81F7C595825D9EE4D3349A96A47D7D8DD2016AA5E6168A91A22A762CFE4"))
    {
      return 262;
    }

    else if (!strcmp(__s1, "33ED6C9FBF0AD996E52F0712D6674426E6C7E11933EA1941747F201E9E7D0966"))
    {
      return 263;
    }

    else if (!strcmp(__s1, "2A0CCEEEC1DF9A9BD485C30249B65AD1F97A3AE2515A8C063A2D25F912358EAD"))
    {
      return 264;
    }

    else if (!strcmp(__s1, "1075A905A443281F8260A84735D34CCCCE03026335E3CC7FC5908E79F87D25C0"))
    {
      return 265;
    }

    else if (!strcmp(__s1, "258719D435572243E4A70038547B75D6ECEA3D444F584B2B1E33AA6208E70785"))
    {
      return 266;
    }

    else if (!strcmp(__s1, "3EE7958ED4BC927E9A593A4C5D8C8AC5446648A5A6069BCFC925ACB1E2666117"))
    {
      return 267;
    }

    else if (!strcmp(__s1, "E7D6B7CC0AD6D7FC6405846E7026A1D2530B023B29D2865008779795892CB9C7"))
    {
      return 268;
    }

    else if (!strcmp(__s1, "810FBD3EDBE0943C744AF0FDF2B66B275F0D2861264188D3F98980306627C750"))
    {
      return 269;
    }

    else if (!strcmp(__s1, "12A9FFD3755D7039F8A9E6ECB24D21181F8B8DB774097172CBA95D9DF309B1CA"))
    {
      return 270;
    }

    else if (!strcmp(__s1, "EA836EBA2C0A7B3BED5ABDB96D9B623391DF35AC6186D459C8D3062213C1D8E2"))
    {
      return 271;
    }

    else if (!strcmp(__s1, "6154A03B5F85252391A19A31A8A44D2E5DFE993D77B3C3A50DA3990009A0E625"))
    {
      return 272;
    }

    else if (!strcmp(__s1, "B6F798954446EE61B4B6F9E14234CF2BB9558D9BCFEBFBAF3134CF51BDB370B3"))
    {
      return 273;
    }

    else if (!strcmp(__s1, "0C763E061C178833BD52885B68343D76CDFCED5D51206DFC1A3DDE3BD4FA39D7"))
    {
      return 274;
    }

    else if (!strcmp(__s1, "CFA032F2D29A5A051C9E0050D1DFA42F3E8112A934B9A17AC7C973D207993235"))
    {
      return 275;
    }

    else if (!strcmp(__s1, "ABB726B88EE52902918D7A6085403CE4DCA71804DD26B0CD6AF7B65F3E7500CF"))
    {
      return 276;
    }

    else if (!strcmp(__s1, "058DEB9413998E950FC4226E0E272AFAF7557DF5129D7C7374655EB1CFDA77C5"))
    {
      return 277;
    }

    else if (!strcmp(__s1, "D73A9F216596E70D19B1F74DE41EEFB1A75CAB3823F2E0D1239E5F1FB9B6D40D"))
    {
      return 278;
    }

    else if (!strcmp(__s1, "B738AA29E795A9CAFDA6B743FE4B68F905E623302A5DE71A6B38401852D81CB4"))
    {
      return 279;
    }

    else if (!strcmp(__s1, "284BE43EB4908DBAA8A2B74BCB666EA0230514C2DD3AF9C77D20623852CB0D92"))
    {
      return 280;
    }

    else if (!strcmp(__s1, "72EE56AB083672D418C61A2BF3967CE4C25BC2A1E0D5C2DBE2CC631C4F5BAC90"))
    {
      return 281;
    }

    else if (!strcmp(__s1, "669906B7B879CC926612C8FB9566BA1D8053CF8D04AB315E892F1BCEB9997101"))
    {
      return 282;
    }

    else if (!strcmp(__s1, "655AFC2310ECC9A9C024F669F08357D9F9C4BAFD0E90ABCC6EFC73B4C10C79BA"))
    {
      return 283;
    }

    else if (!strcmp(__s1, "8A797C8ABD91D68CB110C7F9C5E7315E4CDE83D7E7CF9EBDA2A88981D1D7FA8F"))
    {
      return 284;
    }

    else if (!strcmp(__s1, "A4256712D303B9DF94657662281CCBD95F16616051E75ED822F9E262C3A44686"))
    {
      return 285;
    }

    else if (!strcmp(__s1, "B342A0845B43C437AAC1C1094E31870B2992A1D60879C640DC03C3909A56CA97"))
    {
      return 286;
    }

    else if (!strcmp(__s1, "50DF5E5BF35C4F0763C20E045790A5ABA8478BB7826435906008014E7AA53A06"))
    {
      return 287;
    }

    else if (!strcmp(__s1, "B67EADD3EDBB0C668EA3F409225EAB3A0BA1FEC43E5F84A4D7D0B1D8FD27FC62"))
    {
      return 288;
    }

    else if (!strcmp(__s1, "8528ADC4A3C986F04C00264BA4085DB015916CA4739886F9F0AAB0C8815B7DF3"))
    {
      return 289;
    }

    else if (!strcmp(__s1, "ECCA69648E94F50D0440D785106461FB6DEE6D369D319A9CA7CD9CF7C2A4EA61"))
    {
      return 290;
    }

    else if (!strcmp(__s1, "C27650C105DB677612F1E9F8232F2AA9D30A54B9223A181963447DD34D6AE9DE"))
    {
      return 291;
    }

    else if (!strcmp(__s1, "B6DCB4CCB503695CDDA1B5747ADBE4125D7F82EAFAA0E937A98724113EB1D727"))
    {
      return 292;
    }

    else if (!strcmp(__s1, "5D33B1B65FCFEAEB9146D7AAE9F282B0D99B1537E5B9D3079C85F88A599EBC07"))
    {
      return 293;
    }

    else if (!strcmp(__s1, "A705828E5FB8C152DCE53B6F6A5492B7514C11FF5CB01B85149DF5994A18B21D"))
    {
      return 294;
    }

    else if (!strcmp(__s1, "30C511991A56C9FE9B30FACC17BF86AE650C1DB1B66D9B19107F9CC769097340"))
    {
      return 295;
    }

    else if (!strcmp(__s1, "23756AABD0EA1A60AAA6F3289C152C912C9D461304216E43F65836C05E27ED67"))
    {
      return 296;
    }

    else if (!strcmp(__s1, "0F46655CBD9E1B682631F1BEFAE3E0E81F9193AF0F1EAD29656ABDB3632DE244"))
    {
      return 297;
    }

    else if (!strcmp(__s1, "61C68100BE242001078E0A0FC57CC3D9EA793D0D5CACE34A32AD5603FB6936FA"))
    {
      return 298;
    }

    else if (!strcmp(__s1, "0AC3DEB7B7857ABC7031C0EB5FDDDEAE98F8A14C4F0B08255DC001F7DE977D5C"))
    {
      return 299;
    }

    else if (!strcmp(__s1, "045052878913BCFB4518F5BF626951DB057E6BD2AC4BED3FAD09B84AD03A1DBD"))
    {
      return 300;
    }

    else if (!strcmp(__s1, "6E375CCC5F03DBE12DB631B161883AB77D75F7DD6635E9BFEEA71E4A3987BF13"))
    {
      return 301;
    }

    else if (!strcmp(__s1, "E1D7457BA194CF6496E3720302EE42E30CF793160FDFEC6303293D938895E379"))
    {
      return 302;
    }

    else if (!strcmp(__s1, "066723C9107184DA081F4D97E0290FCF8B7B75CB9631BDDD6D1E15186A341B6E"))
    {
      return 303;
    }

    else if (!strcmp(__s1, "C02C23697E66132B8FFFAC249DBF633A97CFA692CDCE8AE3A840182863AB6EE8"))
    {
      return 304;
    }

    else
    {
      return 305;
    }
  }

  return result;
}

void sub_24D848394(uint64_t a1)
{
  sub_24D8496CC(a1, 0, 0);
  sub_24D8496CC(a1, 0, 1u);
  sub_24D8496CC(a1, 0, 2u);
  sub_24D8496CC(a1, 0, 3u);
  sub_24D8496CC(a1, 0, 4u);
  sub_24D8496CC(a1, 0, 5u);
  sub_24D8496CC(a1, 0, 6u);
  sub_24D8496CC(a1, 0, 7u);
  sub_24D8496CC(a1, 0, 8u);
  sub_24D8496CC(a1, 0, 9u);
  sub_24D8496CC(a1, 0, 0xAu);
  sub_24D8496CC(a1, 0, 0xBu);
  sub_24D8496CC(a1, 0, 0xCu);
  sub_24D8496CC(a1, 0, 0xDu);
  sub_24D8496CC(a1, 0, 0xEu);
  sub_24D8496CC(a1, 0, 0xFu);
  sub_24D8496CC(a1, 0, 0x10u);
  sub_24D8496CC(a1, 0, 0x11u);
  sub_24D8496CC(a1, 0, 0x12u);
  sub_24D8496CC(a1, 0, 0x13u);
  sub_24D8496CC(a1, 0, 0x14u);
  sub_24D8496CC(a1, 0, 0x15u);
  sub_24D8496CC(a1, 1u, 0x16u);
  sub_24D8496CC(a1, 1u, 0x17u);
  sub_24D8496CC(a1, 1u, 0x18u);
  sub_24D8496CC(a1, 1u, 0x19u);
  sub_24D8496CC(a1, 1u, 0x1Au);
  sub_24D8496CC(a1, 1u, 0x1Bu);
  sub_24D8496CC(a1, 1u, 0x1Cu);
  sub_24D8496CC(a1, 1u, 0x1Du);
  sub_24D8496CC(a1, 1u, 0x1Eu);
  sub_24D8496CC(a1, 1u, 0x1Fu);
  sub_24D8496CC(a1, 1u, 0x20u);
  sub_24D8496CC(a1, 1u, 0x21u);
  sub_24D8496CC(a1, 1u, 0x22u);
  sub_24D8496CC(a1, 1u, 0x23u);
  sub_24D8496CC(a1, 2u, 0x24u);
  sub_24D8496CC(a1, 2u, 0x25u);
  sub_24D8496CC(a1, 2u, 0x26u);
  sub_24D8496CC(a1, 2u, 0x27u);
  sub_24D8496CC(a1, 2u, 0x28u);
  sub_24D8496CC(a1, 2u, 0x29u);
  sub_24D8496CC(a1, 2u, 0x2Au);
  sub_24D8496CC(a1, 2u, 0x2Bu);
  sub_24D8496CC(a1, 2u, 0x2Cu);
  sub_24D8496CC(a1, 2u, 0x2Du);
  sub_24D8496CC(a1, 2u, 0x2Eu);
  sub_24D8496CC(a1, 2u, 0x2Fu);
  sub_24D8496CC(a1, 2u, 0x30u);
  sub_24D8496CC(a1, 2u, 0x31u);
  sub_24D8496CC(a1, 2u, 0x32u);
  sub_24D8496CC(a1, 2u, 0x33u);
  sub_24D8496CC(a1, 2u, 0x34u);
  sub_24D8496CC(a1, 2u, 0x35u);
  sub_24D8496CC(a1, 2u, 0x36u);
  sub_24D8496CC(a1, 2u, 0x37u);
  sub_24D8496CC(a1, 3u, 0x38u);
  sub_24D8496CC(a1, 3u, 0x39u);
  sub_24D8496CC(a1, 3u, 0x3Au);
  sub_24D8496CC(a1, 3u, 0x3Bu);
  sub_24D8496CC(a1, 3u, 0x3Cu);
  sub_24D8496CC(a1, 3u, 0x3Du);
  sub_24D8496CC(a1, 3u, 0x3Eu);
  sub_24D8496CC(a1, 3u, 0x3Fu);
  sub_24D8496CC(a1, 3u, 0x40u);
  sub_24D8496CC(a1, 3u, 0x41u);
  sub_24D8496CC(a1, 3u, 0x42u);
  sub_24D8496CC(a1, 3u, 0x43u);
  sub_24D8496CC(a1, 3u, 0x44u);
  sub_24D8496CC(a1, 3u, 0x45u);
  sub_24D8496CC(a1, 3u, 0x46u);
  sub_24D8496CC(a1, 3u, 0x47u);
  sub_24D8496CC(a1, 3u, 0x48u);
  sub_24D8496CC(a1, 3u, 0x49u);
  sub_24D8496CC(a1, 3u, 0x4Au);
  sub_24D8496CC(a1, 3u, 0x4Bu);
  sub_24D8496CC(a1, 3u, 0x4Cu);
  sub_24D8496CC(a1, 3u, 0x4Du);
  sub_24D8496CC(a1, 3u, 0x4Eu);
  sub_24D8496CC(a1, 4u, 0x4Fu);
  sub_24D8496CC(a1, 4u, 0x50u);
  sub_24D8496CC(a1, 4u, 0x51u);
  sub_24D8496CC(a1, 4u, 0x52u);
  sub_24D8496CC(a1, 4u, 0x53u);
  sub_24D8496CC(a1, 4u, 0x54u);
  sub_24D8496CC(a1, 4u, 0x55u);
  sub_24D8496CC(a1, 4u, 0x56u);
  sub_24D8496CC(a1, 4u, 0x57u);
  sub_24D8496CC(a1, 4u, 0x58u);
  sub_24D8496CC(a1, 4u, 0x59u);
  sub_24D8496CC(a1, 4u, 0x5Au);
  sub_24D8496CC(a1, 4u, 0x5Bu);
  sub_24D8496CC(a1, 4u, 0x5Cu);
  sub_24D8496CC(a1, 4u, 0x5Du);
  sub_24D8496CC(a1, 4u, 0x5Eu);
  sub_24D8496CC(a1, 4u, 0x5Fu);
  sub_24D8496CC(a1, 4u, 0x60u);
  sub_24D8496CC(a1, 5u, 0x61u);
  sub_24D8496CC(a1, 5u, 0x62u);
  sub_24D8496CC(a1, 5u, 0x63u);
  sub_24D8496CC(a1, 5u, 0x64u);
  sub_24D8496CC(a1, 5u, 0x65u);
  sub_24D8496CC(a1, 5u, 0x66u);
  sub_24D8496CC(a1, 5u, 0x67u);
  sub_24D8496CC(a1, 5u, 0x68u);
  sub_24D8496CC(a1, 5u, 0x69u);
  sub_24D8496CC(a1, 6u, 0x6Au);
  sub_24D8496CC(a1, 6u, 0x6Bu);
  sub_24D8496CC(a1, 6u, 0x6Cu);
  sub_24D8496CC(a1, 6u, 0x6Du);
  sub_24D8496CC(a1, 6u, 0x6Eu);
  sub_24D8496CC(a1, 6u, 0x6Fu);
  sub_24D8496CC(a1, 6u, 0x70u);
  sub_24D8496CC(a1, 6u, 0x71u);
  sub_24D8496CC(a1, 6u, 0x72u);
  sub_24D8496CC(a1, 6u, 0x73u);
  sub_24D8496CC(a1, 7u, 0x74u);
  sub_24D8496CC(a1, 7u, 0x75u);
  sub_24D8496CC(a1, 7u, 0x76u);
  sub_24D8496CC(a1, 7u, 0x77u);
  sub_24D8496CC(a1, 7u, 0x78u);
  sub_24D8496CC(a1, 7u, 0x79u);
  sub_24D8496CC(a1, 7u, 0x7Au);
  sub_24D8496CC(a1, 7u, 0x7Bu);
  sub_24D8496CC(a1, 7u, 0x7Cu);
  sub_24D8496CC(a1, 7u, 0x7Du);
  sub_24D8496CC(a1, 7u, 0x7Eu);
  sub_24D8496CC(a1, 7u, 0x7Fu);
  sub_24D8496CC(a1, 7u, 0x80u);
  sub_24D8496CC(a1, 7u, 0x81u);
  sub_24D8496CC(a1, 7u, 0x82u);
  sub_24D8496CC(a1, 7u, 0x83u);
  sub_24D8496CC(a1, 8u, 0x84u);
  sub_24D8496CC(a1, 8u, 0x85u);
  sub_24D8496CC(a1, 8u, 0x86u);
  sub_24D8496CC(a1, 8u, 0x87u);
  sub_24D8496CC(a1, 8u, 0x88u);
  sub_24D8496CC(a1, 8u, 0x89u);
  sub_24D8496CC(a1, 8u, 0x8Au);
  sub_24D8496CC(a1, 8u, 0x8Bu);
  sub_24D8496CC(a1, 8u, 0x8Cu);
  sub_24D8496CC(a1, 8u, 0x8Du);
  sub_24D8496CC(a1, 8u, 0x8Eu);
  sub_24D8496CC(a1, 8u, 0x8Fu);
  sub_24D8496CC(a1, 8u, 0x90u);
  sub_24D8496CC(a1, 8u, 0x91u);
  sub_24D8496CC(a1, 8u, 0x92u);
  sub_24D8496CC(a1, 9u, 0x93u);
  sub_24D8496CC(a1, 9u, 0x94u);
  sub_24D8496CC(a1, 9u, 0x95u);
  sub_24D8496CC(a1, 9u, 0x96u);
  sub_24D8496CC(a1, 9u, 0x97u);
  sub_24D8496CC(a1, 9u, 0x98u);
  sub_24D8496CC(a1, 0xAu, 0x99u);
  sub_24D8496CC(a1, 0xAu, 0x9Au);
  sub_24D8496CC(a1, 0xAu, 0x9Bu);
  sub_24D8496CC(a1, 0xAu, 0x9Cu);
  sub_24D8496CC(a1, 0xAu, 0x9Du);
  sub_24D8496CC(a1, 0xAu, 0x9Eu);
  sub_24D8496CC(a1, 0xAu, 0x9Fu);
  sub_24D8496CC(a1, 0xAu, 0xA0u);
  sub_24D8496CC(a1, 0xAu, 0xA1u);
  sub_24D8496CC(a1, 0xAu, 0xA2u);
  sub_24D8496CC(a1, 0xAu, 0xA3u);
  sub_24D8496CC(a1, 0xAu, 0xA4u);
  sub_24D8496CC(a1, 0xAu, 0xA5u);
  sub_24D8496CC(a1, 0xAu, 0xA6u);
  sub_24D8496CC(a1, 0xAu, 0xA7u);
  sub_24D8496CC(a1, 0xAu, 0xA8u);
  sub_24D8496CC(a1, 0xBu, 0xA9u);
  sub_24D8496CC(a1, 0xBu, 0xAAu);
  sub_24D8496CC(a1, 0xBu, 0xABu);
  sub_24D8496CC(a1, 0xBu, 0xACu);
  sub_24D8496CC(a1, 0xBu, 0xADu);
  sub_24D8496CC(a1, 0xBu, 0xAEu);
  sub_24D8496CC(a1, 0xBu, 0xAFu);
  sub_24D8496CC(a1, 0xBu, 0xB0u);
  sub_24D8496CC(a1, 0xBu, 0xB1u);
  sub_24D8496CC(a1, 0xBu, 0xB2u);
  sub_24D8496CC(a1, 0xBu, 0xB3u);
  sub_24D8496CC(a1, 0xBu, 0xB4u);
  sub_24D8496CC(a1, 0xBu, 0xB5u);
  sub_24D8496CC(a1, 0xBu, 0xB6u);
  sub_24D8496CC(a1, 0xBu, 0xB7u);
  sub_24D8496CC(a1, 0xBu, 0xB8u);
  sub_24D8496CC(a1, 0xCu, 0xB9u);
  sub_24D8496CC(a1, 0xCu, 0xBAu);
  sub_24D8496CC(a1, 0xCu, 0xBBu);
  sub_24D8496CC(a1, 0xCu, 0xBCu);
  sub_24D8496CC(a1, 0xCu, 0xBDu);
  sub_24D8496CC(a1, 0xCu, 0xBEu);
  sub_24D8496CC(a1, 0xCu, 0xBFu);
  sub_24D8496CC(a1, 0xDu, 0xC0u);
  sub_24D8496CC(a1, 0xDu, 0xC1u);
  sub_24D8496CC(a1, 0xDu, 0xC2u);
  sub_24D8496CC(a1, 0xDu, 0xC3u);
  sub_24D8496CC(a1, 0xDu, 0xC4u);
  sub_24D8496CC(a1, 0xDu, 0xC5u);
  sub_24D8496CC(a1, 0xDu, 0xC6u);
  sub_24D8496CC(a1, 0xDu, 0xC7u);
  sub_24D8496CC(a1, 0xDu, 0xC8u);
  sub_24D8496CC(a1, 0xDu, 0xC9u);
  sub_24D8496CC(a1, 0xDu, 0xCAu);
  sub_24D8496CC(a1, 0xEu, 0xCBu);
  sub_24D8496CC(a1, 0xEu, 0xCCu);
  sub_24D8496CC(a1, 0xEu, 0xCDu);
  sub_24D8496CC(a1, 0xEu, 0xCEu);
  sub_24D8496CC(a1, 0xEu, 0xCFu);
  sub_24D8496CC(a1, 0xEu, 0xD0u);
  sub_24D8496CC(a1, 0xEu, 0xD1u);
  sub_24D8496CC(a1, 0xEu, 0xD2u);
  sub_24D8496CC(a1, 0xEu, 0xD3u);
  sub_24D8496CC(a1, 0xEu, 0xD4u);
  sub_24D8496CC(a1, 0xEu, 0xD5u);
  sub_24D8496CC(a1, 0xEu, 0xD6u);
  sub_24D8496CC(a1, 0xEu, 0xD7u);
  sub_24D8496CC(a1, 0xFu, 0xD8u);
  sub_24D8496CC(a1, 0xFu, 0xD9u);
  sub_24D8496CC(a1, 0xFu, 0xDAu);
  sub_24D8496CC(a1, 0xFu, 0xDBu);
  sub_24D8496CC(a1, 0xFu, 0xDCu);
  sub_24D8496CC(a1, 0xFu, 0xDDu);
  sub_24D8496CC(a1, 0xFu, 0xDEu);
  sub_24D8496CC(a1, 0xFu, 0xDFu);
  sub_24D8496CC(a1, 0xFu, 0xE0u);
  sub_24D8496CC(a1, 0xFu, 0xE1u);
  sub_24D8496CC(a1, 0xFu, 0xE2u);
  sub_24D8496CC(a1, 0xFu, 0xE3u);
  sub_24D8496CC(a1, 0xFu, 0xE4u);
  sub_24D8496CC(a1, 0xFu, 0xE5u);
  sub_24D8496CC(a1, 0x10u, 0xE6u);
  sub_24D8496CC(a1, 0x10u, 0xE7u);
  sub_24D8496CC(a1, 0x10u, 0xE8u);
  sub_24D8496CC(a1, 0x10u, 0xE9u);
  sub_24D8496CC(a1, 0x10u, 0xEAu);
  sub_24D8496CC(a1, 0x10u, 0xEBu);
  sub_24D8496CC(a1, 0x10u, 0xECu);
  sub_24D8496CC(a1, 0x10u, 0xEDu);
  sub_24D8496CC(a1, 0x10u, 0xEEu);
  sub_24D8496CC(a1, 0x10u, 0xEFu);
  sub_24D8496CC(a1, 0x10u, 0xF0u);
  sub_24D8496CC(a1, 0x10u, 0xF1u);
  sub_24D8496CC(a1, 0x10u, 0xF2u);
  sub_24D8496CC(a1, 0x10u, 0xF3u);
  sub_24D8496CC(a1, 0x10u, 0xF4u);
  sub_24D8496CC(a1, 0x10u, 0xF5u);
  sub_24D8496CC(a1, 0x11u, 0xF6u);
  sub_24D8496CC(a1, 0x11u, 0xF7u);
  sub_24D8496CC(a1, 0x11u, 0xF8u);
  sub_24D8496CC(a1, 0x12u, 0xF9u);
  sub_24D8496CC(a1, 0x12u, 0xFAu);
  sub_24D8496CC(a1, 0x12u, 0xFBu);
  sub_24D8496CC(a1, 0x12u, 0xFCu);
  sub_24D8496CC(a1, 0x12u, 0xFDu);
  sub_24D8496CC(a1, 0x12u, 0xFEu);
  sub_24D8496CC(a1, 0x12u, 0xFFu);
  sub_24D8496CC(a1, 0x12u, 0x100u);
  sub_24D8496CC(a1, 0x12u, 0x101u);
  sub_24D8496CC(a1, 0x12u, 0x102u);
  sub_24D8496CC(a1, 0x12u, 0x103u);
  sub_24D8496CC(a1, 0x12u, 0x104u);
  sub_24D8496CC(a1, 0x12u, 0x105u);
  sub_24D8496CC(a1, 0x12u, 0x106u);
  sub_24D8496CC(a1, 0x12u, 0x107u);
  sub_24D8496CC(a1, 0x12u, 0x108u);
  sub_24D8496CC(a1, 0x12u, 0x109u);
  sub_24D8496CC(a1, 0x12u, 0x10Au);
  sub_24D8496CC(a1, 0x12u, 0x10Bu);
  sub_24D8496CC(a1, 0x12u, 0x10Cu);
  sub_24D8496CC(a1, 0x12u, 0x10Du);
  sub_24D8496CC(a1, 0x12u, 0x10Eu);
  sub_24D8496CC(a1, 0x13u, 0x10Fu);
  sub_24D8496CC(a1, 0x13u, 0x110u);
  sub_24D8496CC(a1, 0x13u, 0x111u);
  sub_24D8496CC(a1, 0x13u, 0x112u);
  sub_24D8496CC(a1, 0x13u, 0x113u);
  sub_24D8496CC(a1, 0x13u, 0x114u);
  sub_24D8496CC(a1, 0x13u, 0x115u);
  sub_24D8496CC(a1, 0x13u, 0x116u);
  sub_24D8496CC(a1, 0x13u, 0x117u);
  sub_24D8496CC(a1, 0x13u, 0x118u);
  sub_24D8496CC(a1, 0x14u, 0x119u);
  sub_24D8496CC(a1, 0x14u, 0x11Au);
  sub_24D8496CC(a1, 0x14u, 0x11Bu);
  sub_24D8496CC(a1, 0x14u, 0x11Cu);
  sub_24D8496CC(a1, 0x14u, 0x11Du);
  sub_24D8496CC(a1, 0x14u, 0x11Eu);
  sub_24D8496CC(a1, 0x14u, 0x11Fu);
  sub_24D8496CC(a1, 0x14u, 0x120u);
  sub_24D8496CC(a1, 0x14u, 0x121u);
  sub_24D8496CC(a1, 0x15u, 0x122u);
  sub_24D8496CC(a1, 0x15u, 0x123u);
  sub_24D8496CC(a1, 0x15u, 0x124u);
  sub_24D8496CC(a1, 0x15u, 0x125u);
  sub_24D8496CC(a1, 0x15u, 0x126u);
  sub_24D8496CC(a1, 0x15u, 0x127u);
  sub_24D8496CC(a1, 0x15u, 0x128u);
  sub_24D8496CC(a1, 0x15u, 0x129u);
  sub_24D8496CC(a1, 0x15u, 0x12Au);
  sub_24D8496CC(a1, 0x15u, 0x12Bu);
  sub_24D8496CC(a1, 0x15u, 0x12Cu);
  sub_24D8496CC(a1, 0x15u, 0x12Du);
  sub_24D8496CC(a1, 0x15u, 0x12Eu);
  sub_24D8496CC(a1, 0x15u, 0x12Fu);

  sub_24D8496CC(a1, 0x15u, 0x130u);
}

void sub_24D8496CC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(*a1 + 32) - 3) <= 0xFFFFFFFD && ((*(**(a1 + 8) + ((a3 >> 3) & 0x1FFFFFF8)) >> a3))
  {
    v6 = sub_24D849804(*(a1 + 16), a3);
    v7 = (**(a1 + 24) + 24 * a2);
    v9 = v7[1];
    v8 = v7[2];
    if (v9 >= v8)
    {
      v11 = *v7;
      v12 = v9 - *v7;
      v13 = v12 >> 3;
      v14 = (v12 >> 3) + 1;
      if (v14 >> 61)
      {
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v15 = v8 - v11;
      if (v15 >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      v16 = v15 >= 0x7FFFFFFFFFFFFFF8;
      v17 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v16)
      {
        v17 = v14;
      }

      if (v17)
      {
        sub_24D7658EC(v7, v17);
      }

      v18 = (8 * v13);
      *v18 = a3;
      v18[1] = v6;
      v10 = 8 * v13 + 8;
      memcpy(0, v11, v12);
      v19 = *v7;
      *v7 = 0;
      v7[1] = v10;
      v7[2] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v9 = a3;
      v9[1] = v6;
      v10 = (v9 + 2);
    }

    v7[1] = v10;
  }
}

uint64_t sub_24D849804(uint64_t a1, unsigned int a2)
{
  switch((*(*a1 + 32))(a1))
  {
    case 0u:
      if (a2 >= 0x16)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return a2;
      }

    case 1u:
      v4 = a2 - 22;
      goto LABEL_16;
    case 2u:
      v4 = a2 - 36;
      v5 = a2 - 36 >= 0x14;
      goto LABEL_32;
    case 3u:
      v4 = a2 - 56;
      v5 = a2 - 56 >= 0x17;
      goto LABEL_32;
    case 4u:
      v4 = a2 - 79;
      v5 = a2 - 79 >= 0x12;
      goto LABEL_32;
    case 5u:
      v4 = a2 - 97;
      goto LABEL_20;
    case 6u:
      v4 = a2 - 106;
      goto LABEL_31;
    case 7u:
      v4 = a2 - 116;
      goto LABEL_26;
    case 8u:
      v4 = a2 - 132;
      goto LABEL_28;
    case 9u:
      v4 = a2 - 147;
      v5 = a2 - 147 >= 6;
      goto LABEL_32;
    case 0xAu:
      v4 = a2 - 153;
      goto LABEL_26;
    case 0xBu:
      v4 = a2 - 169;
      goto LABEL_26;
    case 0xCu:
      v4 = a2 - 185;
      v5 = a2 - 185 >= 7;
      goto LABEL_32;
    case 0xDu:
      v4 = a2 - 192;
      v5 = a2 - 192 >= 0xB;
      goto LABEL_32;
    case 0xEu:
      v4 = a2 - 203;
      v5 = a2 - 203 >= 0xD;
      goto LABEL_32;
    case 0xFu:
      v4 = a2 - 216;
LABEL_16:
      v5 = v4 >= 0xE;
      goto LABEL_32;
    case 0x10u:
      v4 = a2 - 230;
LABEL_26:
      v5 = v4 >= 0x10;
      goto LABEL_32;
    case 0x11u:
      v4 = a2 - 246;
      v5 = a2 - 246 >= 3;
      goto LABEL_32;
    case 0x12u:
      v4 = a2 - 249;
      v5 = a2 - 249 >= 0x16;
      goto LABEL_32;
    case 0x13u:
      v4 = a2 - 271;
LABEL_31:
      v5 = v4 >= 0xA;
      goto LABEL_32;
    case 0x14u:
      v4 = a2 - 281;
LABEL_20:
      v5 = v4 >= 9;
      goto LABEL_32;
    case 0x15u:
      v4 = a2 - 290;
LABEL_28:
      v5 = v4 >= 0xF;
LABEL_32:
      if (v5)
      {
        result = 0xFFFFFFFFLL;
      }

      else
      {
        result = v4;
      }

      break;
    default:
      result = 0xFFFFFFFFLL;
      break;
  }

  return result;
}

uint64_t sub_24D8499C0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a2 + 225888);
  v6 = a3;
  v7 = a2 + 24 * a3 + 224520;
  v8 = *v7;
  v9 = *(a2 + 24 * a3 + 224528);
  if (*v7 == v9 || *(*(a2 + 225840) + ((v5 >> 29) & 0x7FFFFFFF8)) - *(*(a2 + 225840) + 8 * *(v9 - 1)) >= *(a1 + 160))
  {
    v10 = *(a2 + 24 * a3 + 224536);
    if (v9 >= v10)
    {
      v12 = (v9 - v8) >> 3;
      if ((v12 + 1) >> 61)
      {
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v13 = v10 - v8;
      v14 = v13 >> 2;
      if (v13 >> 2 <= (v12 + 1))
      {
        v14 = v12 + 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        sub_24D7658EC(v7, v15);
      }

      v16 = (8 * v12);
      *v16 = v5;
      v11 = 8 * v12 + 8;
      v17 = *(v7 + 8) - *v7;
      v18 = v16 - v17;
      memcpy(v16 - v17, *v7, v17);
      v19 = *v7;
      *v7 = v18;
      *(v7 + 8) = v11;
      *(v7 + 16) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v9 = v5;
      v11 = (v9 + 8);
    }

    *(v7 + 8) = v11;
    if (a3 >= 0x16)
    {
      goto LABEL_23;
    }

    *(a1 + v6 + 17984) = 0;
    v23 = 0;
  }

  else
  {
    v23 = 0;
    if (a3 > 0x15)
    {
      goto LABEL_23;
    }
  }

  v20 = (a1 + v6 + 17984);
  if (*v20)
  {
    if (*v20 != 1)
    {
LABEL_23:
      v21 = 0;
      return v21 & 1;
    }

    v20 = &v23;
  }

  *v20 = 1;
  v21 = v23;
  return v21 & 1;
}

void sub_24D849B50(int a1, uint64_t a2, uint64_t a3)
{
  v1230 = v4;
  v1231 = v3;
  v1232 = v5;
  v1233 = v6;
  switch(a1)
  {
    case 0:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v9 = *(a3 + 8);
      v10 = *(*a3 + 20) & 0xFFFFFLL;
      v1229 = v10;
      v11 = *v9;
      v12 = **(a3 + 16);
      if (v11 == 1)
      {
        *(*(v12 + 200528) - 8) += v10;
      }

      else
      {
        sub_24D769624((v12 + 200520), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v137 = *(a3 + 8);
      v138 = *(*a3 + 24) & 0x3FFFF;
      v1229 = v138;
      v139 = *v137;
      v140 = **(a3 + 16);
      if (v139 == 1)
      {
        *(*(v140 + 200552) - 8) += v138;
      }

      else
      {
        sub_24D769624((v140 + 200544), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v225 = *(a3 + 8);
      v226 = *(*a3 + 28) & 0x7FFFFLL;
      v1229 = v226;
      v227 = *v225;
      v228 = **(a3 + 16);
      if (v227 == 1)
      {
        *(*(v228 + 200576) - 8) += v226;
      }

      else
      {
        sub_24D769624((v228 + 200568), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v313 = *(a3 + 8);
      v314 = *(*a3 + 32) & 0x7FFF;
      v1229 = v314;
      v315 = *v313;
      v316 = **(a3 + 16);
      if (v315 == 1)
      {
        *(*(v316 + 200600) - 8) += v314;
      }

      else
      {
        sub_24D769624((v316 + 200592), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v397 = *(a3 + 8);
      v398 = *(*a3 + 34) & 0x3FFF;
      v1229 = v398;
      v399 = *v397;
      v400 = **(a3 + 16);
      if (v399 == 1)
      {
        *(*(v400 + 200624) - 8) += v398;
      }

      else
      {
        sub_24D769624((v400 + 200616), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v481 = *(a3 + 8);
      v482 = *(*a3 + 36) & 0x3FFFLL;
      v1229 = v482;
      v483 = *v481;
      v484 = **(a3 + 16);
      if (v483 == 1)
      {
        *(*(v484 + 200648) - 8) += v482;
      }

      else
      {
        sub_24D769624((v484 + 200640), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v561 = *(a3 + 8);
      v562 = (*(*a3 + 36) >> 16) & 0x3FFFLL;
      v1229 = v562;
      v563 = *v561;
      v564 = **(a3 + 16);
      if (v563 == 1)
      {
        *(*(v564 + 200672) - 8) += v562;
      }

      else
      {
        sub_24D769624((v564 + 200664), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v637 = *(a3 + 8);
      v638 = *(*a3 + 40) & 0x7FFF;
      v1229 = v638;
      v639 = *v637;
      v640 = **(a3 + 16);
      if (v639 == 1)
      {
        *(*(v640 + 200696) - 8) += v638;
      }

      else
      {
        sub_24D769624((v640 + 200688), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v713 = *(a3 + 8);
      v714 = *(*a3 + 42) & 0x7FFF;
      v1229 = v714;
      v715 = *v713;
      v716 = **(a3 + 16);
      if (v715 == 1)
      {
        *(*(v716 + 200720) - 8) += v714;
      }

      else
      {
        sub_24D769624((v716 + 200712), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v789 = *(a3 + 8);
      v790 = *(*a3 + 44) & 0x7FFFLL;
      v1229 = v790;
      v791 = *v789;
      v792 = **(a3 + 16);
      if (v791 == 1)
      {
        *(*(v792 + 200744) - 8) += v790;
      }

      else
      {
        sub_24D769624((v792 + 200736), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v857 = *(a3 + 8);
      v858 = (*(*a3 + 44) >> 16) & 0x3FFLL;
      v1229 = v858;
      v859 = *v857;
      v860 = **(a3 + 16);
      if (v859 == 1)
      {
        *(*(v860 + 200768) - 8) += v858;
      }

      else
      {
        sub_24D769624((v860 + 200760), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v917 = *(a3 + 8);
      v918 = *(*a3 + 48) & 0x3FF;
      v1229 = v918;
      v919 = *v917;
      v920 = **(a3 + 16);
      if (v919 == 1)
      {
        *(*(v920 + 200792) - 8) += v918;
      }

      else
      {
        sub_24D769624((v920 + 200784), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v973 = *(a3 + 8);
      v974 = *(*a3 + 50) & 0xFFF;
      v1229 = v974;
      v975 = *v973;
      v976 = **(a3 + 16);
      if (v975 == 1)
      {
        *(*(v976 + 200816) - 8) += v974;
      }

      else
      {
        sub_24D769624((v976 + 200808), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1025 = *(a3 + 8);
      v1026 = *(*a3 + 52) & 0x7FFFLL;
      v1229 = v1026;
      v1027 = *v1025;
      v1028 = **(a3 + 16);
      if (v1027 == 1)
      {
        *(*(v1028 + 200840) - 8) += v1026;
      }

      else
      {
        sub_24D769624((v1028 + 200832), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1073 = *(a3 + 8);
      v1074 = (*(*a3 + 52) >> 16) & 0x7FFFLL;
      v1229 = v1074;
      v1075 = *v1073;
      v1076 = **(a3 + 16);
      if (v1075 == 1)
      {
        *(*(v1076 + 200864) - 8) += v1074;
      }

      else
      {
        sub_24D769624((v1076 + 200856), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1117 = *(a3 + 8);
      v1118 = *(*a3 + 56) & 0x7FFF;
      v1229 = v1118;
      v1119 = *v1117;
      v1120 = **(a3 + 16);
      if (v1119 == 1)
      {
        *(*(v1120 + 200888) - 8) += v1118;
      }

      else
      {
        sub_24D769624((v1120 + 200880), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1141 = *(a3 + 8);
      v1142 = *(*a3 + 58) & 0x3FFF;
      v1229 = v1142;
      v1143 = *v1141;
      v1144 = **(a3 + 16);
      if (v1143 == 1)
      {
        *(*(v1144 + 200912) - 8) += v1142;
      }

      else
      {
        sub_24D769624((v1144 + 200904), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1161 = *(a3 + 8);
      v1162 = *(*a3 + 60) & 0x3FFFLL;
      v1229 = v1162;
      v1163 = *v1161;
      v1164 = **(a3 + 16);
      if (v1163 == 1)
      {
        *(*(v1164 + 200936) - 8) += v1162;
      }

      else
      {
        sub_24D769624((v1164 + 200928), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1177 = *(a3 + 8);
      v1178 = (*(*a3 + 60) >> 16) & 0x3FFFLL;
      v1229 = v1178;
      v1179 = *v1177;
      v1180 = **(a3 + 16);
      if (v1179 == 1)
      {
        *(*(v1180 + 200960) - 8) += v1178;
      }

      else
      {
        sub_24D769624((v1180 + 200952), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1193 = *(a3 + 8);
      v1194 = *(*a3 + 64) & 0x3FF;
      v1229 = v1194;
      v1195 = *v1193;
      v1196 = **(a3 + 16);
      if (v1195 == 1)
      {
        *(*(v1196 + 200984) - 8) += v1194;
      }

      else
      {
        sub_24D769624((v1196 + 200976), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1205 = *(a3 + 8);
      v1206 = *(*a3 + 66) & 0x3FF;
      v1229 = v1206;
      v1207 = *v1205;
      v1208 = **(a3 + 16);
      if (v1207 == 1)
      {
        *(*(v1208 + 201008) - 8) += v1206;
      }

      else
      {
        sub_24D769624((v1208 + 201000), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1217 = *(a3 + 8);
      v1218 = *(*a3 + 68) & 0x7FF;
      v1229 = v1218;
      v1219 = *v1217;
      v1220 = **(a3 + 16);
      if (v1219 == 1)
      {
        *(*(v1220 + 201032) - 8) += v1218;
      }

      else
      {
        sub_24D769624((v1220 + 201024), &v1229);
      }

      break;
    case 1:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v53 = *(a3 + 8);
      v54 = *(*a3 + 20) & 0xFFFFFLL;
      v1229 = v54;
      v55 = *v53;
      v56 = **(a3 + 16);
      if (v55 == 1)
      {
        *(*(v56 + 201056) - 8) += v54;
      }

      else
      {
        sub_24D769624((v56 + 201048), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v141 = *(a3 + 8);
      v142 = *(*a3 + 24) & 0xFFFFF;
      v1229 = v142;
      v143 = *v141;
      v144 = **(a3 + 16);
      if (v143 == 1)
      {
        *(*(v144 + 201080) - 8) += v142;
      }

      else
      {
        sub_24D769624((v144 + 201072), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v229 = *(a3 + 8);
      v230 = *(*a3 + 28) & 0xFFFFFLL;
      v1229 = v230;
      v231 = *v229;
      v232 = **(a3 + 16);
      if (v231 == 1)
      {
        *(*(v232 + 201104) - 8) += v230;
      }

      else
      {
        sub_24D769624((v232 + 201096), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v317 = *(a3 + 8);
      v318 = *(*a3 + 32) & 0xFFFFF;
      v1229 = v318;
      v319 = *v317;
      v320 = **(a3 + 16);
      if (v319 == 1)
      {
        *(*(v320 + 201128) - 8) += v318;
      }

      else
      {
        sub_24D769624((v320 + 201120), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v401 = *(a3 + 8);
      v402 = *(*a3 + 36) & 0xFFFFFLL;
      v1229 = v402;
      v403 = *v401;
      v404 = **(a3 + 16);
      if (v403 == 1)
      {
        *(*(v404 + 201152) - 8) += v402;
      }

      else
      {
        sub_24D769624((v404 + 201144), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v485 = *(a3 + 8);
      v486 = *(*a3 + 40) & 0xFFFFF;
      v1229 = v486;
      v487 = *v485;
      v488 = **(a3 + 16);
      if (v487 == 1)
      {
        *(*(v488 + 201176) - 8) += v486;
      }

      else
      {
        sub_24D769624((v488 + 201168), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v565 = *(a3 + 8);
      v566 = *(*a3 + 44) & 0xFFFFFLL;
      v1229 = v566;
      v567 = *v565;
      v568 = **(a3 + 16);
      if (v567 == 1)
      {
        *(*(v568 + 201200) - 8) += v566;
      }

      else
      {
        sub_24D769624((v568 + 201192), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v641 = *(a3 + 8);
      v642 = *(*a3 + 48) & 0xFFFFF;
      v1229 = v642;
      v643 = *v641;
      v644 = **(a3 + 16);
      if (v643 == 1)
      {
        *(*(v644 + 201224) - 8) += v642;
      }

      else
      {
        sub_24D769624((v644 + 201216), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v717 = *(a3 + 8);
      v718 = *(*a3 + 52);
      v1229 = v718;
      v719 = *v717;
      v720 = **(a3 + 16);
      if (v719 == 1)
      {
        *(*(v720 + 201248) - 8) += v718;
      }

      else
      {
        sub_24D769624((v720 + 201240), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v793 = *(a3 + 8);
      v794 = (*(*a3 + 52) >> 16) & 0x7FFFLL;
      v1229 = v794;
      v795 = *v793;
      v796 = **(a3 + 16);
      if (v795 == 1)
      {
        *(*(v796 + 201272) - 8) += v794;
      }

      else
      {
        sub_24D769624((v796 + 201264), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v861 = *(a3 + 8);
      v862 = *(*a3 + 56);
      v1229 = v862;
      v863 = *v861;
      v864 = **(a3 + 16);
      if (v863 == 1)
      {
        *(*(v864 + 201296) - 8) += v862;
      }

      else
      {
        sub_24D769624((v864 + 201288), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v921 = *(a3 + 8);
      v922 = *(*a3 + 58) & 0x7FFF;
      v1229 = v922;
      v923 = *v921;
      v924 = **(a3 + 16);
      if (v923 == 1)
      {
        *(*(v924 + 201320) - 8) += v922;
      }

      else
      {
        sub_24D769624((v924 + 201312), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v977 = *(a3 + 8);
      v978 = *(*a3 + 60) & 0x7FFF;
      v1229 = v978;
      v979 = *v977;
      v980 = **(a3 + 16);
      if (v979 == 1)
      {
        *(*(v980 + 201344) - 8) += v978;
      }

      else
      {
        sub_24D769624((v980 + 201336), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1029 = *(a3 + 8);
      v1030 = *(*a3 + 62) & 0x7FFF;
      v1229 = v1030;
      v1031 = *v1029;
      v1032 = **(a3 + 16);
      if (v1031 == 1)
      {
        *(*(v1032 + 201368) - 8) += v1030;
      }

      else
      {
        sub_24D769624((v1032 + 201360), &v1229);
      }

      break;
    case 2:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v37 = *(a3 + 8);
      v38 = *(*a3 + 20) & 0x7FFFLL;
      v1229 = v38;
      v39 = *v37;
      v40 = **(a3 + 16);
      if (v39 == 1)
      {
        *(*(v40 + 201392) - 8) += v38;
      }

      else
      {
        sub_24D769624((v40 + 201384), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v121 = *(a3 + 8);
      v122 = (*(*a3 + 20) >> 16) & 0x7FFFLL;
      v1229 = v122;
      v123 = *v121;
      v124 = **(a3 + 16);
      if (v123 == 1)
      {
        *(*(v124 + 201416) - 8) += v122;
      }

      else
      {
        sub_24D769624((v124 + 201408), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v209 = *(a3 + 8);
      v210 = *(*a3 + 24) & 0x7FFF;
      v1229 = v210;
      v211 = *v209;
      v212 = **(a3 + 16);
      if (v211 == 1)
      {
        *(*(v212 + 201440) - 8) += v210;
      }

      else
      {
        sub_24D769624((v212 + 201432), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v297 = *(a3 + 8);
      v298 = *(*a3 + 26) & 0x7FFF;
      v1229 = v298;
      v299 = *v297;
      v300 = **(a3 + 16);
      if (v299 == 1)
      {
        *(*(v300 + 201464) - 8) += v298;
      }

      else
      {
        sub_24D769624((v300 + 201456), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v381 = *(a3 + 8);
      v382 = *(*a3 + 28) & 0x7FFFLL;
      v1229 = v382;
      v383 = *v381;
      v384 = **(a3 + 16);
      if (v383 == 1)
      {
        *(*(v384 + 201488) - 8) += v382;
      }

      else
      {
        sub_24D769624((v384 + 201480), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v465 = *(a3 + 8);
      v466 = (*(*a3 + 28) >> 16) & 0x7FFFLL;
      v1229 = v466;
      v467 = *v465;
      v468 = **(a3 + 16);
      if (v467 == 1)
      {
        *(*(v468 + 201512) - 8) += v466;
      }

      else
      {
        sub_24D769624((v468 + 201504), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v545 = *(a3 + 8);
      v546 = *(*a3 + 32) & 0x7FFF;
      v1229 = v546;
      v547 = *v545;
      v548 = **(a3 + 16);
      if (v547 == 1)
      {
        *(*(v548 + 201536) - 8) += v546;
      }

      else
      {
        sub_24D769624((v548 + 201528), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v621 = *(a3 + 8);
      v622 = *(*a3 + 34) & 0x7FFF;
      v1229 = v622;
      v623 = *v621;
      v624 = **(a3 + 16);
      if (v623 == 1)
      {
        *(*(v624 + 201560) - 8) += v622;
      }

      else
      {
        sub_24D769624((v624 + 201552), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v697 = *(a3 + 8);
      v698 = *(*a3 + 36) & 0x7FFFLL;
      v1229 = v698;
      v699 = *v697;
      v700 = **(a3 + 16);
      if (v699 == 1)
      {
        *(*(v700 + 201584) - 8) += v698;
      }

      else
      {
        sub_24D769624((v700 + 201576), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v773 = *(a3 + 8);
      v774 = (*(*a3 + 36) >> 16) & 0x7FFFLL;
      v1229 = v774;
      v775 = *v773;
      v776 = **(a3 + 16);
      if (v775 == 1)
      {
        *(*(v776 + 201608) - 8) += v774;
      }

      else
      {
        sub_24D769624((v776 + 201600), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v841 = *(a3 + 8);
      v842 = *(*a3 + 40) & 0x7FFF;
      v1229 = v842;
      v843 = *v841;
      v844 = **(a3 + 16);
      if (v843 == 1)
      {
        *(*(v844 + 201632) - 8) += v842;
      }

      else
      {
        sub_24D769624((v844 + 201624), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v901 = *(a3 + 8);
      v902 = *(*a3 + 42) & 0x7FFF;
      v1229 = v902;
      v903 = *v901;
      v904 = **(a3 + 16);
      if (v903 == 1)
      {
        *(*(v904 + 201656) - 8) += v902;
      }

      else
      {
        sub_24D769624((v904 + 201648), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v957 = *(a3 + 8);
      v958 = *(*a3 + 44) & 0x7FFFLL;
      v1229 = v958;
      v959 = *v957;
      v960 = **(a3 + 16);
      if (v959 == 1)
      {
        *(*(v960 + 201680) - 8) += v958;
      }

      else
      {
        sub_24D769624((v960 + 201672), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1009 = *(a3 + 8);
      v1010 = (*(*a3 + 44) >> 16) & 0x7FFFLL;
      v1229 = v1010;
      v1011 = *v1009;
      v1012 = **(a3 + 16);
      if (v1011 == 1)
      {
        *(*(v1012 + 201704) - 8) += v1010;
      }

      else
      {
        sub_24D769624((v1012 + 201696), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1061 = *(a3 + 8);
      v1062 = *(*a3 + 48) & 0x7FFF;
      v1229 = v1062;
      v1063 = *v1061;
      v1064 = **(a3 + 16);
      if (v1063 == 1)
      {
        *(*(v1064 + 201728) - 8) += v1062;
      }

      else
      {
        sub_24D769624((v1064 + 201720), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1105 = *(a3 + 8);
      v1106 = *(*a3 + 50) & 0x7FFF;
      v1229 = v1106;
      v1107 = *v1105;
      v1108 = **(a3 + 16);
      if (v1107 == 1)
      {
        *(*(v1108 + 201752) - 8) += v1106;
      }

      else
      {
        sub_24D769624((v1108 + 201744), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1133 = *(a3 + 8);
      v1134 = *(*a3 + 52) & 0x7FFFLL;
      v1229 = v1134;
      v1135 = *v1133;
      v1136 = **(a3 + 16);
      if (v1135 == 1)
      {
        *(*(v1136 + 201776) - 8) += v1134;
      }

      else
      {
        sub_24D769624((v1136 + 201768), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1153 = *(a3 + 8);
      v1154 = (*(*a3 + 52) >> 16) & 0x7FFFLL;
      v1229 = v1154;
      v1155 = *v1153;
      v1156 = **(a3 + 16);
      if (v1155 == 1)
      {
        *(*(v1156 + 201800) - 8) += v1154;
      }

      else
      {
        sub_24D769624((v1156 + 201792), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1169 = *(a3 + 8);
      v1170 = *(*a3 + 56) & 0x7FFF;
      v1229 = v1170;
      v1171 = *v1169;
      v1172 = **(a3 + 16);
      if (v1171 == 1)
      {
        *(*(v1172 + 201824) - 8) += v1170;
      }

      else
      {
        sub_24D769624((v1172 + 201816), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1185 = *(a3 + 8);
      v1186 = *(*a3 + 58) & 0x7FFF;
      v1229 = v1186;
      v1187 = *v1185;
      v1188 = **(a3 + 16);
      if (v1187 == 1)
      {
        *(*(v1188 + 201848) - 8) += v1186;
      }

      else
      {
        sub_24D769624((v1188 + 201840), &v1229);
      }

      break;
    case 3:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v45 = *(a3 + 8);
      v46 = (*(*a3 + 20) >> 1) & 0x3FFFFLL;
      v1229 = v46;
      v47 = *v45;
      v48 = **(a3 + 16);
      if (v47 == 1)
      {
        *(*(v48 + 201872) - 8) += v46;
      }

      else
      {
        sub_24D769624((v48 + 201864), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v129 = *(a3 + 8);
      v130 = *(*a3 + 24) & 0x3FFFF;
      v1229 = v130;
      v131 = *v129;
      v132 = **(a3 + 16);
      if (v131 == 1)
      {
        *(*(v132 + 201896) - 8) += v130;
      }

      else
      {
        sub_24D769624((v132 + 201888), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v217 = *(a3 + 8);
      v218 = *(*a3 + 28) & 0x1FFFFLL;
      v1229 = v218;
      v219 = *v217;
      v220 = **(a3 + 16);
      if (v219 == 1)
      {
        *(*(v220 + 201920) - 8) += v218;
      }

      else
      {
        sub_24D769624((v220 + 201912), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v305 = *(a3 + 8);
      v306 = *(*a3 + 32);
      v1229 = v306;
      v307 = *v305;
      v308 = **(a3 + 16);
      if (v307 == 1)
      {
        *(*(v308 + 201944) - 8) += v306;
      }

      else
      {
        sub_24D769624((v308 + 201936), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v389 = *(a3 + 8);
      v390 = HIWORD(*(*a3 + 28));
      v1229 = v390;
      v391 = *v389;
      v392 = **(a3 + 16);
      if (v391 == 1)
      {
        *(*(v392 + 201968) - 8) += v390;
      }

      else
      {
        sub_24D769624((v392 + 201960), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v473 = *(a3 + 8);
      v474 = *(*a3 + 36);
      v1229 = v474;
      v475 = *v473;
      v476 = **(a3 + 16);
      if (v475 == 1)
      {
        *(*(v476 + 201992) - 8) += v474;
      }

      else
      {
        sub_24D769624((v476 + 201984), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v553 = *(a3 + 8);
      v554 = *(*a3 + 38);
      v1229 = v554;
      v555 = *v553;
      v556 = **(a3 + 16);
      if (v555 == 1)
      {
        *(*(v556 + 202016) - 8) += v554;
      }

      else
      {
        sub_24D769624((v556 + 202008), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v629 = *(a3 + 8);
      v630 = *(*a3 + 40) & 0x1FFFF;
      v1229 = v630;
      v631 = *v629;
      v632 = **(a3 + 16);
      if (v631 == 1)
      {
        *(*(v632 + 202040) - 8) += v630;
      }

      else
      {
        sub_24D769624((v632 + 202032), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v705 = *(a3 + 8);
      v706 = *(*a3 + 44) & 0x1FFFFLL;
      v1229 = v706;
      v707 = *v705;
      v708 = **(a3 + 16);
      if (v707 == 1)
      {
        *(*(v708 + 202064) - 8) += v706;
      }

      else
      {
        sub_24D769624((v708 + 202056), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v781 = *(a3 + 8);
      v782 = *(*a3 + 48) & 0x1FFFF;
      v1229 = v782;
      v783 = *v781;
      v784 = **(a3 + 16);
      if (v783 == 1)
      {
        *(*(v784 + 202088) - 8) += v782;
      }

      else
      {
        sub_24D769624((v784 + 202080), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v849 = *(a3 + 8);
      v850 = *(*a3 + 52) & 0x1FFFFLL;
      v1229 = v850;
      v851 = *v849;
      v852 = **(a3 + 16);
      if (v851 == 1)
      {
        *(*(v852 + 202112) - 8) += v850;
      }

      else
      {
        sub_24D769624((v852 + 202104), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v909 = *(a3 + 8);
      v910 = *(*a3 + 52) >> 17;
      v1229 = v910;
      v911 = *v909;
      v912 = **(a3 + 16);
      if (v911 == 1)
      {
        *(*(v912 + 202136) - 8) += v910;
      }

      else
      {
        sub_24D769624((v912 + 202128), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v965 = *(a3 + 8);
      v966 = *(*a3 + 56) & 0x3FFFF;
      v1229 = v966;
      v967 = *v965;
      v968 = **(a3 + 16);
      if (v967 == 1)
      {
        *(*(v968 + 202160) - 8) += v966;
      }

      else
      {
        sub_24D769624((v968 + 202152), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1017 = *(a3 + 8);
      v1018 = *(*a3 + 60) & 0x3FFFFLL;
      v1229 = v1018;
      v1019 = *v1017;
      v1020 = **(a3 + 16);
      if (v1019 == 1)
      {
        *(*(v1020 + 202184) - 8) += v1018;
      }

      else
      {
        sub_24D769624((v1020 + 202176), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1065 = *(a3 + 8);
      v1066 = *(*a3 + 64) & 0x1FFFF;
      v1229 = v1066;
      v1067 = *v1065;
      v1068 = **(a3 + 16);
      if (v1067 == 1)
      {
        *(*(v1068 + 202208) - 8) += v1066;
      }

      else
      {
        sub_24D769624((v1068 + 202200), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1109 = *(a3 + 8);
      v1110 = *(*a3 + 68);
      v1229 = v1110;
      v1111 = *v1109;
      v1112 = **(a3 + 16);
      if (v1111 == 1)
      {
        *(*(v1112 + 202232) - 8) += v1110;
      }

      else
      {
        sub_24D769624((v1112 + 202224), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1137 = *(a3 + 8);
      v1138 = *(*a3 + 70);
      v1229 = v1138;
      v1139 = *v1137;
      v1140 = **(a3 + 16);
      if (v1139 == 1)
      {
        *(*(v1140 + 202256) - 8) += v1138;
      }

      else
      {
        sub_24D769624((v1140 + 202248), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1157 = *(a3 + 8);
      v1158 = *(*a3 + 72);
      v1229 = v1158;
      v1159 = *v1157;
      v1160 = **(a3 + 16);
      if (v1159 == 1)
      {
        *(*(v1160 + 202280) - 8) += v1158;
      }

      else
      {
        sub_24D769624((v1160 + 202272), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1173 = *(a3 + 8);
      v1174 = HIWORD(*(*a3 + 68));
      v1229 = v1174;
      v1175 = *v1173;
      v1176 = **(a3 + 16);
      if (v1175 == 1)
      {
        *(*(v1176 + 202304) - 8) += v1174;
      }

      else
      {
        sub_24D769624((v1176 + 202296), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1189 = *(a3 + 8);
      v1190 = *(*a3 + 76);
      v1229 = v1190;
      v1191 = *v1189;
      v1192 = **(a3 + 16);
      if (v1191 == 1)
      {
        *(*(v1192 + 202328) - 8) += v1190;
      }

      else
      {
        sub_24D769624((v1192 + 202320), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1201 = *(a3 + 8);
      v1202 = *(*a3 + 78);
      v1229 = v1202;
      v1203 = *v1201;
      v1204 = **(a3 + 16);
      if (v1203 == 1)
      {
        *(*(v1204 + 202352) - 8) += v1202;
      }

      else
      {
        sub_24D769624((v1204 + 202344), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1213 = *(a3 + 8);
      v1214 = *(*a3 + 80);
      v1229 = v1214;
      v1215 = *v1213;
      v1216 = **(a3 + 16);
      if (v1215 == 1)
      {
        *(*(v1216 + 202376) - 8) += v1214;
      }

      else
      {
        sub_24D769624((v1216 + 202368), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1225 = *(a3 + 8);
      v1226 = *(*a3 + 82) & 0x7FFF;
      v1229 = v1226;
      v1227 = *v1225;
      v1228 = **(a3 + 16);
      if (v1227 == 1)
      {
        *(*(v1228 + 202400) - 8) += v1226;
      }

      else
      {
        sub_24D769624((v1228 + 202392), &v1229);
      }

      break;
    case 4:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v25 = *(a3 + 8);
      v26 = *(*a3 + 22);
      v1229 = v26;
      v27 = *v25;
      v28 = **(a3 + 16);
      if (v27 == 1)
      {
        *(*(v28 + 202424) - 8) += v26;
      }

      else
      {
        sub_24D769624((v28 + 202416), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v109 = *(a3 + 8);
      v110 = *(*a3 + 24);
      v1229 = v110;
      v111 = *v109;
      v112 = **(a3 + 16);
      if (v111 == 1)
      {
        *(*(v112 + 202448) - 8) += v110;
      }

      else
      {
        sub_24D769624((v112 + 202440), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v197 = *(a3 + 8);
      v198 = *(*a3 + 28) & 0x3FFFFLL;
      v1229 = v198;
      v199 = *v197;
      v200 = **(a3 + 16);
      if (v199 == 1)
      {
        *(*(v200 + 202472) - 8) += v198;
      }

      else
      {
        sub_24D769624((v200 + 202464), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v285 = *(a3 + 8);
      v286 = *(*a3 + 32) & 0x3FFFF;
      v1229 = v286;
      v287 = *v285;
      v288 = **(a3 + 16);
      if (v287 == 1)
      {
        *(*(v288 + 202496) - 8) += v286;
      }

      else
      {
        sub_24D769624((v288 + 202488), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v369 = *(a3 + 8);
      v370 = *(*a3 + 36) & 0x3FFFFLL;
      v1229 = v370;
      v371 = *v369;
      v372 = **(a3 + 16);
      if (v371 == 1)
      {
        *(*(v372 + 202520) - 8) += v370;
      }

      else
      {
        sub_24D769624((v372 + 202512), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v453 = *(a3 + 8);
      v454 = *(*a3 + 40) & 0x3FFFF;
      v1229 = v454;
      v455 = *v453;
      v456 = **(a3 + 16);
      if (v455 == 1)
      {
        *(*(v456 + 202544) - 8) += v454;
      }

      else
      {
        sub_24D769624((v456 + 202536), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v537 = *(a3 + 8);
      v538 = *(*a3 + 44) & 0x3FFFFLL;
      v1229 = v538;
      v539 = *v537;
      v540 = **(a3 + 16);
      if (v539 == 1)
      {
        *(*(v540 + 202568) - 8) += v538;
      }

      else
      {
        sub_24D769624((v540 + 202560), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v617 = *(a3 + 8);
      v618 = *(*a3 + 48) & 0x3FFFF;
      v1229 = v618;
      v619 = *v617;
      v620 = **(a3 + 16);
      if (v619 == 1)
      {
        *(*(v620 + 202592) - 8) += v618;
      }

      else
      {
        sub_24D769624((v620 + 202584), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v693 = *(a3 + 8);
      v694 = *(*a3 + 52) & 0x7FFFLL;
      v1229 = v694;
      v695 = *v693;
      v696 = **(a3 + 16);
      if (v695 == 1)
      {
        *(*(v696 + 202616) - 8) += v694;
      }

      else
      {
        sub_24D769624((v696 + 202608), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v769 = *(a3 + 8);
      v770 = (*(*a3 + 52) >> 16) & 0x7FFFLL;
      v1229 = v770;
      v771 = *v769;
      v772 = **(a3 + 16);
      if (v771 == 1)
      {
        *(*(v772 + 202640) - 8) += v770;
      }

      else
      {
        sub_24D769624((v772 + 202632), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v837 = *(a3 + 8);
      v838 = *(*a3 + 56) & 0x7FFF;
      v1229 = v838;
      v839 = *v837;
      v840 = **(a3 + 16);
      if (v839 == 1)
      {
        *(*(v840 + 202664) - 8) += v838;
      }

      else
      {
        sub_24D769624((v840 + 202656), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v897 = *(a3 + 8);
      v898 = *(*a3 + 58) & 0x7FFF;
      v1229 = v898;
      v899 = *v897;
      v900 = **(a3 + 16);
      if (v899 == 1)
      {
        *(*(v900 + 202688) - 8) += v898;
      }

      else
      {
        sub_24D769624((v900 + 202680), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v953 = *(a3 + 8);
      v954 = *(*a3 + 60) & 0xFFFFFLL;
      v1229 = v954;
      v955 = *v953;
      v956 = **(a3 + 16);
      if (v955 == 1)
      {
        *(*(v956 + 202712) - 8) += v954;
      }

      else
      {
        sub_24D769624((v956 + 202704), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1005 = *(a3 + 8);
      v1006 = *(*a3 + 64) & 0xFFFFF;
      v1229 = v1006;
      v1007 = *v1005;
      v1008 = **(a3 + 16);
      if (v1007 == 1)
      {
        *(*(v1008 + 202736) - 8) += v1006;
      }

      else
      {
        sub_24D769624((v1008 + 202728), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1057 = *(a3 + 8);
      v1058 = *(*a3 + 68) & 0x3FFFFLL;
      v1229 = v1058;
      v1059 = *v1057;
      v1060 = **(a3 + 16);
      if (v1059 == 1)
      {
        *(*(v1060 + 202760) - 8) += v1058;
      }

      else
      {
        sub_24D769624((v1060 + 202752), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1101 = *(a3 + 8);
      v1102 = *(*a3 + 72);
      v1229 = v1102;
      v1103 = *v1101;
      v1104 = **(a3 + 16);
      if (v1103 == 1)
      {
        *(*(v1104 + 202784) - 8) += v1102;
      }

      else
      {
        sub_24D769624((v1104 + 202776), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1129 = *(a3 + 8);
      v1130 = HIWORD(*(*a3 + 68));
      v1229 = v1130;
      v1131 = *v1129;
      v1132 = **(a3 + 16);
      if (v1131 == 1)
      {
        *(*(v1132 + 202808) - 8) += v1130;
      }

      else
      {
        sub_24D769624((v1132 + 202800), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1149 = *(a3 + 8);
      v1150 = *(*a3 + 76);
      v1229 = v1150;
      v1151 = *v1149;
      v1152 = **(a3 + 16);
      if (v1151 == 1)
      {
        *(*(v1152 + 202832) - 8) += v1150;
      }

      else
      {
        sub_24D769624((v1152 + 202824), &v1229);
      }

      break;
    case 5:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v65 = *(a3 + 8);
      v66 = (*(*a3 + 20) >> 1) & 0x3FFFFLL;
      v1229 = v66;
      v67 = *v65;
      v68 = **(a3 + 16);
      if (v67 == 1)
      {
        *(*(v68 + 202856) - 8) += v66;
      }

      else
      {
        sub_24D769624((v68 + 202848), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v153 = *(a3 + 8);
      v154 = *(*a3 + 24) & 0x3FFFF;
      v1229 = v154;
      v155 = *v153;
      v156 = **(a3 + 16);
      if (v155 == 1)
      {
        *(*(v156 + 202880) - 8) += v154;
      }

      else
      {
        sub_24D769624((v156 + 202872), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v241 = *(a3 + 8);
      v242 = *(*a3 + 28) & 0x3FFFFLL;
      v1229 = v242;
      v243 = *v241;
      v244 = **(a3 + 16);
      if (v243 == 1)
      {
        *(*(v244 + 202904) - 8) += v242;
      }

      else
      {
        sub_24D769624((v244 + 202896), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v325 = *(a3 + 8);
      v326 = *(*a3 + 32) & 0x3FFFF;
      v1229 = v326;
      v327 = *v325;
      v328 = **(a3 + 16);
      if (v327 == 1)
      {
        *(*(v328 + 202928) - 8) += v326;
      }

      else
      {
        sub_24D769624((v328 + 202920), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v409 = *(a3 + 8);
      v410 = *(*a3 + 36) & 0x3FFFFLL;
      v1229 = v410;
      v411 = *v409;
      v412 = **(a3 + 16);
      if (v411 == 1)
      {
        *(*(v412 + 202952) - 8) += v410;
      }

      else
      {
        sub_24D769624((v412 + 202944), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v493 = *(a3 + 8);
      v494 = *(*a3 + 40) & 0x3FFFF;
      v1229 = v494;
      v495 = *v493;
      v496 = **(a3 + 16);
      if (v495 == 1)
      {
        *(*(v496 + 202976) - 8) += v494;
      }

      else
      {
        sub_24D769624((v496 + 202968), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v573 = *(a3 + 8);
      v574 = *(*a3 + 44) & 0x3FFFFLL;
      v1229 = v574;
      v575 = *v573;
      v576 = **(a3 + 16);
      if (v575 == 1)
      {
        *(*(v576 + 203000) - 8) += v574;
      }

      else
      {
        sub_24D769624((v576 + 202992), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v649 = *(a3 + 8);
      v650 = *(*a3 + 48) & 0x3FFFF;
      v1229 = v650;
      v651 = *v649;
      v652 = **(a3 + 16);
      if (v651 == 1)
      {
        *(*(v652 + 203024) - 8) += v650;
      }

      else
      {
        sub_24D769624((v652 + 203016), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v725 = *(a3 + 8);
      v726 = *(*a3 + 52) & 0x3FFFF;
      v1229 = v726;
      v727 = *v725;
      v728 = **(a3 + 16);
      if (v727 == 1)
      {
        *(*(v728 + 203048) - 8) += v726;
      }

      else
      {
        sub_24D769624((v728 + 203040), &v1229);
      }

      break;
    case 6:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v77 = *(a3 + 8);
      v78 = *(*a3 + 20) & 0x7FFFFLL;
      v1229 = v78;
      v79 = *v77;
      v80 = **(a3 + 16);
      if (v79 == 1)
      {
        *(*(v80 + 203072) - 8) += v78;
      }

      else
      {
        sub_24D769624((v80 + 203064), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v165 = *(a3 + 8);
      v166 = *(*a3 + 24) & 0x7FFFF;
      v1229 = v166;
      v167 = *v165;
      v168 = **(a3 + 16);
      if (v167 == 1)
      {
        *(*(v168 + 203096) - 8) += v166;
      }

      else
      {
        sub_24D769624((v168 + 203088), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v253 = *(a3 + 8);
      v254 = *(*a3 + 28) & 0x7FFFFLL;
      v1229 = v254;
      v255 = *v253;
      v256 = **(a3 + 16);
      if (v255 == 1)
      {
        *(*(v256 + 203120) - 8) += v254;
      }

      else
      {
        sub_24D769624((v256 + 203112), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v337 = *(a3 + 8);
      v338 = *(*a3 + 32) & 0x7FFFF;
      v1229 = v338;
      v339 = *v337;
      v340 = **(a3 + 16);
      if (v339 == 1)
      {
        *(*(v340 + 203144) - 8) += v338;
      }

      else
      {
        sub_24D769624((v340 + 203136), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v421 = *(a3 + 8);
      v422 = *(*a3 + 36) & 0x1FFFFFLL;
      v1229 = v422;
      v423 = *v421;
      v424 = **(a3 + 16);
      if (v423 == 1)
      {
        *(*(v424 + 203168) - 8) += v422;
      }

      else
      {
        sub_24D769624((v424 + 203160), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v505 = *(a3 + 8);
      v506 = *(*a3 + 40) & 0x1FFFFF;
      v1229 = v506;
      v507 = *v505;
      v508 = **(a3 + 16);
      if (v507 == 1)
      {
        *(*(v508 + 203192) - 8) += v506;
      }

      else
      {
        sub_24D769624((v508 + 203184), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v585 = *(a3 + 8);
      v586 = *(*a3 + 44) & 0x1FFFFFLL;
      v1229 = v586;
      v587 = *v585;
      v588 = **(a3 + 16);
      if (v587 == 1)
      {
        *(*(v588 + 203216) - 8) += v586;
      }

      else
      {
        sub_24D769624((v588 + 203208), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v661 = *(a3 + 8);
      v662 = *(*a3 + 48) & 0x1FFFFF;
      v1229 = v662;
      v663 = *v661;
      v664 = **(a3 + 16);
      if (v663 == 1)
      {
        *(*(v664 + 203240) - 8) += v662;
      }

      else
      {
        sub_24D769624((v664 + 203232), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v737 = *(a3 + 8);
      v738 = *(*a3 + 52) & 0x1FFFFFLL;
      v1229 = v738;
      v739 = *v737;
      v740 = **(a3 + 16);
      if (v739 == 1)
      {
        *(*(v740 + 203264) - 8) += v738;
      }

      else
      {
        sub_24D769624((v740 + 203256), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v805 = *(a3 + 8);
      v806 = *(*a3 + 56) & 0x7FFF;
      v1229 = v806;
      v807 = *v805;
      v808 = **(a3 + 16);
      if (v807 == 1)
      {
        *(*(v808 + 203288) - 8) += v806;
      }

      else
      {
        sub_24D769624((v808 + 203280), &v1229);
      }

      break;
    case 7:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v49 = *(a3 + 8);
      v50 = *(*a3 + 20) & 0x3FFFFFLL;
      v1229 = v50;
      v51 = *v49;
      v52 = **(a3 + 16);
      if (v51 == 1)
      {
        *(*(v52 + 203312) - 8) += v50;
      }

      else
      {
        sub_24D769624((v52 + 203304), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v133 = *(a3 + 8);
      v134 = *(*a3 + 24) & 0x3FFFFF;
      v1229 = v134;
      v135 = *v133;
      v136 = **(a3 + 16);
      if (v135 == 1)
      {
        *(*(v136 + 203336) - 8) += v134;
      }

      else
      {
        sub_24D769624((v136 + 203328), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v221 = *(a3 + 8);
      v222 = *(*a3 + 28) & 0x3FFFFFLL;
      v1229 = v222;
      v223 = *v221;
      v224 = **(a3 + 16);
      if (v223 == 1)
      {
        *(*(v224 + 203360) - 8) += v222;
      }

      else
      {
        sub_24D769624((v224 + 203352), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v309 = *(a3 + 8);
      v310 = *(*a3 + 32) & 0x3FFFFF;
      v1229 = v310;
      v311 = *v309;
      v312 = **(a3 + 16);
      if (v311 == 1)
      {
        *(*(v312 + 203384) - 8) += v310;
      }

      else
      {
        sub_24D769624((v312 + 203376), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v393 = *(a3 + 8);
      v394 = *(*a3 + 36) & 0x3FFFFFLL;
      v1229 = v394;
      v395 = *v393;
      v396 = **(a3 + 16);
      if (v395 == 1)
      {
        *(*(v396 + 203408) - 8) += v394;
      }

      else
      {
        sub_24D769624((v396 + 203400), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v477 = *(a3 + 8);
      v478 = *(*a3 + 40) & 0x3FFFFF;
      v1229 = v478;
      v479 = *v477;
      v480 = **(a3 + 16);
      if (v479 == 1)
      {
        *(*(v480 + 203432) - 8) += v478;
      }

      else
      {
        sub_24D769624((v480 + 203424), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v557 = *(a3 + 8);
      v558 = *(*a3 + 44) & 0x3FFFFFLL;
      v1229 = v558;
      v559 = *v557;
      v560 = **(a3 + 16);
      if (v559 == 1)
      {
        *(*(v560 + 203456) - 8) += v558;
      }

      else
      {
        sub_24D769624((v560 + 203448), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v633 = *(a3 + 8);
      v634 = *(*a3 + 48) & 0x7FFFF;
      v1229 = v634;
      v635 = *v633;
      v636 = **(a3 + 16);
      if (v635 == 1)
      {
        *(*(v636 + 203480) - 8) += v634;
      }

      else
      {
        sub_24D769624((v636 + 203472), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v709 = *(a3 + 8);
      v710 = *(*a3 + 52) & 0x3FFFFFLL;
      v1229 = v710;
      v711 = *v709;
      v712 = **(a3 + 16);
      if (v711 == 1)
      {
        *(*(v712 + 203504) - 8) += v710;
      }

      else
      {
        sub_24D769624((v712 + 203496), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v785 = *(a3 + 8);
      v786 = *(*a3 + 56) & 0x3FFFFF;
      v1229 = v786;
      v787 = *v785;
      v788 = **(a3 + 16);
      if (v787 == 1)
      {
        *(*(v788 + 203528) - 8) += v786;
      }

      else
      {
        sub_24D769624((v788 + 203520), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v853 = *(a3 + 8);
      v854 = *(*a3 + 60) & 0x3FFFFFLL;
      v1229 = v854;
      v855 = *v853;
      v856 = **(a3 + 16);
      if (v855 == 1)
      {
        *(*(v856 + 203552) - 8) += v854;
      }

      else
      {
        sub_24D769624((v856 + 203544), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v913 = *(a3 + 8);
      v914 = *(*a3 + 64) & 0x3FFFFF;
      v1229 = v914;
      v915 = *v913;
      v916 = **(a3 + 16);
      if (v915 == 1)
      {
        *(*(v916 + 203576) - 8) += v914;
      }

      else
      {
        sub_24D769624((v916 + 203568), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v969 = *(a3 + 8);
      v970 = *(*a3 + 68) & 0x3FFFFFLL;
      v1229 = v970;
      v971 = *v969;
      v972 = **(a3 + 16);
      if (v971 == 1)
      {
        *(*(v972 + 203600) - 8) += v970;
      }

      else
      {
        sub_24D769624((v972 + 203592), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1021 = *(a3 + 8);
      v1022 = *(*a3 + 72) & 0x3FFFFF;
      v1229 = v1022;
      v1023 = *v1021;
      v1024 = **(a3 + 16);
      if (v1023 == 1)
      {
        *(*(v1024 + 203624) - 8) += v1022;
      }

      else
      {
        sub_24D769624((v1024 + 203616), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1069 = *(a3 + 8);
      v1070 = *(*a3 + 76) & 0x3FFFFFLL;
      v1229 = v1070;
      v1071 = *v1069;
      v1072 = **(a3 + 16);
      if (v1071 == 1)
      {
        *(*(v1072 + 203648) - 8) += v1070;
      }

      else
      {
        sub_24D769624((v1072 + 203640), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1113 = *(a3 + 8);
      v1114 = *(*a3 + 80) & 0x7FFFF;
      v1229 = v1114;
      v1115 = *v1113;
      v1116 = **(a3 + 16);
      if (v1115 == 1)
      {
        *(*(v1116 + 203672) - 8) += v1114;
      }

      else
      {
        sub_24D769624((v1116 + 203664), &v1229);
      }

      break;
    case 8:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v89 = *(a3 + 8);
      v90 = *(*a3 + 20) & 0x7FFFFLL;
      v1229 = v90;
      v91 = *v89;
      v92 = **(a3 + 16);
      if (v91 == 1)
      {
        *(*(v92 + 203696) - 8) += v90;
      }

      else
      {
        sub_24D769624((v92 + 203688), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v177 = *(a3 + 8);
      v178 = *(*a3 + 24) & 0x7FFFF;
      v1229 = v178;
      v179 = *v177;
      v180 = **(a3 + 16);
      if (v179 == 1)
      {
        *(*(v180 + 203720) - 8) += v178;
      }

      else
      {
        sub_24D769624((v180 + 203712), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v265 = *(a3 + 8);
      v266 = *(*a3 + 28) & 0x7FFFFLL;
      v1229 = v266;
      v267 = *v265;
      v268 = **(a3 + 16);
      if (v267 == 1)
      {
        *(*(v268 + 203744) - 8) += v266;
      }

      else
      {
        sub_24D769624((v268 + 203736), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v349 = *(a3 + 8);
      v350 = *(*a3 + 32) & 0x7FFFF;
      v1229 = v350;
      v351 = *v349;
      v352 = **(a3 + 16);
      if (v351 == 1)
      {
        *(*(v352 + 203768) - 8) += v350;
      }

      else
      {
        sub_24D769624((v352 + 203760), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v433 = *(a3 + 8);
      v434 = *(*a3 + 36) & 0x7FFFFLL;
      v1229 = v434;
      v435 = *v433;
      v436 = **(a3 + 16);
      if (v435 == 1)
      {
        *(*(v436 + 203792) - 8) += v434;
      }

      else
      {
        sub_24D769624((v436 + 203784), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v517 = *(a3 + 8);
      v518 = *(*a3 + 40) & 0x7FFFF;
      v1229 = v518;
      v519 = *v517;
      v520 = **(a3 + 16);
      if (v519 == 1)
      {
        *(*(v520 + 203816) - 8) += v518;
      }

      else
      {
        sub_24D769624((v520 + 203808), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v597 = *(a3 + 8);
      v598 = *(*a3 + 44) & 0x7FFFFLL;
      v1229 = v598;
      v599 = *v597;
      v600 = **(a3 + 16);
      if (v599 == 1)
      {
        *(*(v600 + 203840) - 8) += v598;
      }

      else
      {
        sub_24D769624((v600 + 203832), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v673 = *(a3 + 8);
      v674 = *(*a3 + 48) & 0x7FFF;
      v1229 = v674;
      v675 = *v673;
      v676 = **(a3 + 16);
      if (v675 == 1)
      {
        *(*(v676 + 203864) - 8) += v674;
      }

      else
      {
        sub_24D769624((v676 + 203856), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v749 = *(a3 + 8);
      v750 = *(*a3 + 52) & 0xFFFFFLL;
      v1229 = v750;
      v751 = *v749;
      v752 = **(a3 + 16);
      if (v751 == 1)
      {
        *(*(v752 + 203888) - 8) += v750;
      }

      else
      {
        sub_24D769624((v752 + 203880), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v817 = *(a3 + 8);
      v818 = *(*a3 + 56) & 0xFFFFF;
      v1229 = v818;
      v819 = *v817;
      v820 = **(a3 + 16);
      if (v819 == 1)
      {
        *(*(v820 + 203912) - 8) += v818;
      }

      else
      {
        sub_24D769624((v820 + 203904), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v881 = *(a3 + 8);
      v882 = *(*a3 + 60) & 0xFFFFFLL;
      v1229 = v882;
      v883 = *v881;
      v884 = **(a3 + 16);
      if (v883 == 1)
      {
        *(*(v884 + 203936) - 8) += v882;
      }

      else
      {
        sub_24D769624((v884 + 203928), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v937 = *(a3 + 8);
      v938 = *(*a3 + 64) & 0xFFFFF;
      v1229 = v938;
      v939 = *v937;
      v940 = **(a3 + 16);
      if (v939 == 1)
      {
        *(*(v940 + 203960) - 8) += v938;
      }

      else
      {
        sub_24D769624((v940 + 203952), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v993 = *(a3 + 8);
      v994 = *(*a3 + 68) & 0xFFFFFLL;
      v1229 = v994;
      v995 = *v993;
      v996 = **(a3 + 16);
      if (v995 == 1)
      {
        *(*(v996 + 203984) - 8) += v994;
      }

      else
      {
        sub_24D769624((v996 + 203976), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1045 = *(a3 + 8);
      v1046 = *(*a3 + 72) & 0xFFFFF;
      v1229 = v1046;
      v1047 = *v1045;
      v1048 = **(a3 + 16);
      if (v1047 == 1)
      {
        *(*(v1048 + 204008) - 8) += v1046;
      }

      else
      {
        sub_24D769624((v1048 + 204000), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1089 = *(a3 + 8);
      v1090 = *(*a3 + 76) & 0xFFFFF;
      v1229 = v1090;
      v1091 = *v1089;
      v1092 = **(a3 + 16);
      if (v1091 == 1)
      {
        *(*(v1092 + 204032) - 8) += v1090;
      }

      else
      {
        sub_24D769624((v1092 + 204024), &v1229);
      }

      break;
    case 9:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v33 = *(a3 + 8);
      v34 = *(*a3 + 20);
      v1229 = v34;
      v35 = *v33;
      v36 = **(a3 + 16);
      if (v35 == 1)
      {
        *(*(v36 + 204056) - 8) += v34;
      }

      else
      {
        sub_24D769624((v36 + 204048), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v117 = *(a3 + 8);
      v118 = *(*a3 + 22);
      v1229 = v118;
      v119 = *v117;
      v120 = **(a3 + 16);
      if (v119 == 1)
      {
        *(*(v120 + 204080) - 8) += v118;
      }

      else
      {
        sub_24D769624((v120 + 204072), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v205 = *(a3 + 8);
      v206 = *(*a3 + 24) & 0x1FFFF;
      v1229 = v206;
      v207 = *v205;
      v208 = **(a3 + 16);
      if (v207 == 1)
      {
        *(*(v208 + 204104) - 8) += v206;
      }

      else
      {
        sub_24D769624((v208 + 204096), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v293 = *(a3 + 8);
      v294 = *(*a3 + 28) & 0x1FFFFLL;
      v1229 = v294;
      v295 = *v293;
      v296 = **(a3 + 16);
      if (v295 == 1)
      {
        *(*(v296 + 204128) - 8) += v294;
      }

      else
      {
        sub_24D769624((v296 + 204120), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v377 = *(a3 + 8);
      v378 = *(*a3 + 32) & 0x1FFFF;
      v1229 = v378;
      v379 = *v377;
      v380 = **(a3 + 16);
      if (v379 == 1)
      {
        *(*(v380 + 204152) - 8) += v378;
      }

      else
      {
        sub_24D769624((v380 + 204144), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v461 = *(a3 + 8);
      v462 = *(*a3 + 36) & 0x1FFFFF;
      v1229 = v462;
      v463 = *v461;
      v464 = **(a3 + 16);
      if (v463 == 1)
      {
        *(*(v464 + 204176) - 8) += v462;
      }

      else
      {
        sub_24D769624((v464 + 204168), &v1229);
      }

      break;
    case 10:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v85 = *(a3 + 8);
      v86 = *(*a3 + 20) >> 1;
      v1229 = v86;
      v87 = *v85;
      v88 = **(a3 + 16);
      if (v87 == 1)
      {
        *(*(v88 + 204200) - 8) += v86;
      }

      else
      {
        sub_24D769624((v88 + 204192), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v173 = *(a3 + 8);
      v174 = (*(*a3 + 20) >> 16) & 0x7FFFLL;
      v1229 = v174;
      v175 = *v173;
      v176 = **(a3 + 16);
      if (v175 == 1)
      {
        *(*(v176 + 204224) - 8) += v174;
      }

      else
      {
        sub_24D769624((v176 + 204216), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v261 = *(a3 + 8);
      v262 = *(*a3 + 24) & 0x7FFF;
      v1229 = v262;
      v263 = *v261;
      v264 = **(a3 + 16);
      if (v263 == 1)
      {
        *(*(v264 + 204248) - 8) += v262;
      }

      else
      {
        sub_24D769624((v264 + 204240), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v345 = *(a3 + 8);
      v346 = *(*a3 + 26) & 0x7FFF;
      v1229 = v346;
      v347 = *v345;
      v348 = **(a3 + 16);
      if (v347 == 1)
      {
        *(*(v348 + 204272) - 8) += v346;
      }

      else
      {
        sub_24D769624((v348 + 204264), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v429 = *(a3 + 8);
      v430 = *(*a3 + 28) & 0x7FFFLL;
      v1229 = v430;
      v431 = *v429;
      v432 = **(a3 + 16);
      if (v431 == 1)
      {
        *(*(v432 + 204296) - 8) += v430;
      }

      else
      {
        sub_24D769624((v432 + 204288), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v513 = *(a3 + 8);
      v514 = (*(*a3 + 28) >> 16) & 0x7FFFLL;
      v1229 = v514;
      v515 = *v513;
      v516 = **(a3 + 16);
      if (v515 == 1)
      {
        *(*(v516 + 204320) - 8) += v514;
      }

      else
      {
        sub_24D769624((v516 + 204312), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v593 = *(a3 + 8);
      v594 = *(*a3 + 32) & 0x7FFF;
      v1229 = v594;
      v595 = *v593;
      v596 = **(a3 + 16);
      if (v595 == 1)
      {
        *(*(v596 + 204344) - 8) += v594;
      }

      else
      {
        sub_24D769624((v596 + 204336), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v669 = *(a3 + 8);
      v670 = *(*a3 + 34) & 0x7FFF;
      v1229 = v670;
      v671 = *v669;
      v672 = **(a3 + 16);
      if (v671 == 1)
      {
        *(*(v672 + 204368) - 8) += v670;
      }

      else
      {
        sub_24D769624((v672 + 204360), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v745 = *(a3 + 8);
      v746 = *(*a3 + 36) & 0x3FFFLL;
      v1229 = v746;
      v747 = *v745;
      v748 = **(a3 + 16);
      if (v747 == 1)
      {
        *(*(v748 + 204392) - 8) += v746;
      }

      else
      {
        sub_24D769624((v748 + 204384), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v813 = *(a3 + 8);
      v814 = (*(*a3 + 36) >> 16) & 0x3FFFLL;
      v1229 = v814;
      v815 = *v813;
      v816 = **(a3 + 16);
      if (v815 == 1)
      {
        *(*(v816 + 204416) - 8) += v814;
      }

      else
      {
        sub_24D769624((v816 + 204408), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v877 = *(a3 + 8);
      v878 = *(*a3 + 40) & 0x3FFF;
      v1229 = v878;
      v879 = *v877;
      v880 = **(a3 + 16);
      if (v879 == 1)
      {
        *(*(v880 + 204440) - 8) += v878;
      }

      else
      {
        sub_24D769624((v880 + 204432), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v933 = *(a3 + 8);
      v934 = *(*a3 + 42) & 0x3FFF;
      v1229 = v934;
      v935 = *v933;
      v936 = **(a3 + 16);
      if (v935 == 1)
      {
        *(*(v936 + 204464) - 8) += v934;
      }

      else
      {
        sub_24D769624((v936 + 204456), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v989 = *(a3 + 8);
      v990 = *(*a3 + 44) & 0x3FFFLL;
      v1229 = v990;
      v991 = *v989;
      v992 = **(a3 + 16);
      if (v991 == 1)
      {
        *(*(v992 + 204488) - 8) += v990;
      }

      else
      {
        sub_24D769624((v992 + 204480), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1041 = *(a3 + 8);
      v1042 = (*(*a3 + 44) >> 16) & 0x3FFFLL;
      v1229 = v1042;
      v1043 = *v1041;
      v1044 = **(a3 + 16);
      if (v1043 == 1)
      {
        *(*(v1044 + 204512) - 8) += v1042;
      }

      else
      {
        sub_24D769624((v1044 + 204504), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1085 = *(a3 + 8);
      v1086 = *(*a3 + 48) & 0x3FFF;
      v1229 = v1086;
      v1087 = *v1085;
      v1088 = **(a3 + 16);
      if (v1087 == 1)
      {
        *(*(v1088 + 204536) - 8) += v1086;
      }

      else
      {
        sub_24D769624((v1088 + 204528), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1125 = *(a3 + 8);
      v1126 = *(*a3 + 50) & 0x3FFF;
      v1229 = v1126;
      v1127 = *v1125;
      v1128 = **(a3 + 16);
      if (v1127 == 1)
      {
        *(*(v1128 + 204560) - 8) += v1126;
      }

      else
      {
        sub_24D769624((v1128 + 204552), &v1229);
      }

      break;
    case 11:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v21 = *(a3 + 8);
      v22 = (*(*a3 + 20) >> 1) & 0x3FFFLL;
      v1229 = v22;
      v23 = *v21;
      v24 = **(a3 + 16);
      if (v23 == 1)
      {
        *(*(v24 + 204584) - 8) += v22;
      }

      else
      {
        sub_24D769624((v24 + 204576), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v105 = *(a3 + 8);
      v106 = (*(*a3 + 20) >> 16) & 0x3FFFLL;
      v1229 = v106;
      v107 = *v105;
      v108 = **(a3 + 16);
      if (v107 == 1)
      {
        *(*(v108 + 204608) - 8) += v106;
      }

      else
      {
        sub_24D769624((v108 + 204600), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v193 = *(a3 + 8);
      v194 = *(*a3 + 24) & 0x1FFF;
      v1229 = v194;
      v195 = *v193;
      v196 = **(a3 + 16);
      if (v195 == 1)
      {
        *(*(v196 + 204632) - 8) += v194;
      }

      else
      {
        sub_24D769624((v196 + 204624), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v281 = *(a3 + 8);
      v282 = *(*a3 + 26) & 0x1FFF;
      v1229 = v282;
      v283 = *v281;
      v284 = **(a3 + 16);
      if (v283 == 1)
      {
        *(*(v284 + 204656) - 8) += v282;
      }

      else
      {
        sub_24D769624((v284 + 204648), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v365 = *(a3 + 8);
      v366 = *(*a3 + 28) & 0x1FFFLL;
      v1229 = v366;
      v367 = *v365;
      v368 = **(a3 + 16);
      if (v367 == 1)
      {
        *(*(v368 + 204680) - 8) += v366;
      }

      else
      {
        sub_24D769624((v368 + 204672), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v449 = *(a3 + 8);
      v450 = (*(*a3 + 28) >> 16) & 0x3FFFLL;
      v1229 = v450;
      v451 = *v449;
      v452 = **(a3 + 16);
      if (v451 == 1)
      {
        *(*(v452 + 204704) - 8) += v450;
      }

      else
      {
        sub_24D769624((v452 + 204696), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v533 = *(a3 + 8);
      v534 = *(*a3 + 32) & 0x3FFF;
      v1229 = v534;
      v535 = *v533;
      v536 = **(a3 + 16);
      if (v535 == 1)
      {
        *(*(v536 + 204728) - 8) += v534;
      }

      else
      {
        sub_24D769624((v536 + 204720), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v613 = *(a3 + 8);
      v614 = *(*a3 + 34) & 0x3FFF;
      v1229 = v614;
      v615 = *v613;
      v616 = **(a3 + 16);
      if (v615 == 1)
      {
        *(*(v616 + 204752) - 8) += v614;
      }

      else
      {
        sub_24D769624((v616 + 204744), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v689 = *(a3 + 8);
      v690 = *(*a3 + 36) & 0x1FFFLL;
      v1229 = v690;
      v691 = *v689;
      v692 = **(a3 + 16);
      if (v691 == 1)
      {
        *(*(v692 + 204776) - 8) += v690;
      }

      else
      {
        sub_24D769624((v692 + 204768), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v765 = *(a3 + 8);
      v766 = (*(*a3 + 36) >> 16) & 0x1FFFLL;
      v1229 = v766;
      v767 = *v765;
      v768 = **(a3 + 16);
      if (v767 == 1)
      {
        *(*(v768 + 204800) - 8) += v766;
      }

      else
      {
        sub_24D769624((v768 + 204792), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v833 = *(a3 + 8);
      v834 = *(*a3 + 40) & 0x1FFF;
      v1229 = v834;
      v835 = *v833;
      v836 = **(a3 + 16);
      if (v835 == 1)
      {
        *(*(v836 + 204824) - 8) += v834;
      }

      else
      {
        sub_24D769624((v836 + 204816), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v893 = *(a3 + 8);
      v894 = *(*a3 + 42) & 0x1FFF;
      v1229 = v894;
      v895 = *v893;
      v896 = **(a3 + 16);
      if (v895 == 1)
      {
        *(*(v896 + 204848) - 8) += v894;
      }

      else
      {
        sub_24D769624((v896 + 204840), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v949 = *(a3 + 8);
      v950 = *(*a3 + 44) & 0x1FFFLL;
      v1229 = v950;
      v951 = *v949;
      v952 = **(a3 + 16);
      if (v951 == 1)
      {
        *(*(v952 + 204872) - 8) += v950;
      }

      else
      {
        sub_24D769624((v952 + 204864), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1001 = *(a3 + 8);
      v1002 = (*(*a3 + 44) >> 16) & 0x1FFFLL;
      v1229 = v1002;
      v1003 = *v1001;
      v1004 = **(a3 + 16);
      if (v1003 == 1)
      {
        *(*(v1004 + 204896) - 8) += v1002;
      }

      else
      {
        sub_24D769624((v1004 + 204888), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1053 = *(a3 + 8);
      v1054 = *(*a3 + 48) & 0x1FFF;
      v1229 = v1054;
      v1055 = *v1053;
      v1056 = **(a3 + 16);
      if (v1055 == 1)
      {
        *(*(v1056 + 204920) - 8) += v1054;
      }

      else
      {
        sub_24D769624((v1056 + 204912), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1097 = *(a3 + 8);
      v1098 = *(*a3 + 50) & 0x1FFF;
      v1229 = v1098;
      v1099 = *v1097;
      v1100 = **(a3 + 16);
      if (v1099 == 1)
      {
        *(*(v1100 + 204944) - 8) += v1098;
      }

      else
      {
        sub_24D769624((v1100 + 204936), &v1229);
      }

      break;
    case 12:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v29 = *(a3 + 8);
      v30 = *(*a3 + 20);
      v1229 = v30;
      v31 = *v29;
      v32 = **(a3 + 16);
      if (v31 == 1)
      {
        *(*(v32 + 204968) - 8) += v30;
      }

      else
      {
        sub_24D769624((v32 + 204960), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v113 = *(a3 + 8);
      v114 = HIDWORD(*(*a3 + 20));
      v1229 = v114;
      v115 = *v113;
      v116 = **(a3 + 16);
      if (v115 == 1)
      {
        *(*(v116 + 204992) - 8) += v114;
      }

      else
      {
        sub_24D769624((v116 + 204984), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v201 = *(a3 + 8);
      v202 = *(*a3 + 28) & 0x7FFFLL;
      v1229 = v202;
      v203 = *v201;
      v204 = **(a3 + 16);
      if (v203 == 1)
      {
        *(*(v204 + 205016) - 8) += v202;
      }

      else
      {
        sub_24D769624((v204 + 205008), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v289 = *(a3 + 8);
      v290 = (*(*a3 + 28) >> 16) & 0x7FFFLL;
      v1229 = v290;
      v291 = *v289;
      v292 = **(a3 + 16);
      if (v291 == 1)
      {
        *(*(v292 + 205040) - 8) += v290;
      }

      else
      {
        sub_24D769624((v292 + 205032), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v373 = *(a3 + 8);
      v374 = *(*a3 + 32) & 0x7FFF;
      v1229 = v374;
      v375 = *v373;
      v376 = **(a3 + 16);
      if (v375 == 1)
      {
        *(*(v376 + 205064) - 8) += v374;
      }

      else
      {
        sub_24D769624((v376 + 205056), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v457 = *(a3 + 8);
      v458 = *(*a3 + 34) & 0x7FFF;
      v1229 = v458;
      v459 = *v457;
      v460 = **(a3 + 16);
      if (v459 == 1)
      {
        *(*(v460 + 205088) - 8) += v458;
      }

      else
      {
        sub_24D769624((v460 + 205080), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v541 = *(a3 + 8);
      v542 = *(*a3 + 36);
      v1229 = v542;
      v543 = *v541;
      v544 = **(a3 + 16);
      if (v543 == 1)
      {
        *(*(v544 + 205112) - 8) += v542;
      }

      else
      {
        sub_24D769624((v544 + 205104), &v1229);
      }

      break;
    case 13:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v73 = *(a3 + 8);
      v74 = *(*a3 + 20) & 0x7FFFLL;
      v1229 = v74;
      v75 = *v73;
      v76 = **(a3 + 16);
      if (v75 == 1)
      {
        *(*(v76 + 205136) - 8) += v74;
      }

      else
      {
        sub_24D769624((v76 + 205128), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v161 = *(a3 + 8);
      v162 = (*(*a3 + 20) >> 16) & 0x7FFFLL;
      v1229 = v162;
      v163 = *v161;
      v164 = **(a3 + 16);
      if (v163 == 1)
      {
        *(*(v164 + 205160) - 8) += v162;
      }

      else
      {
        sub_24D769624((v164 + 205152), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v249 = *(a3 + 8);
      v250 = *(*a3 + 24) & 0x7FFF;
      v1229 = v250;
      v251 = *v249;
      v252 = **(a3 + 16);
      if (v251 == 1)
      {
        *(*(v252 + 205184) - 8) += v250;
      }

      else
      {
        sub_24D769624((v252 + 205176), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v333 = *(a3 + 8);
      v334 = *(*a3 + 26) & 0x7FFF;
      v1229 = v334;
      v335 = *v333;
      v336 = **(a3 + 16);
      if (v335 == 1)
      {
        *(*(v336 + 205208) - 8) += v334;
      }

      else
      {
        sub_24D769624((v336 + 205200), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v417 = *(a3 + 8);
      v418 = *(*a3 + 28) & 0x1FFFFLL;
      v1229 = v418;
      v419 = *v417;
      v420 = **(a3 + 16);
      if (v419 == 1)
      {
        *(*(v420 + 205232) - 8) += v418;
      }

      else
      {
        sub_24D769624((v420 + 205224), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v501 = *(a3 + 8);
      v502 = *(*a3 + 32) & 0x3FFFF;
      v1229 = v502;
      v503 = *v501;
      v504 = **(a3 + 16);
      if (v503 == 1)
      {
        *(*(v504 + 205256) - 8) += v502;
      }

      else
      {
        sub_24D769624((v504 + 205248), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v581 = *(a3 + 8);
      v582 = *(*a3 + 36) & 0x3FFFFLL;
      v1229 = v582;
      v583 = *v581;
      v584 = **(a3 + 16);
      if (v583 == 1)
      {
        *(*(v584 + 205280) - 8) += v582;
      }

      else
      {
        sub_24D769624((v584 + 205272), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v657 = *(a3 + 8);
      v658 = *(*a3 + 40) & 0x7FFF;
      v1229 = v658;
      v659 = *v657;
      v660 = **(a3 + 16);
      if (v659 == 1)
      {
        *(*(v660 + 205304) - 8) += v658;
      }

      else
      {
        sub_24D769624((v660 + 205296), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v733 = *(a3 + 8);
      v734 = *(*a3 + 42) & 0x3FFF;
      v1229 = v734;
      v735 = *v733;
      v736 = **(a3 + 16);
      if (v735 == 1)
      {
        *(*(v736 + 205328) - 8) += v734;
      }

      else
      {
        sub_24D769624((v736 + 205320), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v801 = *(a3 + 8);
      v802 = *(*a3 + 44) & 0x1FFF;
      v1229 = v802;
      v803 = *v801;
      v804 = **(a3 + 16);
      if (v803 == 1)
      {
        *(*(v804 + 205352) - 8) += v802;
      }

      else
      {
        sub_24D769624((v804 + 205344), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v869 = *(a3 + 8);
      v870 = *(*a3 + 46);
      v1229 = v870;
      v871 = *v869;
      v872 = **(a3 + 16);
      if (v871 == 1)
      {
        *(*(v872 + 205376) - 8) += v870;
      }

      else
      {
        sub_24D769624((v872 + 205368), &v1229);
      }

      break;
    case 14:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v17 = *(a3 + 8);
      v18 = *(*a3 + 20) & 0x7FFFLL;
      v1229 = v18;
      v19 = *v17;
      v20 = **(a3 + 16);
      if (v19 == 1)
      {
        *(*(v20 + 205400) - 8) += v18;
      }

      else
      {
        sub_24D769624((v20 + 205392), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v101 = *(a3 + 8);
      v102 = (*(*a3 + 20) >> 16) & 0x7FFFLL;
      v1229 = v102;
      v103 = *v101;
      v104 = **(a3 + 16);
      if (v103 == 1)
      {
        *(*(v104 + 205424) - 8) += v102;
      }

      else
      {
        sub_24D769624((v104 + 205416), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v189 = *(a3 + 8);
      v190 = *(*a3 + 24) & 0x7FFF;
      v1229 = v190;
      v191 = *v189;
      v192 = **(a3 + 16);
      if (v191 == 1)
      {
        *(*(v192 + 205448) - 8) += v190;
      }

      else
      {
        sub_24D769624((v192 + 205440), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v277 = *(a3 + 8);
      v278 = *(*a3 + 28) & 0x3FFFFLL;
      v1229 = v278;
      v279 = *v277;
      v280 = **(a3 + 16);
      if (v279 == 1)
      {
        *(*(v280 + 205472) - 8) += v278;
      }

      else
      {
        sub_24D769624((v280 + 205464), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v361 = *(a3 + 8);
      v362 = *(*a3 + 32) & 0x3FFFF;
      v1229 = v362;
      v363 = *v361;
      v364 = **(a3 + 16);
      if (v363 == 1)
      {
        *(*(v364 + 205496) - 8) += v362;
      }

      else
      {
        sub_24D769624((v364 + 205488), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v445 = *(a3 + 8);
      v446 = *(*a3 + 36) & 0x1FFFFLL;
      v1229 = v446;
      v447 = *v445;
      v448 = **(a3 + 16);
      if (v447 == 1)
      {
        *(*(v448 + 205520) - 8) += v446;
      }

      else
      {
        sub_24D769624((v448 + 205512), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v529 = *(a3 + 8);
      v530 = *(*a3 + 40);
      v1229 = v530;
      v531 = *v529;
      v532 = **(a3 + 16);
      if (v531 == 1)
      {
        *(*(v532 + 205544) - 8) += v530;
      }

      else
      {
        sub_24D769624((v532 + 205536), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v609 = *(a3 + 8);
      v610 = HIWORD(*(*a3 + 36));
      v1229 = v610;
      v611 = *v609;
      v612 = **(a3 + 16);
      if (v611 == 1)
      {
        *(*(v612 + 205568) - 8) += v610;
      }

      else
      {
        sub_24D769624((v612 + 205560), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v685 = *(a3 + 8);
      v686 = *(*a3 + 44) & 0x1FFFFLL;
      v1229 = v686;
      v687 = *v685;
      v688 = **(a3 + 16);
      if (v687 == 1)
      {
        *(*(v688 + 205592) - 8) += v686;
      }

      else
      {
        sub_24D769624((v688 + 205584), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v761 = *(a3 + 8);
      v762 = *(*a3 + 48) & 0x1FFFF;
      v1229 = v762;
      v763 = *v761;
      v764 = **(a3 + 16);
      if (v763 == 1)
      {
        *(*(v764 + 205616) - 8) += v762;
      }

      else
      {
        sub_24D769624((v764 + 205608), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v829 = *(a3 + 8);
      v830 = *(*a3 + 52) & 0x1FFFFLL;
      v1229 = v830;
      v831 = *v829;
      v832 = **(a3 + 16);
      if (v831 == 1)
      {
        *(*(v832 + 205640) - 8) += v830;
      }

      else
      {
        sub_24D769624((v832 + 205632), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v889 = *(a3 + 8);
      v890 = *(*a3 + 56) & 0x1FFFF;
      v1229 = v890;
      v891 = *v889;
      v892 = **(a3 + 16);
      if (v891 == 1)
      {
        *(*(v892 + 205664) - 8) += v890;
      }

      else
      {
        sub_24D769624((v892 + 205656), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v945 = *(a3 + 8);
      v946 = *(*a3 + 52) >> 49;
      v1229 = v946;
      v947 = *v945;
      v948 = **(a3 + 16);
      if (v947 == 1)
      {
        *(*(v948 + 205688) - 8) += v946;
      }

      else
      {
        sub_24D769624((v948 + 205680), &v1229);
      }

      break;
    case 15:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v41 = *(a3 + 8);
      v42 = *(*a3 + 20) & 0x7FFFLL;
      v1229 = v42;
      v43 = *v41;
      v44 = **(a3 + 16);
      if (v43 == 1)
      {
        *(*(v44 + 205712) - 8) += v42;
      }

      else
      {
        sub_24D769624((v44 + 205704), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v125 = *(a3 + 8);
      v126 = (*(*a3 + 20) >> 16) & 0x7FFFLL;
      v1229 = v126;
      v127 = *v125;
      v128 = **(a3 + 16);
      if (v127 == 1)
      {
        *(*(v128 + 205736) - 8) += v126;
      }

      else
      {
        sub_24D769624((v128 + 205728), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v213 = *(a3 + 8);
      v214 = *(*a3 + 24) & 0x7FFF;
      v1229 = v214;
      v215 = *v213;
      v216 = **(a3 + 16);
      if (v215 == 1)
      {
        *(*(v216 + 205760) - 8) += v214;
      }

      else
      {
        sub_24D769624((v216 + 205752), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v301 = *(a3 + 8);
      v302 = *(*a3 + 26) & 0x7FFF;
      v1229 = v302;
      v303 = *v301;
      v304 = **(a3 + 16);
      if (v303 == 1)
      {
        *(*(v304 + 205784) - 8) += v302;
      }

      else
      {
        sub_24D769624((v304 + 205776), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v385 = *(a3 + 8);
      v386 = *(*a3 + 28) & 0x1FFFFLL;
      v1229 = v386;
      v387 = *v385;
      v388 = **(a3 + 16);
      if (v387 == 1)
      {
        *(*(v388 + 205808) - 8) += v386;
      }

      else
      {
        sub_24D769624((v388 + 205800), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v469 = *(a3 + 8);
      v470 = *(*a3 + 32) & 0x1FFFF;
      v1229 = v470;
      v471 = *v469;
      v472 = **(a3 + 16);
      if (v471 == 1)
      {
        *(*(v472 + 205832) - 8) += v470;
      }

      else
      {
        sub_24D769624((v472 + 205824), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v549 = *(a3 + 8);
      v550 = *(*a3 + 36) & 0x1FFFFLL;
      v1229 = v550;
      v551 = *v549;
      v552 = **(a3 + 16);
      if (v551 == 1)
      {
        *(*(v552 + 205856) - 8) += v550;
      }

      else
      {
        sub_24D769624((v552 + 205848), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v625 = *(a3 + 8);
      v626 = *(*a3 + 36) >> 17;
      v1229 = v626;
      v627 = *v625;
      v628 = **(a3 + 16);
      if (v627 == 1)
      {
        *(*(v628 + 205880) - 8) += v626;
      }

      else
      {
        sub_24D769624((v628 + 205872), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v701 = *(a3 + 8);
      v702 = *(*a3 + 40) & 0x7FFF;
      v1229 = v702;
      v703 = *v701;
      v704 = **(a3 + 16);
      if (v703 == 1)
      {
        *(*(v704 + 205904) - 8) += v702;
      }

      else
      {
        sub_24D769624((v704 + 205896), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v777 = *(a3 + 8);
      v778 = *(*a3 + 42) & 0x7FFF;
      v1229 = v778;
      v779 = *v777;
      v780 = **(a3 + 16);
      if (v779 == 1)
      {
        *(*(v780 + 205928) - 8) += v778;
      }

      else
      {
        sub_24D769624((v780 + 205920), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v845 = *(a3 + 8);
      v846 = *(*a3 + 44) & 0x1FFFFLL;
      v1229 = v846;
      v847 = *v845;
      v848 = **(a3 + 16);
      if (v847 == 1)
      {
        *(*(v848 + 205952) - 8) += v846;
      }

      else
      {
        sub_24D769624((v848 + 205944), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v905 = *(a3 + 8);
      v906 = *(*a3 + 48) & 0x1FFFF;
      v1229 = v906;
      v907 = *v905;
      v908 = **(a3 + 16);
      if (v907 == 1)
      {
        *(*(v908 + 205976) - 8) += v906;
      }

      else
      {
        sub_24D769624((v908 + 205968), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v961 = *(a3 + 8);
      v962 = *(*a3 + 44) >> 49;
      v1229 = v962;
      v963 = *v961;
      v964 = **(a3 + 16);
      if (v963 == 1)
      {
        *(*(v964 + 206000) - 8) += v962;
      }

      else
      {
        sub_24D769624((v964 + 205992), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1013 = *(a3 + 8);
      v1014 = *(*a3 + 52) & 0x7FFF;
      v1229 = v1014;
      v1015 = *v1013;
      v1016 = **(a3 + 16);
      if (v1015 == 1)
      {
        *(*(v1016 + 206024) - 8) += v1014;
      }

      else
      {
        sub_24D769624((v1016 + 206016), &v1229);
      }

      break;
    case 16:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v13 = *(a3 + 8);
      v14 = *(*a3 + 20);
      v1229 = v14;
      v15 = *v13;
      v16 = **(a3 + 16);
      if (v15 == 1)
      {
        *(*(v16 + 206048) - 8) += v14;
      }

      else
      {
        sub_24D769624((v16 + 206040), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v97 = *(a3 + 8);
      v98 = *(*a3 + 22);
      v1229 = v98;
      v99 = *v97;
      v100 = **(a3 + 16);
      if (v99 == 1)
      {
        *(*(v100 + 206072) - 8) += v98;
      }

      else
      {
        sub_24D769624((v100 + 206064), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v185 = *(a3 + 8);
      v186 = *(*a3 + 24) & 0x1FFFF;
      v1229 = v186;
      v187 = *v185;
      v188 = **(a3 + 16);
      if (v187 == 1)
      {
        *(*(v188 + 206096) - 8) += v186;
      }

      else
      {
        sub_24D769624((v188 + 206088), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v273 = *(a3 + 8);
      v274 = *(*a3 + 28) & 0x1FFFFLL;
      v1229 = v274;
      v275 = *v273;
      v276 = **(a3 + 16);
      if (v275 == 1)
      {
        *(*(v276 + 206120) - 8) += v274;
      }

      else
      {
        sub_24D769624((v276 + 206112), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v357 = *(a3 + 8);
      v358 = *(*a3 + 32) & 0x1FFFF;
      v1229 = v358;
      v359 = *v357;
      v360 = **(a3 + 16);
      if (v359 == 1)
      {
        *(*(v360 + 206144) - 8) += v358;
      }

      else
      {
        sub_24D769624((v360 + 206136), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v441 = *(a3 + 8);
      v442 = *(*a3 + 36) & 0xFFFFFLL;
      v1229 = v442;
      v443 = *v441;
      v444 = **(a3 + 16);
      if (v443 == 1)
      {
        *(*(v444 + 206168) - 8) += v442;
      }

      else
      {
        sub_24D769624((v444 + 206160), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v525 = *(a3 + 8);
      v526 = *(*a3 + 40);
      v1229 = v526;
      v527 = *v525;
      v528 = **(a3 + 16);
      if (v527 == 1)
      {
        *(*(v528 + 206192) - 8) += v526;
      }

      else
      {
        sub_24D769624((v528 + 206184), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v605 = *(a3 + 8);
      v606 = HIWORD(*(*a3 + 36));
      v1229 = v606;
      v607 = *v605;
      v608 = **(a3 + 16);
      if (v607 == 1)
      {
        *(*(v608 + 206216) - 8) += v606;
      }

      else
      {
        sub_24D769624((v608 + 206208), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v681 = *(a3 + 8);
      v682 = *(*a3 + 44) & 0x1FFFFLL;
      v1229 = v682;
      v683 = *v681;
      v684 = **(a3 + 16);
      if (v683 == 1)
      {
        *(*(v684 + 206240) - 8) += v682;
      }

      else
      {
        sub_24D769624((v684 + 206232), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v757 = *(a3 + 8);
      v758 = *(*a3 + 44) >> 17;
      v1229 = v758;
      v759 = *v757;
      v760 = **(a3 + 16);
      if (v759 == 1)
      {
        *(*(v760 + 206264) - 8) += v758;
      }

      else
      {
        sub_24D769624((v760 + 206256), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v825 = *(a3 + 8);
      v826 = *(*a3 + 48) & 0x7FFF;
      v1229 = v826;
      v827 = *v825;
      v828 = **(a3 + 16);
      if (v827 == 1)
      {
        *(*(v828 + 206288) - 8) += v826;
      }

      else
      {
        sub_24D769624((v828 + 206280), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v885 = *(a3 + 8);
      v886 = HIWORD(*(*a3 + 44));
      v1229 = v886;
      v887 = *v885;
      v888 = **(a3 + 16);
      if (v887 == 1)
      {
        *(*(v888 + 206312) - 8) += v886;
      }

      else
      {
        sub_24D769624((v888 + 206304), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v941 = *(a3 + 8);
      v942 = *(*a3 + 52) & 0x1FFFFLL;
      v1229 = v942;
      v943 = *v941;
      v944 = **(a3 + 16);
      if (v943 == 1)
      {
        *(*(v944 + 206336) - 8) += v942;
      }

      else
      {
        sub_24D769624((v944 + 206328), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v997 = *(a3 + 8);
      v998 = *(*a3 + 52) >> 17;
      v1229 = v998;
      v999 = *v997;
      v1000 = **(a3 + 16);
      if (v999 == 1)
      {
        *(*(v1000 + 206360) - 8) += v998;
      }

      else
      {
        sub_24D769624((v1000 + 206352), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1049 = *(a3 + 8);
      v1050 = *(*a3 + 56) & 0x7FFF;
      v1229 = v1050;
      v1051 = *v1049;
      v1052 = **(a3 + 16);
      if (v1051 == 1)
      {
        *(*(v1052 + 206384) - 8) += v1050;
      }

      else
      {
        sub_24D769624((v1052 + 206376), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1093 = *(a3 + 8);
      v1094 = *(*a3 + 58) & 0x7FFF;
      v1229 = v1094;
      v1095 = *v1093;
      v1096 = **(a3 + 16);
      if (v1095 == 1)
      {
        *(*(v1096 + 206408) - 8) += v1094;
      }

      else
      {
        sub_24D769624((v1096 + 206400), &v1229);
      }

      break;
    case 17:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v57 = *(a3 + 8);
      v58 = *(*a3 + 20) & 0x3FFFFFLL;
      v1229 = v58;
      v59 = *v57;
      v60 = **(a3 + 16);
      if (v59 == 1)
      {
        *(*(v60 + 206432) - 8) += v58;
      }

      else
      {
        sub_24D769624((v60 + 206424), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v145 = *(a3 + 8);
      v146 = *(*a3 + 24) & 0x1FFFFF;
      v1229 = v146;
      v147 = *v145;
      v148 = **(a3 + 16);
      if (v147 == 1)
      {
        *(*(v148 + 206456) - 8) += v146;
      }

      else
      {
        sub_24D769624((v148 + 206448), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v233 = *(a3 + 8);
      v234 = *(*a3 + 28) & 0x3FFFFF;
      v1229 = v234;
      v235 = *v233;
      v236 = **(a3 + 16);
      if (v235 == 1)
      {
        *(*(v236 + 206480) - 8) += v234;
      }

      else
      {
        sub_24D769624((v236 + 206472), &v1229);
      }

      break;
    case 18:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v81 = *(a3 + 8);
      v82 = (*(*a3 + 20) >> 16) & 0x7FFFLL;
      v1229 = v82;
      v83 = *v81;
      v84 = **(a3 + 16);
      if (v83 == 1)
      {
        *(*(v84 + 206504) - 8) += v82;
      }

      else
      {
        sub_24D769624((v84 + 206496), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v169 = *(a3 + 8);
      v170 = *(*a3 + 24) & 0x7FFF;
      v1229 = v170;
      v171 = *v169;
      v172 = **(a3 + 16);
      if (v171 == 1)
      {
        *(*(v172 + 206528) - 8) += v170;
      }

      else
      {
        sub_24D769624((v172 + 206520), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v257 = *(a3 + 8);
      v258 = *(*a3 + 26) & 0x3FFF;
      v1229 = v258;
      v259 = *v257;
      v260 = **(a3 + 16);
      if (v259 == 1)
      {
        *(*(v260 + 206552) - 8) += v258;
      }

      else
      {
        sub_24D769624((v260 + 206544), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v341 = *(a3 + 8);
      v342 = *(*a3 + 28) & 0x3FFFLL;
      v1229 = v342;
      v343 = *v341;
      v344 = **(a3 + 16);
      if (v343 == 1)
      {
        *(*(v344 + 206576) - 8) += v342;
      }

      else
      {
        sub_24D769624((v344 + 206568), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v425 = *(a3 + 8);
      v426 = (*(*a3 + 28) >> 16) & 0x1FFFLL;
      v1229 = v426;
      v427 = *v425;
      v428 = **(a3 + 16);
      if (v427 == 1)
      {
        *(*(v428 + 206600) - 8) += v426;
      }

      else
      {
        sub_24D769624((v428 + 206592), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v509 = *(a3 + 8);
      v510 = *(*a3 + 32) & 0x1FFF;
      v1229 = v510;
      v511 = *v509;
      v512 = **(a3 + 16);
      if (v511 == 1)
      {
        *(*(v512 + 206624) - 8) += v510;
      }

      else
      {
        sub_24D769624((v512 + 206616), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v589 = *(a3 + 8);
      v590 = *(*a3 + 34) & 0x1FFF;
      v1229 = v590;
      v591 = *v589;
      v592 = **(a3 + 16);
      if (v591 == 1)
      {
        *(*(v592 + 206648) - 8) += v590;
      }

      else
      {
        sub_24D769624((v592 + 206640), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v665 = *(a3 + 8);
      v666 = *(*a3 + 36) & 0x3FFFFLL;
      v1229 = v666;
      v667 = *v665;
      v668 = **(a3 + 16);
      if (v667 == 1)
      {
        *(*(v668 + 206672) - 8) += v666;
      }

      else
      {
        sub_24D769624((v668 + 206664), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v741 = *(a3 + 8);
      v742 = *(*a3 + 40) & 0x3FFFF;
      v1229 = v742;
      v743 = *v741;
      v744 = **(a3 + 16);
      if (v743 == 1)
      {
        *(*(v744 + 206696) - 8) += v742;
      }

      else
      {
        sub_24D769624((v744 + 206688), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v809 = *(a3 + 8);
      v810 = *(*a3 + 44) & 0x3FFFFLL;
      v1229 = v810;
      v811 = *v809;
      v812 = **(a3 + 16);
      if (v811 == 1)
      {
        *(*(v812 + 206720) - 8) += v810;
      }

      else
      {
        sub_24D769624((v812 + 206712), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v873 = *(a3 + 8);
      v874 = *(*a3 + 48) & 0xFFFFF;
      v1229 = v874;
      v875 = *v873;
      v876 = **(a3 + 16);
      if (v875 == 1)
      {
        *(*(v876 + 206744) - 8) += v874;
      }

      else
      {
        sub_24D769624((v876 + 206736), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v929 = *(a3 + 8);
      v930 = *(*a3 + 52) & 0xFFFFFLL;
      v1229 = v930;
      v931 = *v929;
      v932 = **(a3 + 16);
      if (v931 == 1)
      {
        *(*(v932 + 206768) - 8) += v930;
      }

      else
      {
        sub_24D769624((v932 + 206760), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v985 = *(a3 + 8);
      v986 = *(*a3 + 56) & 0xFFFFF;
      v1229 = v986;
      v987 = *v985;
      v988 = **(a3 + 16);
      if (v987 == 1)
      {
        *(*(v988 + 206792) - 8) += v986;
      }

      else
      {
        sub_24D769624((v988 + 206784), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1037 = *(a3 + 8);
      v1038 = *(*a3 + 60) & 0xFFFFFLL;
      v1229 = v1038;
      v1039 = *v1037;
      v1040 = **(a3 + 16);
      if (v1039 == 1)
      {
        *(*(v1040 + 206816) - 8) += v1038;
      }

      else
      {
        sub_24D769624((v1040 + 206808), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1081 = *(a3 + 8);
      v1082 = *(*a3 + 64) & 0xFFFFF;
      v1229 = v1082;
      v1083 = *v1081;
      v1084 = **(a3 + 16);
      if (v1083 == 1)
      {
        *(*(v1084 + 206840) - 8) += v1082;
      }

      else
      {
        sub_24D769624((v1084 + 206832), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1121 = *(a3 + 8);
      v1122 = *(*a3 + 68) & 0xFFFFFLL;
      v1229 = v1122;
      v1123 = *v1121;
      v1124 = **(a3 + 16);
      if (v1123 == 1)
      {
        *(*(v1124 + 206864) - 8) += v1122;
      }

      else
      {
        sub_24D769624((v1124 + 206856), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1145 = *(a3 + 8);
      v1146 = *(*a3 + 72) & 0xFFFFF;
      v1229 = v1146;
      v1147 = *v1145;
      v1148 = **(a3 + 16);
      if (v1147 == 1)
      {
        *(*(v1148 + 206888) - 8) += v1146;
      }

      else
      {
        sub_24D769624((v1148 + 206880), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1165 = *(a3 + 8);
      v1166 = *(*a3 + 76) & 0xFFFFFLL;
      v1229 = v1166;
      v1167 = *v1165;
      v1168 = **(a3 + 16);
      if (v1167 == 1)
      {
        *(*(v1168 + 206912) - 8) += v1166;
      }

      else
      {
        sub_24D769624((v1168 + 206904), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1181 = *(a3 + 8);
      v1182 = *(*a3 + 80) & 0xFFFFF;
      v1229 = v1182;
      v1183 = *v1181;
      v1184 = **(a3 + 16);
      if (v1183 == 1)
      {
        *(*(v1184 + 206936) - 8) += v1182;
      }

      else
      {
        sub_24D769624((v1184 + 206928), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1197 = *(a3 + 8);
      v1198 = *(*a3 + 84) & 0xFFFFFLL;
      v1229 = v1198;
      v1199 = *v1197;
      v1200 = **(a3 + 16);
      if (v1199 == 1)
      {
        *(*(v1200 + 206960) - 8) += v1198;
      }

      else
      {
        sub_24D769624((v1200 + 206952), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1209 = *(a3 + 8);
      v1210 = *(*a3 + 88) & 0xFFFFF;
      v1229 = v1210;
      v1211 = *v1209;
      v1212 = **(a3 + 16);
      if (v1211 == 1)
      {
        *(*(v1212 + 206984) - 8) += v1210;
      }

      else
      {
        sub_24D769624((v1212 + 206976), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1221 = *(a3 + 8);
      v1222 = *(*a3 + 92) & 0xFFFFF;
      v1229 = v1222;
      v1223 = *v1221;
      v1224 = **(a3 + 16);
      if (v1223 == 1)
      {
        *(*(v1224 + 207008) - 8) += v1222;
      }

      else
      {
        sub_24D769624((v1224 + 207000), &v1229);
      }

      break;
    case 19:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v93 = *(a3 + 8);
      v94 = *(*a3 + 22);
      v1229 = v94;
      v95 = *v93;
      v96 = **(a3 + 16);
      if (v95 == 1)
      {
        *(*(v96 + 207032) - 8) += v94;
      }

      else
      {
        sub_24D769624((v96 + 207024), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v181 = *(a3 + 8);
      v182 = *(*a3 + 24);
      v1229 = v182;
      v183 = *v181;
      v184 = **(a3 + 16);
      if (v183 == 1)
      {
        *(*(v184 + 207056) - 8) += v182;
      }

      else
      {
        sub_24D769624((v184 + 207048), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v269 = *(a3 + 8);
      v270 = *(*a3 + 26) & 0x7FFF;
      v1229 = v270;
      v271 = *v269;
      v272 = **(a3 + 16);
      if (v271 == 1)
      {
        *(*(v272 + 207080) - 8) += v270;
      }

      else
      {
        sub_24D769624((v272 + 207072), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v353 = *(a3 + 8);
      v354 = *(*a3 + 28) & 0x7FFFLL;
      v1229 = v354;
      v355 = *v353;
      v356 = **(a3 + 16);
      if (v355 == 1)
      {
        *(*(v356 + 207104) - 8) += v354;
      }

      else
      {
        sub_24D769624((v356 + 207096), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v437 = *(a3 + 8);
      v438 = *(*a3 + 30);
      v1229 = v438;
      v439 = *v437;
      v440 = **(a3 + 16);
      if (v439 == 1)
      {
        *(*(v440 + 207128) - 8) += v438;
      }

      else
      {
        sub_24D769624((v440 + 207120), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v521 = *(a3 + 8);
      v522 = *(*a3 + 32);
      v1229 = v522;
      v523 = *v521;
      v524 = **(a3 + 16);
      if (v523 == 1)
      {
        *(*(v524 + 207152) - 8) += v522;
      }

      else
      {
        sub_24D769624((v524 + 207144), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v601 = *(a3 + 8);
      v602 = HIWORD(*(*a3 + 28));
      v1229 = v602;
      v603 = *v601;
      v604 = **(a3 + 16);
      if (v603 == 1)
      {
        *(*(v604 + 207176) - 8) += v602;
      }

      else
      {
        sub_24D769624((v604 + 207168), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v677 = *(a3 + 8);
      v678 = *(*a3 + 36);
      v1229 = v678;
      v679 = *v677;
      v680 = **(a3 + 16);
      if (v679 == 1)
      {
        *(*(v680 + 207200) - 8) += v678;
      }

      else
      {
        sub_24D769624((v680 + 207192), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v753 = *(a3 + 8);
      v754 = *(*a3 + 40) & 0x1FFFF;
      v1229 = v754;
      v755 = *v753;
      v756 = **(a3 + 16);
      if (v755 == 1)
      {
        *(*(v756 + 207224) - 8) += v754;
      }

      else
      {
        sub_24D769624((v756 + 207216), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v821 = *(a3 + 8);
      v822 = *(*a3 + 44) & 0x1FFFF;
      v1229 = v822;
      v823 = *v821;
      v824 = **(a3 + 16);
      if (v823 == 1)
      {
        *(*(v824 + 207248) - 8) += v822;
      }

      else
      {
        sub_24D769624((v824 + 207240), &v1229);
      }

      break;
    case 20:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v61 = *(a3 + 8);
      v62 = (*(*a3 + 20) >> 1) & 0x3FFFLL;
      v1229 = v62;
      v63 = *v61;
      v64 = **(a3 + 16);
      if (v63 == 1)
      {
        *(*(v64 + 207272) - 8) += v62;
      }

      else
      {
        sub_24D769624((v64 + 207264), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v149 = *(a3 + 8);
      v150 = (*(*a3 + 20) >> 16) & 0xFFFLL;
      v1229 = v150;
      v151 = *v149;
      v152 = **(a3 + 16);
      if (v151 == 1)
      {
        *(*(v152 + 207296) - 8) += v150;
      }

      else
      {
        sub_24D769624((v152 + 207288), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v237 = *(a3 + 8);
      v238 = *(*a3 + 24) & 0xFFF;
      v1229 = v238;
      v239 = *v237;
      v240 = **(a3 + 16);
      if (v239 == 1)
      {
        *(*(v240 + 207320) - 8) += v238;
      }

      else
      {
        sub_24D769624((v240 + 207312), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v321 = *(a3 + 8);
      v322 = *(*a3 + 26) & 0xFFF;
      v1229 = v322;
      v323 = *v321;
      v324 = **(a3 + 16);
      if (v323 == 1)
      {
        *(*(v324 + 207344) - 8) += v322;
      }

      else
      {
        sub_24D769624((v324 + 207336), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v405 = *(a3 + 8);
      v406 = *(*a3 + 28) & 0xFFFLL;
      v1229 = v406;
      v407 = *v405;
      v408 = **(a3 + 16);
      if (v407 == 1)
      {
        *(*(v408 + 207368) - 8) += v406;
      }

      else
      {
        sub_24D769624((v408 + 207360), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v489 = *(a3 + 8);
      v490 = (*(*a3 + 28) >> 16) & 0xFFFLL;
      v1229 = v490;
      v491 = *v489;
      v492 = **(a3 + 16);
      if (v491 == 1)
      {
        *(*(v492 + 207392) - 8) += v490;
      }

      else
      {
        sub_24D769624((v492 + 207384), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v569 = *(a3 + 8);
      v570 = *(*a3 + 32) & 0xFFF;
      v1229 = v570;
      v571 = *v569;
      v572 = **(a3 + 16);
      if (v571 == 1)
      {
        *(*(v572 + 207416) - 8) += v570;
      }

      else
      {
        sub_24D769624((v572 + 207408), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v645 = *(a3 + 8);
      v646 = *(*a3 + 34) & 0xFFF;
      v1229 = v646;
      v647 = *v645;
      v648 = **(a3 + 16);
      if (v647 == 1)
      {
        *(*(v648 + 207440) - 8) += v646;
      }

      else
      {
        sub_24D769624((v648 + 207432), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v721 = *(a3 + 8);
      v722 = *(*a3 + 36) & 0xFFF;
      v1229 = v722;
      v723 = *v721;
      v724 = **(a3 + 16);
      if (v723 == 1)
      {
        *(*(v724 + 207464) - 8) += v722;
      }

      else
      {
        sub_24D769624((v724 + 207456), &v1229);
      }

      break;
    case 21:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v69 = *(a3 + 8);
      v70 = *(*a3 + 22);
      v1229 = v70;
      v71 = *v69;
      v72 = **(a3 + 16);
      if (v71 == 1)
      {
        *(*(v72 + 207488) - 8) += v70;
      }

      else
      {
        sub_24D769624((v72 + 207480), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v157 = *(a3 + 8);
      v158 = *(*a3 + 24);
      v1229 = v158;
      v159 = *v157;
      v160 = **(a3 + 16);
      if (v159 == 1)
      {
        *(*(v160 + 207512) - 8) += v158;
      }

      else
      {
        sub_24D769624((v160 + 207504), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v245 = *(a3 + 8);
      v246 = HIWORD(*(*a3 + 20));
      v1229 = v246;
      v247 = *v245;
      v248 = **(a3 + 16);
      if (v247 == 1)
      {
        *(*(v248 + 207536) - 8) += v246;
      }

      else
      {
        sub_24D769624((v248 + 207528), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v329 = *(a3 + 8);
      v330 = *(*a3 + 28);
      v1229 = v330;
      v331 = *v329;
      v332 = **(a3 + 16);
      if (v331 == 1)
      {
        *(*(v332 + 207560) - 8) += v330;
      }

      else
      {
        sub_24D769624((v332 + 207552), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v413 = *(a3 + 8);
      v414 = *(*a3 + 30);
      v1229 = v414;
      v415 = *v413;
      v416 = **(a3 + 16);
      if (v415 == 1)
      {
        *(*(v416 + 207584) - 8) += v414;
      }

      else
      {
        sub_24D769624((v416 + 207576), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v497 = *(a3 + 8);
      v498 = *(*a3 + 32);
      v1229 = v498;
      v499 = *v497;
      v500 = **(a3 + 16);
      if (v499 == 1)
      {
        *(*(v500 + 207608) - 8) += v498;
      }

      else
      {
        sub_24D769624((v500 + 207600), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v577 = *(a3 + 8);
      v578 = HIWORD(*(*a3 + 28));
      v1229 = v578;
      v579 = *v577;
      v580 = **(a3 + 16);
      if (v579 == 1)
      {
        *(*(v580 + 207632) - 8) += v578;
      }

      else
      {
        sub_24D769624((v580 + 207624), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v653 = *(a3 + 8);
      v654 = *(*a3 + 36);
      v1229 = v654;
      v655 = *v653;
      v656 = **(a3 + 16);
      if (v655 == 1)
      {
        *(*(v656 + 207656) - 8) += v654;
      }

      else
      {
        sub_24D769624((v656 + 207648), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v729 = *(a3 + 8);
      v730 = *(*a3 + 38);
      v1229 = v730;
      v731 = *v729;
      v732 = **(a3 + 16);
      if (v731 == 1)
      {
        *(*(v732 + 207680) - 8) += v730;
      }

      else
      {
        sub_24D769624((v732 + 207672), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v797 = *(a3 + 8);
      v798 = *(*a3 + 40);
      v1229 = v798;
      v799 = *v797;
      v800 = **(a3 + 16);
      if (v799 == 1)
      {
        *(*(v800 + 207704) - 8) += v798;
      }

      else
      {
        sub_24D769624((v800 + 207696), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v865 = *(a3 + 8);
      v866 = HIWORD(*(*a3 + 36));
      v1229 = v866;
      v867 = *v865;
      v868 = **(a3 + 16);
      if (v867 == 1)
      {
        *(*(v868 + 207728) - 8) += v866;
      }

      else
      {
        sub_24D769624((v868 + 207720), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v925 = *(a3 + 8);
      v926 = *(*a3 + 44);
      v1229 = v926;
      v927 = *v925;
      v928 = **(a3 + 16);
      if (v927 == 1)
      {
        *(*(v928 + 207752) - 8) += v926;
      }

      else
      {
        sub_24D769624((v928 + 207744), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v981 = *(a3 + 8);
      v982 = *(*a3 + 46);
      v1229 = v982;
      v983 = *v981;
      v984 = **(a3 + 16);
      if (v983 == 1)
      {
        *(*(v984 + 207776) - 8) += v982;
      }

      else
      {
        sub_24D769624((v984 + 207768), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1033 = *(a3 + 8);
      v1034 = *(*a3 + 48) & 0xFFFFF;
      v1229 = v1034;
      v1035 = *v1033;
      v1036 = **(a3 + 16);
      if (v1035 == 1)
      {
        *(*(v1036 + 207800) - 8) += v1034;
      }

      else
      {
        sub_24D769624((v1036 + 207792), &v1229);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v1077 = *(a3 + 8);
      v1078 = *(*a3 + 52) & 0x7FFFF;
      v1229 = v1078;
      v1079 = *v1077;
      v1080 = **(a3 + 16);
      if (v1079 == 1)
      {
        *(*(v1080 + 207824) - 8) += v1078;
      }

      else
      {
        sub_24D769624((v1080 + 207816), &v1229);
      }

      break;
    default:
      return;
  }
}

void sub_24D850E18(int a1, uint64_t a2, int8x8_t a3)
{
  switch(a1)
  {
    case 0:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 1u, **(a2 + 16), v4);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 2u, **(a2 + 16), v5);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 3u, **(a2 + 16), v6);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 4u, **(a2 + 16), v7);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 5u, **(a2 + 16), v8);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 6u, **(a2 + 16), v9);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 7u, **(a2 + 16), v10);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                      {
                        sub_24D854AC0(*(a2 + 8), 8u, **(a2 + 16), v11);
                        ++**(a2 + 16);
                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                        {
                          sub_24D854AC0(*(a2 + 8), 9u, **(a2 + 16), v12);
                          ++**(a2 + 16);
                          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                          {
                            sub_24D854AC0(*(a2 + 8), 0xAu, **(a2 + 16), v13);
                            ++**(a2 + 16);
                            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                            {
                              sub_24D854AC0(*(a2 + 8), 0xBu, **(a2 + 16), v14);
                              ++**(a2 + 16);
                              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                              {
                                sub_24D854AC0(*(a2 + 8), 0xCu, **(a2 + 16), v15);
                                ++**(a2 + 16);
                                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                {
                                  sub_24D854AC0(*(a2 + 8), 0xDu, **(a2 + 16), v16);
                                  ++**(a2 + 16);
                                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                  {
                                    sub_24D854AC0(*(a2 + 8), 0xEu, **(a2 + 16), v17);
                                    ++**(a2 + 16);
                                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                    {
                                      sub_24D854AC0(*(a2 + 8), 0xFu, **(a2 + 16), v18);
                                      ++**(a2 + 16);
                                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                      {
                                        sub_24D854AC0(*(a2 + 8), 0x10u, **(a2 + 16), v19);
                                        ++**(a2 + 16);
                                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                        {
                                          sub_24D854AC0(*(a2 + 8), 0x11u, **(a2 + 16), v20);
                                          ++**(a2 + 16);
                                          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                          {
                                            sub_24D854AC0(*(a2 + 8), 0x12u, **(a2 + 16), v21);
                                            ++**(a2 + 16);
                                            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                            {
                                              sub_24D854AC0(*(a2 + 8), 0x13u, **(a2 + 16), v22);
                                              ++**(a2 + 16);
                                              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                              {
                                                sub_24D854AC0(*(a2 + 8), 0x14u, **(a2 + 16), v23);
                                                ++**(a2 + 16);
                                                if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                                                {
                                                  v25 = 21;
                                                  goto LABEL_203;
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
                  }
                }
              }
            }
          }
        }
      }

      break;
    case 1:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0x16u, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0x17u, **(a2 + 16), v155);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0x18u, **(a2 + 16), v156);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0x19u, **(a2 + 16), v157);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0x1Au, **(a2 + 16), v158);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0x1Bu, **(a2 + 16), v159);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 0x1Cu, **(a2 + 16), v160);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 0x1Du, **(a2 + 16), v161);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                      {
                        sub_24D854AC0(*(a2 + 8), 0x1Eu, **(a2 + 16), v162);
                        ++**(a2 + 16);
                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                        {
                          sub_24D854AC0(*(a2 + 8), 0x1Fu, **(a2 + 16), v163);
                          ++**(a2 + 16);
                          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                          {
                            sub_24D854AC0(*(a2 + 8), 0x20u, **(a2 + 16), v164);
                            ++**(a2 + 16);
                            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                            {
                              sub_24D854AC0(*(a2 + 8), 0x21u, **(a2 + 16), v165);
                              ++**(a2 + 16);
                              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                              {
                                sub_24D854AC0(*(a2 + 8), 0x22u, **(a2 + 16), v166);
                                ++**(a2 + 16);
                                if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                                {
                                  v25 = 35;
                                  goto LABEL_203;
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

      break;
    case 2:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0x24u, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0x25u, **(a2 + 16), v90);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0x26u, **(a2 + 16), v91);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0x27u, **(a2 + 16), v92);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0x28u, **(a2 + 16), v93);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0x29u, **(a2 + 16), v94);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 0x2Au, **(a2 + 16), v95);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 0x2Bu, **(a2 + 16), v96);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                      {
                        sub_24D854AC0(*(a2 + 8), 0x2Cu, **(a2 + 16), v97);
                        ++**(a2 + 16);
                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                        {
                          sub_24D854AC0(*(a2 + 8), 0x2Du, **(a2 + 16), v98);
                          ++**(a2 + 16);
                          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                          {
                            sub_24D854AC0(*(a2 + 8), 0x2Eu, **(a2 + 16), v99);
                            ++**(a2 + 16);
                            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                            {
                              sub_24D854AC0(*(a2 + 8), 0x2Fu, **(a2 + 16), v100);
                              ++**(a2 + 16);
                              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                              {
                                sub_24D854AC0(*(a2 + 8), 0x30u, **(a2 + 16), v101);
                                ++**(a2 + 16);
                                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                {
                                  sub_24D854AC0(*(a2 + 8), 0x31u, **(a2 + 16), v102);
                                  ++**(a2 + 16);
                                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                  {
                                    sub_24D854AC0(*(a2 + 8), 0x32u, **(a2 + 16), v103);
                                    ++**(a2 + 16);
                                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                    {
                                      sub_24D854AC0(*(a2 + 8), 0x33u, **(a2 + 16), v104);
                                      ++**(a2 + 16);
                                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                      {
                                        sub_24D854AC0(*(a2 + 8), 0x34u, **(a2 + 16), v105);
                                        ++**(a2 + 16);
                                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                        {
                                          sub_24D854AC0(*(a2 + 8), 0x35u, **(a2 + 16), v106);
                                          ++**(a2 + 16);
                                          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                          {
                                            sub_24D854AC0(*(a2 + 8), 0x36u, **(a2 + 16), v107);
                                            ++**(a2 + 16);
                                            if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                                            {
                                              v25 = 55;
                                              goto LABEL_203;
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
              }
            }
          }
        }
      }

      break;
    case 3:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0x38u, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0x39u, **(a2 + 16), v120);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0x3Au, **(a2 + 16), v121);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0x3Bu, **(a2 + 16), v122);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0x3Cu, **(a2 + 16), v123);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0x3Du, **(a2 + 16), v124);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 0x3Eu, **(a2 + 16), v125);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 0x3Fu, **(a2 + 16), v126);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                      {
                        sub_24D854AC0(*(a2 + 8), 0x40u, **(a2 + 16), v127);
                        ++**(a2 + 16);
                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                        {
                          sub_24D854AC0(*(a2 + 8), 0x41u, **(a2 + 16), v128);
                          ++**(a2 + 16);
                          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                          {
                            sub_24D854AC0(*(a2 + 8), 0x42u, **(a2 + 16), v129);
                            ++**(a2 + 16);
                            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                            {
                              sub_24D854AC0(*(a2 + 8), 0x43u, **(a2 + 16), v130);
                              ++**(a2 + 16);
                              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                              {
                                sub_24D854AC0(*(a2 + 8), 0x44u, **(a2 + 16), v131);
                                ++**(a2 + 16);
                                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                {
                                  sub_24D854AC0(*(a2 + 8), 0x45u, **(a2 + 16), v132);
                                  ++**(a2 + 16);
                                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                  {
                                    sub_24D854AC0(*(a2 + 8), 0x46u, **(a2 + 16), v133);
                                    ++**(a2 + 16);
                                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                    {
                                      sub_24D854AC0(*(a2 + 8), 0x47u, **(a2 + 16), v134);
                                      ++**(a2 + 16);
                                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                      {
                                        sub_24D854AC0(*(a2 + 8), 0x48u, **(a2 + 16), v135);
                                        ++**(a2 + 16);
                                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                        {
                                          sub_24D854AC0(*(a2 + 8), 0x49u, **(a2 + 16), v136);
                                          ++**(a2 + 16);
                                          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                          {
                                            sub_24D854AC0(*(a2 + 8), 0x4Au, **(a2 + 16), v137);
                                            ++**(a2 + 16);
                                            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                            {
                                              sub_24D854AC0(*(a2 + 8), 0x4Bu, **(a2 + 16), v138);
                                              ++**(a2 + 16);
                                              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                              {
                                                sub_24D854AC0(*(a2 + 8), 0x4Cu, **(a2 + 16), v139);
                                                ++**(a2 + 16);
                                                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                                {
                                                  sub_24D854AC0(*(a2 + 8), 0x4Du, **(a2 + 16), v140);
                                                  ++**(a2 + 16);
                                                  if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                                                  {
                                                    v25 = 78;
                                                    goto LABEL_203;
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
                    }
                  }
                }
              }
            }
          }
        }
      }

      break;
    case 4:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0x4Fu, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0x50u, **(a2 + 16), v65);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0x51u, **(a2 + 16), v66);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0x52u, **(a2 + 16), v67);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0x53u, **(a2 + 16), v68);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0x54u, **(a2 + 16), v69);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 0x55u, **(a2 + 16), v70);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 0x56u, **(a2 + 16), v71);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                      {
                        sub_24D854AC0(*(a2 + 8), 0x57u, **(a2 + 16), v72);
                        ++**(a2 + 16);
                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                        {
                          sub_24D854AC0(*(a2 + 8), 0x58u, **(a2 + 16), v73);
                          ++**(a2 + 16);
                          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                          {
                            sub_24D854AC0(*(a2 + 8), 0x59u, **(a2 + 16), v74);
                            ++**(a2 + 16);
                            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                            {
                              sub_24D854AC0(*(a2 + 8), 0x5Au, **(a2 + 16), v75);
                              ++**(a2 + 16);
                              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                              {
                                sub_24D854AC0(*(a2 + 8), 0x5Bu, **(a2 + 16), v76);
                                ++**(a2 + 16);
                                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                {
                                  sub_24D854AC0(*(a2 + 8), 0x5Cu, **(a2 + 16), v77);
                                  ++**(a2 + 16);
                                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                  {
                                    sub_24D854AC0(*(a2 + 8), 0x5Du, **(a2 + 16), v78);
                                    ++**(a2 + 16);
                                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                    {
                                      sub_24D854AC0(*(a2 + 8), 0x5Eu, **(a2 + 16), v79);
                                      ++**(a2 + 16);
                                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                      {
                                        sub_24D854AC0(*(a2 + 8), 0x5Fu, **(a2 + 16), v80);
                                        ++**(a2 + 16);
                                        if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                                        {
                                          v25 = 96;
                                          goto LABEL_203;
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
          }
        }
      }

      break;
    case 5:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0x61u, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0x62u, **(a2 + 16), v175);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0x63u, **(a2 + 16), v176);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0x64u, **(a2 + 16), v177);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0x65u, **(a2 + 16), v178);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0x66u, **(a2 + 16), v179);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 0x67u, **(a2 + 16), v180);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 0x68u, **(a2 + 16), v181);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                      {
                        v25 = 105;
                        goto LABEL_203;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      break;
    case 6:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0x6Au, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0x6Bu, **(a2 + 16), v204);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0x6Cu, **(a2 + 16), v205);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0x6Du, **(a2 + 16), v206);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0x6Eu, **(a2 + 16), v207);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0x6Fu, **(a2 + 16), v208);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 0x70u, **(a2 + 16), v209);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 0x71u, **(a2 + 16), v210);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                      {
                        sub_24D854AC0(*(a2 + 8), 0x72u, **(a2 + 16), v211);
                        ++**(a2 + 16);
                        if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                        {
                          v25 = 115;
                          goto LABEL_203;
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

      break;
    case 7:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0x74u, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0x75u, **(a2 + 16), v141);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0x76u, **(a2 + 16), v142);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0x77u, **(a2 + 16), v143);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0x78u, **(a2 + 16), v144);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0x79u, **(a2 + 16), v145);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 0x7Au, **(a2 + 16), v146);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 0x7Bu, **(a2 + 16), v147);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                      {
                        sub_24D854AC0(*(a2 + 8), 0x7Cu, **(a2 + 16), v148);
                        ++**(a2 + 16);
                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                        {
                          sub_24D854AC0(*(a2 + 8), 0x7Du, **(a2 + 16), v149);
                          ++**(a2 + 16);
                          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                          {
                            sub_24D854AC0(*(a2 + 8), 0x7Eu, **(a2 + 16), v150);
                            ++**(a2 + 16);
                            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                            {
                              sub_24D854AC0(*(a2 + 8), 0x7Fu, **(a2 + 16), v151);
                              ++**(a2 + 16);
                              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                              {
                                sub_24D854AC0(*(a2 + 8), 0x80u, **(a2 + 16), v152);
                                ++**(a2 + 16);
                                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                {
                                  sub_24D854AC0(*(a2 + 8), 0x81u, **(a2 + 16), v153);
                                  ++**(a2 + 16);
                                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                  {
                                    sub_24D854AC0(*(a2 + 8), 0x82u, **(a2 + 16), v154);
                                    ++**(a2 + 16);
                                    if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                                    {
                                      v25 = 131;
                                      goto LABEL_203;
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
      }

      break;
    case 8:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0x84u, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0x85u, **(a2 + 16), v246);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0x86u, **(a2 + 16), v247);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0x87u, **(a2 + 16), v248);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0x88u, **(a2 + 16), v249);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0x89u, **(a2 + 16), v250);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 0x8Au, **(a2 + 16), v251);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 0x8Bu, **(a2 + 16), v252);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                      {
                        sub_24D854AC0(*(a2 + 8), 0x8Cu, **(a2 + 16), v253);
                        ++**(a2 + 16);
                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                        {
                          sub_24D854AC0(*(a2 + 8), 0x8Du, **(a2 + 16), v254);
                          ++**(a2 + 16);
                          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                          {
                            sub_24D854AC0(*(a2 + 8), 0x8Eu, **(a2 + 16), v255);
                            ++**(a2 + 16);
                            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                            {
                              sub_24D854AC0(*(a2 + 8), 0x8Fu, **(a2 + 16), v256);
                              ++**(a2 + 16);
                              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                              {
                                sub_24D854AC0(*(a2 + 8), 0x90u, **(a2 + 16), v257);
                                ++**(a2 + 16);
                                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                {
                                  sub_24D854AC0(*(a2 + 8), 0x91u, **(a2 + 16), v258);
                                  ++**(a2 + 16);
                                  if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                                  {
                                    v25 = 146;
                                    goto LABEL_203;
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

      break;
    case 9:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0x93u, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0x94u, **(a2 + 16), v86);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0x95u, **(a2 + 16), v87);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0x96u, **(a2 + 16), v88);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0x97u, **(a2 + 16), v89);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                {
                  v25 = 152;
                  goto LABEL_203;
                }
              }
            }
          }
        }
      }

      break;
    case 10:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0x99u, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0x9Au, **(a2 + 16), v232);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0x9Bu, **(a2 + 16), v233);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0x9Cu, **(a2 + 16), v234);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0x9Du, **(a2 + 16), v235);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0x9Eu, **(a2 + 16), v236);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 0x9Fu, **(a2 + 16), v237);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 0xA0u, **(a2 + 16), v238);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                      {
                        sub_24D854AC0(*(a2 + 8), 0xA1u, **(a2 + 16), v239);
                        ++**(a2 + 16);
                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                        {
                          sub_24D854AC0(*(a2 + 8), 0xA2u, **(a2 + 16), v240);
                          ++**(a2 + 16);
                          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                          {
                            sub_24D854AC0(*(a2 + 8), 0xA3u, **(a2 + 16), v241);
                            ++**(a2 + 16);
                            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                            {
                              sub_24D854AC0(*(a2 + 8), 0xA4u, **(a2 + 16), v242);
                              ++**(a2 + 16);
                              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                              {
                                sub_24D854AC0(*(a2 + 8), 0xA5u, **(a2 + 16), v243);
                                ++**(a2 + 16);
                                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                {
                                  sub_24D854AC0(*(a2 + 8), 0xA6u, **(a2 + 16), v244);
                                  ++**(a2 + 16);
                                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                  {
                                    sub_24D854AC0(*(a2 + 8), 0xA7u, **(a2 + 16), v245);
                                    ++**(a2 + 16);
                                    if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                                    {
                                      v25 = 168;
                                      goto LABEL_203;
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
      }

      break;
    case 11:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0xA9u, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0xAAu, **(a2 + 16), v51);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0xABu, **(a2 + 16), v52);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0xACu, **(a2 + 16), v53);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0xADu, **(a2 + 16), v54);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0xAEu, **(a2 + 16), v55);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 0xAFu, **(a2 + 16), v56);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 0xB0u, **(a2 + 16), v57);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                      {
                        sub_24D854AC0(*(a2 + 8), 0xB1u, **(a2 + 16), v58);
                        ++**(a2 + 16);
                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                        {
                          sub_24D854AC0(*(a2 + 8), 0xB2u, **(a2 + 16), v59);
                          ++**(a2 + 16);
                          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                          {
                            sub_24D854AC0(*(a2 + 8), 0xB3u, **(a2 + 16), v60);
                            ++**(a2 + 16);
                            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                            {
                              sub_24D854AC0(*(a2 + 8), 0xB4u, **(a2 + 16), v61);
                              ++**(a2 + 16);
                              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                              {
                                sub_24D854AC0(*(a2 + 8), 0xB5u, **(a2 + 16), v62);
                                ++**(a2 + 16);
                                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                {
                                  sub_24D854AC0(*(a2 + 8), 0xB6u, **(a2 + 16), v63);
                                  ++**(a2 + 16);
                                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                  {
                                    sub_24D854AC0(*(a2 + 8), 0xB7u, **(a2 + 16), v64);
                                    ++**(a2 + 16);
                                    if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                                    {
                                      v25 = 184;
                                      goto LABEL_203;
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
      }

      break;
    case 12:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0xB9u, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0xBAu, **(a2 + 16), v81);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0xBBu, **(a2 + 16), v82);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0xBCu, **(a2 + 16), v83);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0xBDu, **(a2 + 16), v84);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0xBEu, **(a2 + 16), v85);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                  {
                    v25 = 191;
                    goto LABEL_203;
                  }
                }
              }
            }
          }
        }
      }

      break;
    case 13:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0xC0u, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0xC1u, **(a2 + 16), v195);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0xC2u, **(a2 + 16), v196);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0xC3u, **(a2 + 16), v197);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0xC4u, **(a2 + 16), v198);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0xC5u, **(a2 + 16), v199);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 0xC6u, **(a2 + 16), v200);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 0xC7u, **(a2 + 16), v201);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                      {
                        sub_24D854AC0(*(a2 + 8), 0xC8u, **(a2 + 16), v202);
                        ++**(a2 + 16);
                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                        {
                          sub_24D854AC0(*(a2 + 8), 0xC9u, **(a2 + 16), v203);
                          ++**(a2 + 16);
                          if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                          {
                            v25 = 202;
                            goto LABEL_203;
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

      break;
    case 14:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0xCBu, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0xCCu, **(a2 + 16), v40);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0xCDu, **(a2 + 16), v41);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0xCEu, **(a2 + 16), v42);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0xCFu, **(a2 + 16), v43);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0xD0u, **(a2 + 16), v44);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 0xD1u, **(a2 + 16), v45);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 0xD2u, **(a2 + 16), v46);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                      {
                        sub_24D854AC0(*(a2 + 8), 0xD3u, **(a2 + 16), v47);
                        ++**(a2 + 16);
                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                        {
                          sub_24D854AC0(*(a2 + 8), 0xD4u, **(a2 + 16), v48);
                          ++**(a2 + 16);
                          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                          {
                            sub_24D854AC0(*(a2 + 8), 0xD5u, **(a2 + 16), v49);
                            ++**(a2 + 16);
                            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                            {
                              sub_24D854AC0(*(a2 + 8), 0xD6u, **(a2 + 16), v50);
                              ++**(a2 + 16);
                              if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                              {
                                v25 = 215;
                                goto LABEL_203;
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

      break;
    case 15:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0xD8u, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0xD9u, **(a2 + 16), v108);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0xDAu, **(a2 + 16), v109);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0xDBu, **(a2 + 16), v110);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0xDCu, **(a2 + 16), v111);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0xDDu, **(a2 + 16), v112);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 0xDEu, **(a2 + 16), v113);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 0xDFu, **(a2 + 16), v114);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                      {
                        sub_24D854AC0(*(a2 + 8), 0xE0u, **(a2 + 16), v115);
                        ++**(a2 + 16);
                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                        {
                          sub_24D854AC0(*(a2 + 8), 0xE1u, **(a2 + 16), v116);
                          ++**(a2 + 16);
                          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                          {
                            sub_24D854AC0(*(a2 + 8), 0xE2u, **(a2 + 16), v117);
                            ++**(a2 + 16);
                            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                            {
                              sub_24D854AC0(*(a2 + 8), 0xE3u, **(a2 + 16), v118);
                              ++**(a2 + 16);
                              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                              {
                                sub_24D854AC0(*(a2 + 8), 0xE4u, **(a2 + 16), v119);
                                ++**(a2 + 16);
                                if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                                {
                                  v25 = 229;
                                  goto LABEL_203;
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

      break;
    case 16:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0xE6u, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0xE7u, **(a2 + 16), v26);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0xE8u, **(a2 + 16), v27);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0xE9u, **(a2 + 16), v28);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0xEAu, **(a2 + 16), v29);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0xEBu, **(a2 + 16), v30);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 0xECu, **(a2 + 16), v31);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 0xEDu, **(a2 + 16), v32);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                      {
                        sub_24D854AC0(*(a2 + 8), 0xEEu, **(a2 + 16), v33);
                        ++**(a2 + 16);
                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                        {
                          sub_24D854AC0(*(a2 + 8), 0xEFu, **(a2 + 16), v34);
                          ++**(a2 + 16);
                          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                          {
                            sub_24D854AC0(*(a2 + 8), 0xF0u, **(a2 + 16), v35);
                            ++**(a2 + 16);
                            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                            {
                              sub_24D854AC0(*(a2 + 8), 0xF1u, **(a2 + 16), v36);
                              ++**(a2 + 16);
                              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                              {
                                sub_24D854AC0(*(a2 + 8), 0xF2u, **(a2 + 16), v37);
                                ++**(a2 + 16);
                                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                {
                                  sub_24D854AC0(*(a2 + 8), 0xF3u, **(a2 + 16), v38);
                                  ++**(a2 + 16);
                                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                  {
                                    sub_24D854AC0(*(a2 + 8), 0xF4u, **(a2 + 16), v39);
                                    ++**(a2 + 16);
                                    if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                                    {
                                      v25 = 245;
                                      goto LABEL_203;
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
      }

      break;
    case 17:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0xF6u, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0xF7u, **(a2 + 16), v167);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
          {
            v25 = 248;
            goto LABEL_203;
          }
        }
      }

      break;
    case 18:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0xF9u, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0xFAu, **(a2 + 16), v212);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0xFBu, **(a2 + 16), v213);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0xFCu, **(a2 + 16), v214);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0xFDu, **(a2 + 16), v215);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0xFEu, **(a2 + 16), v216);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 0xFFu, **(a2 + 16), v217);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 0x100u, **(a2 + 16), v218);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                      {
                        sub_24D854AC0(*(a2 + 8), 0x101u, **(a2 + 16), v219);
                        ++**(a2 + 16);
                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                        {
                          sub_24D854AC0(*(a2 + 8), 0x102u, **(a2 + 16), v220);
                          ++**(a2 + 16);
                          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                          {
                            sub_24D854AC0(*(a2 + 8), 0x103u, **(a2 + 16), v221);
                            ++**(a2 + 16);
                            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                            {
                              sub_24D854AC0(*(a2 + 8), 0x104u, **(a2 + 16), v222);
                              ++**(a2 + 16);
                              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                              {
                                sub_24D854AC0(*(a2 + 8), 0x105u, **(a2 + 16), v223);
                                ++**(a2 + 16);
                                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                {
                                  sub_24D854AC0(*(a2 + 8), 0x106u, **(a2 + 16), v224);
                                  ++**(a2 + 16);
                                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                  {
                                    sub_24D854AC0(*(a2 + 8), 0x107u, **(a2 + 16), v225);
                                    ++**(a2 + 16);
                                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                    {
                                      sub_24D854AC0(*(a2 + 8), 0x108u, **(a2 + 16), v226);
                                      ++**(a2 + 16);
                                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                      {
                                        sub_24D854AC0(*(a2 + 8), 0x109u, **(a2 + 16), v227);
                                        ++**(a2 + 16);
                                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                        {
                                          sub_24D854AC0(*(a2 + 8), 0x10Au, **(a2 + 16), v228);
                                          ++**(a2 + 16);
                                          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                          {
                                            sub_24D854AC0(*(a2 + 8), 0x10Bu, **(a2 + 16), v229);
                                            ++**(a2 + 16);
                                            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                            {
                                              sub_24D854AC0(*(a2 + 8), 0x10Cu, **(a2 + 16), v230);
                                              ++**(a2 + 16);
                                              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                              {
                                                sub_24D854AC0(*(a2 + 8), 0x10Du, **(a2 + 16), v231);
                                                ++**(a2 + 16);
                                                if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                                                {
                                                  v25 = 270;
                                                  goto LABEL_203;
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
                  }
                }
              }
            }
          }
        }
      }

      break;
    case 19:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0x10Fu, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0x110u, **(a2 + 16), v259);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0x111u, **(a2 + 16), v260);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0x112u, **(a2 + 16), v261);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0x113u, **(a2 + 16), v262);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0x114u, **(a2 + 16), v263);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 0x115u, **(a2 + 16), v264);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 0x116u, **(a2 + 16), v265);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                      {
                        sub_24D854AC0(*(a2 + 8), 0x117u, **(a2 + 16), v266);
                        ++**(a2 + 16);
                        if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                        {
                          v25 = 280;
                          goto LABEL_203;
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

      break;
    case 20:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0x119u, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0x11Au, **(a2 + 16), v168);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0x11Bu, **(a2 + 16), v169);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0x11Cu, **(a2 + 16), v170);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0x11Du, **(a2 + 16), v171);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0x11Eu, **(a2 + 16), v172);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 0x11Fu, **(a2 + 16), v173);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 0x120u, **(a2 + 16), v174);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) < 0xFFFFFFFE)
                      {
                        v25 = 289;
                        goto LABEL_203;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      break;
    case 21:
      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        sub_24D854AC0(*(a2 + 8), 0x122u, **(a2 + 16), a3);
        ++**(a2 + 16);
        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
        {
          sub_24D854AC0(*(a2 + 8), 0x123u, **(a2 + 16), v182);
          ++**(a2 + 16);
          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
          {
            sub_24D854AC0(*(a2 + 8), 0x124u, **(a2 + 16), v183);
            ++**(a2 + 16);
            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
            {
              sub_24D854AC0(*(a2 + 8), 0x125u, **(a2 + 16), v184);
              ++**(a2 + 16);
              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
              {
                sub_24D854AC0(*(a2 + 8), 0x126u, **(a2 + 16), v185);
                ++**(a2 + 16);
                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                {
                  sub_24D854AC0(*(a2 + 8), 0x127u, **(a2 + 16), v186);
                  ++**(a2 + 16);
                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                  {
                    sub_24D854AC0(*(a2 + 8), 0x128u, **(a2 + 16), v187);
                    ++**(a2 + 16);
                    if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                    {
                      sub_24D854AC0(*(a2 + 8), 0x129u, **(a2 + 16), v188);
                      ++**(a2 + 16);
                      if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                      {
                        sub_24D854AC0(*(a2 + 8), 0x12Au, **(a2 + 16), v189);
                        ++**(a2 + 16);
                        if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                        {
                          sub_24D854AC0(*(a2 + 8), 0x12Bu, **(a2 + 16), v190);
                          ++**(a2 + 16);
                          if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                          {
                            sub_24D854AC0(*(a2 + 8), 0x12Cu, **(a2 + 16), v191);
                            ++**(a2 + 16);
                            if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                            {
                              sub_24D854AC0(*(a2 + 8), 0x12Du, **(a2 + 16), v192);
                              ++**(a2 + 16);
                              if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                              {
                                sub_24D854AC0(*(a2 + 8), 0x12Eu, **(a2 + 16), v193);
                                ++**(a2 + 16);
                                if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                {
                                  sub_24D854AC0(*(a2 + 8), 0x12Fu, **(a2 + 16), v194);
                                  ++**(a2 + 16);
                                  if ((*(*a2 + 40) - 3) <= 0xFFFFFFFD)
                                  {
                                    v25 = 304;
LABEL_203:
                                    sub_24D854AC0(*(a2 + 8), v25, **(a2 + 16), v24);
                                    ++**(a2 + 16);
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

      break;
    default:
      return;
  }
}