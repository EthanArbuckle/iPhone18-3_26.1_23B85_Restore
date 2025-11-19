uint64_t sub_24D7AC42C(uint64_t a1)
{
  v2 = a1 + 0x8000;
  *a1 = &unk_2860BB218;
  if (*(a1 + 200))
  {
    v3 = sub_24D7CFC0C();
    MEMORY[0x2530332C0](v3, 0x10B0C40146BE95CLL);
    *(a1 + 200) = 0;
  }

  v4 = *(v2 + 2192);
  if (v4)
  {
    *(v2 + 2200) = v4;
    operator delete(v4);
  }

  v6 = (a1 + 208);
  std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  return a1;
}

void sub_24D7AC4BC(uint64_t a1)
{
  sub_24D7AC42C(a1);

  JUMPOUT(0x2530332C0);
}

uint64_t sub_24D7AC4F4(int a1, char *__s1)
{
  if (!__s1)
  {
    return 207;
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

    else if (!strcmp(__s1, "06E83674FEE3BAEADDA04BCE4F798E64EAF9562959486A334178EFE9614AFE02"))
    {
      return 12;
    }

    else if (!strcmp(__s1, "CFC88028D48CFFC122779E410D958A0644A7B3219492B8F56805460AE11D3317"))
    {
      return 13;
    }

    else if (!strcmp(__s1, "C38EE6AA610415ACB3D10D68E346EE868CDB70CFC2F46D887E5E152FD4A256B2"))
    {
      return 14;
    }

    else if (!strcmp(__s1, "AEB4C02667999241FFC01E220B4443963E1B34D3ACD2C5545F5BBE1143870378"))
    {
      return 15;
    }

    else if (!strcmp(__s1, "40A9788933E5BA39796E86A50864B263BC0F2291A4B895C7EA6BBB144E5DACA5"))
    {
      return 16;
    }

    else if (!strcmp(__s1, "D469DF7536BAE8E1DE2CB8B3C1E14B4133343771592D97C7BCEC1D03BF0EE40A"))
    {
      return 17;
    }

    else if (!strcmp(__s1, "F9F04A751DF32AED42FF9EFB131D3CD40E499AA0A99A68D0DD6778167E42BF26"))
    {
      return 18;
    }

    else if (!strcmp(__s1, "357D351342C59B72F21BD4580AD1B2F1C4C47D0006AB615A4760BC3BEBD99E48"))
    {
      return 19;
    }

    else if (!strcmp(__s1, "FB75B1EE028F765D95134B65BAFD26602EE879B247F31514268AFE1DF00830D4"))
    {
      return 20;
    }

    else if (!strcmp(__s1, "C8CAD3DF32303A6876151218FAAA63CA0642964F0528B51E0F3BBA792A0FA006"))
    {
      return 21;
    }

    else if (!strcmp(__s1, "55DDF08ED5B641C5048444150A2D58A930D81F86EEA506CD8B4073F64FC0F1C2"))
    {
      return 22;
    }

    else if (!strcmp(__s1, "C4B3D90E89BC6B96BEB336D1A17757038334C2A490EDF56428037F1BC405BF70"))
    {
      return 23;
    }

    else if (!strcmp(__s1, "E0822A12A8DD1B222198A771537F2CE4899EB45BC94D7854E0E6FA983E6EBC89"))
    {
      return 24;
    }

    else if (!strcmp(__s1, "33634F0DC72BA827D588E38DC75C388CF4976E4671D85148780CFAFD262B07FB"))
    {
      return 25;
    }

    else if (!strcmp(__s1, "FD6F91B4C067953424B95F0B332F0FB4A64F7E43DC4D6E8CDE26B1D5D7C07A42"))
    {
      return 26;
    }

    else if (!strcmp(__s1, "50E7E1AAC46F3CF79A6B3BB2DDC0BCDCF0ACD9011439415E47AEA7B6579F3EA8"))
    {
      return 27;
    }

    else if (!strcmp(__s1, "B6B78FABA9FD12B688986DC5EA4D4B8B731265EDEC1E5AE52B0CAA6FC31801F2"))
    {
      return 28;
    }

    else if (!strcmp(__s1, "25C93B5B4A76FFE8A20CA68271CF612F43D0B5504B6680945F3BB046DA47213A"))
    {
      return 29;
    }

    else if (!strcmp(__s1, "511B8B14F417FD34A16CC128C14014AD2B4C5A60B3B053D963C78631DD6B3B89"))
    {
      return 30;
    }

    else if (!strcmp(__s1, "09ADF2F2D849AAB1B547CE687B45B30560D5965A6EE176E97CBC14EB63728DE2"))
    {
      return 31;
    }

    else if (!strcmp(__s1, "8C96A68570A6DF5B4ABA9577C27042A37A60B8FBD6BC9DE3F909EC683406A5CD"))
    {
      return 32;
    }

    else if (!strcmp(__s1, "80C734FBB111112ADB288D1CA5E1A6D5381987D38F4DFA08EFE8CC3C5F1CF131"))
    {
      return 33;
    }

    else if (!strcmp(__s1, "F4B1ED932C463D5EE2A9E1F0BEC7DDE12141635B8C1BC09662243EA36A1E2ECE"))
    {
      return 34;
    }

    else if (!strcmp(__s1, "932639B5CA9FD3BE98F2787A2CDE095AAE9CE2D64A911486D12757EFBFD85140"))
    {
      return 35;
    }

    else if (!strcmp(__s1, "C2DF6BB1B96D7879744E5D54DEB55C12D7A9ECFF52AF539FC1FA63882B058A70"))
    {
      return 36;
    }

    else if (!strcmp(__s1, "7B36DACFCE6FC736238A397E5EF2F7E25BE954A649117EE12A916CE79F75B94A"))
    {
      return 37;
    }

    else if (!strcmp(__s1, "23C55391915968963B369CFA8F5BE79A370ADD2CB37A32A0C9267269406EC6E8"))
    {
      return 38;
    }

    else if (!strcmp(__s1, "B664BC44BBFB5AB784B0240FFB637DC636A9B7CEE13D6D556ED1D4ED56E9DEF8"))
    {
      return 39;
    }

    else if (!strcmp(__s1, "0559E51C335EC81412374E33F830E804DF39F2FF796E95308A25A8A8BFA0475A"))
    {
      return 40;
    }

    else if (!strcmp(__s1, "08E5DC7B9F52DFF7963D2715D3927A1356E247326CAF5C76830A7D7227B991B0"))
    {
      return 41;
    }

    else if (!strcmp(__s1, "3A6B5C3F24147C27899AEB7FF2FE3FB579A0D79BE4AB9BE54E7F31F7AED99F24"))
    {
      return 42;
    }

    else if (!strcmp(__s1, "1394031F165B7EE472518C80605434939287CE630C3E2BF45774C422646BDB52"))
    {
      return 43;
    }

    else if (!strcmp(__s1, "2AD526A49877323714C9104CAF0E3F117082A43D0955315AF0F43F7AADFF2586"))
    {
      return 44;
    }

    else if (!strcmp(__s1, "656B51D5FF08D489CFD54BA967A44D9FBB3DEE2BEF089EADFF59F0176430773E"))
    {
      return 45;
    }

    else if (!strcmp(__s1, "5ABE83ED58C646C0795991EFC53EFAF95AD3FA933AFD23A5181FDC1D4DFDFBA0"))
    {
      return 46;
    }

    else if (!strcmp(__s1, "CD2FFA0725298FE71DCD34C05D62ABC16C9F0A5690297DF5376D65198C5D7890"))
    {
      return 47;
    }

    else if (!strcmp(__s1, "B1981D6FA7779DA1E867116607CFA5B05E44C5C8D8A9E8AD1906FEF7F8BA1874"))
    {
      return 48;
    }

    else if (!strcmp(__s1, "B2D70BAA5FA87BB6C253C5314B6E833D882783F1E906897B196FCC4D6572D5C6"))
    {
      return 49;
    }

    else if (!strcmp(__s1, "97566BDFEF237739AC2EFF164112983D98FCFAC0EE4F30C671D4908D02520208"))
    {
      return 50;
    }

    else if (!strcmp(__s1, "F7FED94B5F000049299482FDF5F0D7700B1A29309A0313344D1B861FDC715239"))
    {
      return 51;
    }

    else if (!strcmp(__s1, "DE73E30C620D682FA8317A0FEB5087A2C63811110674D46B9894D955808CBC9E"))
    {
      return 52;
    }

    else if (!strcmp(__s1, "B942A1DFEF5624B827CF986CC919BB4891C1C421645311F2355CE6766AEBEF2E"))
    {
      return 53;
    }

    else if (!strcmp(__s1, "9AD2DE6034B18A80CF5573485FEEE0B7EBF72DF6DD292271C9B412FBDF8037C5"))
    {
      return 54;
    }

    else if (!strcmp(__s1, "B4E21A931309227166902DC5A3E8BACAE69D267A7E733A61139712AC108C6E4E"))
    {
      return 55;
    }

    else if (!strcmp(__s1, "3EFF071A6AD7AF2F6FD8A87059C9CDD5937E87D8B9B4D215C449748133129BDE"))
    {
      return 56;
    }

    else if (!strcmp(__s1, "EE48140733BA4D00D8E6CB099101E0BBB6FDB2F71FC05FC0FEAC8A6CF3100B14"))
    {
      return 57;
    }

    else if (!strcmp(__s1, "AD07330BE6EF87E08C9E5D058B4CBD9F71C39D7C1B916A834F263B5E7B3DFC43"))
    {
      return 58;
    }

    else if (!strcmp(__s1, "2BBC664C4BF8238D5FC7A5376438D13CE61B9EBC1FF8EC52F6F5A80543BEACD4"))
    {
      return 59;
    }

    else if (!strcmp(__s1, "B0FE94C089261C381766B5366AEB1C6ACBF46BC57B4298D568C5EDFCABE30A8A"))
    {
      return 60;
    }

    else if (!strcmp(__s1, "0B5AF8D437BA25AB6225EADB7A0FC92659AAB2122AC993E00CFA2F83B0E143B3"))
    {
      return 61;
    }

    else if (!strcmp(__s1, "79E88035C9BC883D403F17831B8C9264E643C6B76E9B3C1451B49B0F672C32BF"))
    {
      return 62;
    }

    else if (!strcmp(__s1, "AA1E812506867A5F2C54D3BA3268DB5C4BB2C6B0E4F500340DD23C4E1E637D9D"))
    {
      return 63;
    }

    else if (!strcmp(__s1, "295D65BB175E4E4EEF9003E008E093043C9B8CE43190BE0A2D8F1771F9837033"))
    {
      return 64;
    }

    else if (!strcmp(__s1, "4BF63E209F7D92B4E8341476C80013664D3299327C72E7A7F0D16E1CBD4904FC"))
    {
      return 65;
    }

    else if (!strcmp(__s1, "3476066F46CC277DE7616AAAD8FCDF2C28DA42293B231F74A62159EB6EDAC78C"))
    {
      return 66;
    }

    else if (!strcmp(__s1, "3856FBD8576C0AA988700D7EF5787AAAE94A3BBFBB393B0426FA9D379DA69C91"))
    {
      return 67;
    }

    else if (!strcmp(__s1, "260130B343BA0695AB911D986B3870FA0CCD0EC58E6F55895A856F37201CE9F8"))
    {
      return 68;
    }

    else if (!strcmp(__s1, "100299043F027ADADB62685130C7FBE549E29F08B58C365844FF8EC25BAEEAB0"))
    {
      return 69;
    }

    else if (!strcmp(__s1, "547021D0E82D62B7841769A23FC7FE04F7A63B8A0528A3F6E4C67E8B9420360E"))
    {
      return 70;
    }

    else if (!strcmp(__s1, "76F5A23AACC27615C980BE3E58B52994192195866836855BCA7C3F885796297B"))
    {
      return 71;
    }

    else if (!strcmp(__s1, "5D4640C1160E691CF9E1DA7FE475482756D03567716B9856424469B31049A457"))
    {
      return 72;
    }

    else if (!strcmp(__s1, "1FFBA951E06F1A7810DC823264210F0C13273E454D699383F3D6265630FEDD53"))
    {
      return 73;
    }

    else if (!strcmp(__s1, "9E7E7B3180DA596EBA2925972639C8DC058E97904ADA86E8FA31E691D63CA97B"))
    {
      return 74;
    }

    else if (!strcmp(__s1, "0D43CB377576A411251DB7D5579117D02FC1BB178830D97B5332A806AC122B37"))
    {
      return 75;
    }

    else if (!strcmp(__s1, "ECCE75AB7F80F9519A3E08E3A0EE71610AE67E3B82829786B02D98C09276F560"))
    {
      return 76;
    }

    else if (!strcmp(__s1, "D7642F4CD8A1F1052D8874FFCB84623EEB5AD8DB476AAA36BB13F44E0122717D"))
    {
      return 77;
    }

    else if (!strcmp(__s1, "35E9B0A78729DBBE416E11951D26DDC657D957CE37E23B41A2915BB6CC8CF792"))
    {
      return 78;
    }

    else if (!strcmp(__s1, "FE4E8A2782700A8DEC84E195627096B91A904FF6F486B78EF381501FB9667E0F"))
    {
      return 79;
    }

    else if (!strcmp(__s1, "C04589D08BD1AA2481137A423CC2E81C537B75011557AB0EA579F58E489D9981"))
    {
      return 80;
    }

    else if (!strcmp(__s1, "A1CD5E72A4CAD33DD4C2190F293103B9FD8B40FFE76B1A99A195768465964F91"))
    {
      return 81;
    }

    else if (!strcmp(__s1, "7C3CD59A80673DD0787DF037FB1FB45E0EB635BFDB2554E10CBF5D056FEDAB78"))
    {
      return 82;
    }

    else if (!strcmp(__s1, "E484E42F34BF2E406D25EB38451C67D3C3C9CB9DEB9222C4F5E21E7E6729C787"))
    {
      return 83;
    }

    else if (!strcmp(__s1, "992E7CAEB9808CFC06F5E69E0B80D0ABB3328FC59FA76FED7BB9529EBBC6E484"))
    {
      return 84;
    }

    else if (!strcmp(__s1, "A6C2B5EE1745CD5EB5C81F2B31F5E946A0C1BDC93B226BB05571EFA08555EF8F"))
    {
      return 85;
    }

    else if (!strcmp(__s1, "18487C9D7CEF0D61908387ACBCC7316000F44757B4F9C98EA18217C35C6ECF85"))
    {
      return 86;
    }

    else if (!strcmp(__s1, "274A1E04D620A2A93E0AAFC7DB5F0BC3A6322D745709FD3011852A7608D0DC59"))
    {
      return 87;
    }

    else if (!strcmp(__s1, "E21086636B17AA11D0ECA0545AB90C82D396EB03C6D33A9DE49DEEC71BFEC9A3"))
    {
      return 88;
    }

    else if (!strcmp(__s1, "E4079A9FE3685ED6370986B0373FFC91E49069A610571534C42255467036D7CD"))
    {
      return 89;
    }

    else if (!strcmp(__s1, "0AF6A9208DBB7C0C06A19C4C9090BF87CF00BBEE2BDFD9E0C49423DD641C1174"))
    {
      return 90;
    }

    else if (!strcmp(__s1, "11F678510139CFDE77DC68F07F633C61D28564C9B207D45849B5E6AB72B41E0A"))
    {
      return 91;
    }

    else if (!strcmp(__s1, "0D32627A10C5DB983D8E5DF466E154001CBB4E945D22A4E280A08C8D0F1701A7"))
    {
      return 92;
    }

    else if (!strcmp(__s1, "DFF91EC9DAE4F9D14485F569D87B6AC75F93DD47C850ACF09E9DD7A3D0EFCE8A"))
    {
      return 93;
    }

    else if (!strcmp(__s1, "D1922B4CF1F4DC1E2062378D34EE4E6EAB398BD0417BC95E5EF60C5C1F53E035"))
    {
      return 94;
    }

    else if (!strcmp(__s1, "EED11884758646FD70438F8D2661EC13F25DF1E40EC651E073736D2EFDAB9F0D"))
    {
      return 95;
    }

    else if (!strcmp(__s1, "3FAA4DE8275531852B39C91E52291523AEA993A6114D2CF7645F7C8AC1EF27CE"))
    {
      return 96;
    }

    else if (!strcmp(__s1, "2660D91E9E44E8375C647F1F4FDD89923B3BFA26A3AF29D5937BAF8EF1E10CFE"))
    {
      return 97;
    }

    else if (!strcmp(__s1, "6060A012307BC0711368543129DC26F4493F2C5C30CAF9D4F782C065929930B3"))
    {
      return 98;
    }

    else if (!strcmp(__s1, "6CFA2D1125EAFC658FDF0E2F1A1B4F8D315296A1AFB116D0A8ECF669C026FF69"))
    {
      return 99;
    }

    else if (!strcmp(__s1, "9C397DD48F0AD6AAD1F9B2ABA077E5808FA3D4E452B659013FF3CEC6D1EB1472"))
    {
      return 100;
    }

    else if (!strcmp(__s1, "B6C42286FD0AB628E79B9D4F5F10DC31C2DFD460570800BEB5C9E53651363C7D"))
    {
      return 101;
    }

    else if (!strcmp(__s1, "8F37B8C186E20EAB68B65FA965112E8C106205370CA0829C3EBD548C49C99A46"))
    {
      return 102;
    }

    else if (!strcmp(__s1, "7D8633F6EB10ABA43002BB46D28FA26BFFA1093AB39728908221CE3FD922C72D"))
    {
      return 103;
    }

    else if (!strcmp(__s1, "E01BD71065BD9CE02CFEEC935E09F6DE3C3B9EFAED8F187A533C6321069B4D85"))
    {
      return 104;
    }

    else if (!strcmp(__s1, "6FFBFD65F64B0F892C812D9952748E8632E02C4DF155F5E233927E6D0DC88D38"))
    {
      return 105;
    }

    else if (!strcmp(__s1, "5DCA18DF36F9FA665E30157E71359C15F04492B59DA944CC2B10D7A925843DA7"))
    {
      return 106;
    }

    else if (!strcmp(__s1, "81E23B94D526C5353E9E499DE4D53C13BAC39B09D64961C3259B99425E493446"))
    {
      return 107;
    }

    else if (!strcmp(__s1, "E2D94E3051875514422124C186B05CDA6F417AF1FC67511A17055B65BED227AA"))
    {
      return 108;
    }

    else if (!strcmp(__s1, "EEC15933C85F49CDCD9A4DC75821303FD2E5E1A8E2651667DB103FF51457DF71"))
    {
      return 109;
    }

    else if (!strcmp(__s1, "A6DE7D11FD45FD0B0F5541862F786FAAA17E530F3CBAC5CE63EFD6C7B7B8EC27"))
    {
      return 110;
    }

    else if (!strcmp(__s1, "2C9ACA342CA7C8F4A29CA1C798155F709AC8B8D95F0D20C549DBC00F1C42184D"))
    {
      return 111;
    }

    else if (!strcmp(__s1, "54D70702DEC6F85C65B8D1E26F089610058B0CDC6B23440F6FD07F26E6E23315"))
    {
      return 112;
    }

    else if (!strcmp(__s1, "5851D9888A5EE313F6D80CC60F6BB6ADFC20BB0BA8D9BED753F04382DF6BED1A"))
    {
      return 113;
    }

    else if (!strcmp(__s1, "0AAC94B02176D8B144479EAFEE546A608C8B5E61D7A27481868626A7820E0CB1"))
    {
      return 114;
    }

    else if (!strcmp(__s1, "EC02EE62A95DE2B0B2BC9C65A400E1318CFD7FFA894EECC7B23F8FB164A10C08"))
    {
      return 115;
    }

    else if (!strcmp(__s1, "D36BDC945E9A3C2158D269457AE35CC5AD63543965D991AB68A2CC0556E31D50"))
    {
      return 116;
    }

    else if (!strcmp(__s1, "E9FDDF0E4E3D3ABB4D40C135F207C0310E5BE4CCF2EC1099CB89594DD756B745"))
    {
      return 117;
    }

    else if (!strcmp(__s1, "19FCC75261554C74A79C9151422F265347FC6282808C4BB8E9627195837B3682"))
    {
      return 118;
    }

    else if (!strcmp(__s1, "53E08B2D38CDBBC0D198B95302BCC632B50E773651E9BA4C57373B002114CBBC"))
    {
      return 119;
    }

    else if (!strcmp(__s1, "972B60C198C39199A11F25454037CADA381BB118BE18D850A36534F88A82B7F1"))
    {
      return 120;
    }

    else if (!strcmp(__s1, "244B94B5F2129A5A0083F3661EAC9C6B9EB5FB62A499E6ED236452F5BE6828F5"))
    {
      return 121;
    }

    else if (!strcmp(__s1, "FD406D36CD5763CFC9F0DD6C37C7BDC528ADF3990CF9725229F4258C1758C94D"))
    {
      return 122;
    }

    else if (!strcmp(__s1, "5537928133BBD235A03487186F42FBFF9D0FC45873C83FD5219EB5EBF500ED10"))
    {
      return 123;
    }

    else if (!strcmp(__s1, "75D1CF68BBA66F3E658B115EF614F1449D832863CAF5F46D092488791378897F"))
    {
      return 124;
    }

    else if (!strcmp(__s1, "63CA0F7A21417297C42CDF8868259FBCECF5C6A5C1C994C3A1CA5F608179B458"))
    {
      return 125;
    }

    else if (!strcmp(__s1, "F6D454657EA6A999B3D168C1A68D6592B2F348BA088B279DBF0A992754767224"))
    {
      return 126;
    }

    else if (!strcmp(__s1, "42EA38C66C2CC54A764D5E204FF38F3402542A5F05B7731D549F22D745429051"))
    {
      return 127;
    }

    else if (!strcmp(__s1, "37C7DEA7C7AC62E48672D62B73746ED032AC86A05AA223DB4F373D44F106CD6A"))
    {
      return 128;
    }

    else if (!strcmp(__s1, "F942A7256C77ACD182AE0B767F21133B11937660A61610A18CD14087D1F2F71C"))
    {
      return 129;
    }

    else if (!strcmp(__s1, "AC7E4629ABFA704A6369754CB199383D2901F0916E230FB75D765420550E8244"))
    {
      return 130;
    }

    else if (!strcmp(__s1, "6368DD78E9738AAB3001F4C17EBE26BFB0414CDCC1399D092A48AB5A57536454"))
    {
      return 131;
    }

    else if (!strcmp(__s1, "26456E27CBF6165D84C883AC666AF50E5EAAA39D07887C37BD3A9BD26A74B2FE"))
    {
      return 132;
    }

    else if (!strcmp(__s1, "DD96D75C3E233EE9B4528803691C00E98D5F49F2B4B3B83676332ABFBB65DE07"))
    {
      return 133;
    }

    else if (!strcmp(__s1, "7262FC4EB2434704063840AB716EF14B50F3A0E5E3457E8EBF9E014325CAE94F"))
    {
      return 134;
    }

    else if (!strcmp(__s1, "27A93DA3DF54447DCB9F371C54907BEFA8F17B7FA905EDAC2B523C7A0D93A918"))
    {
      return 135;
    }

    else if (!strcmp(__s1, "038FA673BF47F15B7C5236E4863A96C910C3993AB31529A041DE199F3EEB66CB"))
    {
      return 136;
    }

    else if (!strcmp(__s1, "89DBD24AAAD1D4D50F3F74A7040B52C5B06B4768F1E09DC89D4067D243744882"))
    {
      return 137;
    }

    else if (!strcmp(__s1, "9EB2D21E75D0AA677C8D110763485DB3A78262C89D05CA0C3AF7EBD2D6AB99DD"))
    {
      return 138;
    }

    else if (!strcmp(__s1, "00EB2F035A98609505AB8DAB9B98D1FECEAA766F368932F7FE6316AE8BAEFBE0"))
    {
      return 139;
    }

    else if (!strcmp(__s1, "FED7B076A3D7DE52B6D9A21D14FB1A49BABF975B73BE74181C4EA26976162724"))
    {
      return 140;
    }

    else if (!strcmp(__s1, "903B8B51F5368A75F9777D9155C6A2664116770701ED241A6D1662131A802333"))
    {
      return 141;
    }

    else if (!strcmp(__s1, "2A5A81F290FDE6D31DB132DD493737A7252C441023286294F3C77CE48DD4E2F0"))
    {
      return 142;
    }

    else if (!strcmp(__s1, "0C60DB8A2A73C9B343C4B279EDF24580976BD74BD0294B1AAC17B0A4273D8C28"))
    {
      return 143;
    }

    else if (!strcmp(__s1, "BA7A33DF7A125E9EE5C1036DD6DADB3B74CC4B9BA9C5C1B235C131E70B7B4E41"))
    {
      return 144;
    }

    else if (!strcmp(__s1, "EA4B7DF630D01A5FC30F51DEEC420CB0F667CC57639F1C1D8E67D97B12524E0C"))
    {
      return 145;
    }

    else if (!strcmp(__s1, "7B872939683DD4D93E917C20089932C93AACDE7E7C0738CB78026B6FC178B1D9"))
    {
      return 146;
    }

    else if (!strcmp(__s1, "B80C09BAE4062CCC534F6E6EF6EA6E0ABEFF12048A342EB3138E7B76890D8D3B"))
    {
      return 147;
    }

    else if (!strcmp(__s1, "11221127E966E92C6C18F64D312E8C9AF73DB3A9DB792E4442FCECE644A8E7B1"))
    {
      return 148;
    }

    else if (!strcmp(__s1, "A5F302F870E09D718474CBCADD4E0B3589351A5007777F1B805169B54226B875"))
    {
      return 149;
    }

    else if (!strcmp(__s1, "615761368EF9DB43D1A8DF2EF1CC087B17906454F025A1E1C5BB95B022582B9B"))
    {
      return 150;
    }

    else if (!strcmp(__s1, "D97205C2B224673AE923C3A7A003D96258A1A774E1C9E3CD513B0706C6657D48"))
    {
      return 151;
    }

    else if (!strcmp(__s1, "AC00030F77E6F4E41BF49DC8D7A42C68813DB0C3B652C340B340C01873EB0AB7"))
    {
      return 152;
    }

    else if (!strcmp(__s1, "F2F4280636DC1065AEFE537517EE6B816C8133EF2E5C106D92DDD2B0E0DFC69D"))
    {
      return 153;
    }

    else if (!strcmp(__s1, "A739EE6D2886FEBC60795D1D8803BF19A1A3463541AB6024A90DBB8E4650F589"))
    {
      return 154;
    }

    else if (!strcmp(__s1, "E44B08E42854960D4B0277D46D6181F8B07FAC3C3CCF5A6B31AA9DC9FA4057D6"))
    {
      return 155;
    }

    else if (!strcmp(__s1, "C0909793BE0330B378C0CD09F0D9B9F09F599EC8C6B94C37ABA9011E83596F90"))
    {
      return 156;
    }

    else if (!strcmp(__s1, "F365A0CC0EEB38797FCD82D5E4AC3B2ACF44EB34D333D4AB1AD8D8891B7F8892"))
    {
      return 157;
    }

    else if (!strcmp(__s1, "96775CCE99E1AD0C194329938D933579304BAD868B3720C34D20D27536E7AEE7"))
    {
      return 158;
    }

    else if (!strcmp(__s1, "A2B9B85B3AADE88EBF43D3DB522C31E6A781700C0112047F72FA920A638A69BE"))
    {
      return 159;
    }

    else if (!strcmp(__s1, "F98BB9D35C454CA00A884F6B9621A30F2C78A880A96D81B5E661391D74E8455A"))
    {
      return 160;
    }

    else if (!strcmp(__s1, "D2D14661D9692EBD5065F06CB4C2AC7DD14339CAEA538D5AFA4A2B5813E87D5D"))
    {
      return 161;
    }

    else if (!strcmp(__s1, "28B92DE785184753FAF5508E080CB8FE784D6A5214E5E6382751D52534A72FCE"))
    {
      return 162;
    }

    else if (!strcmp(__s1, "CA5FDEAD1B2DEC16F5B525E9AE3CA7C4EDC163EEE950D7A77A7C5284A607369F"))
    {
      return 163;
    }

    else if (!strcmp(__s1, "D5D2B254E0B808929711EBFC999F2E0F884DB9876C90B056E230E4DD6D3261CE"))
    {
      return 164;
    }

    else if (!strcmp(__s1, "12ADE1668F06776E2CE9CC2CC563E0BD45A5346C6D883D748FD3C132E7EB8A2F"))
    {
      return 165;
    }

    else if (!strcmp(__s1, "12038A812C239440324EDCEB54DA13B6B7D0C4D89F61582F9A4628C4409FAAE6"))
    {
      return 166;
    }

    else if (!strcmp(__s1, "316635C054256728753D20516A98550DBF581EBA16691321F7BBCE3A9177E09D"))
    {
      return 167;
    }

    else if (!strcmp(__s1, "0E8C0AF79B626C37D4BD04D61ACC6B1841B7F784FEF6692E84A2B1971C771CF6"))
    {
      return 168;
    }

    else if (!strcmp(__s1, "152B31D6CDC80AD2A7F1593F1E81074F9FEB957043B213E8537F5C9098DFD449"))
    {
      return 169;
    }

    else if (!strcmp(__s1, "E2175386E8858E1E5273EB120A19C734896FE34E529B7720E38F90C3E66633CC"))
    {
      return 170;
    }

    else if (!strcmp(__s1, "89FBB3BDB9379AD11D47A5F312EDF73706C589F07B8C14BE99A3D604DA840455"))
    {
      return 171;
    }

    else if (!strcmp(__s1, "CFEE285EA42317F1E8CE16B6BAED451F1D8029F8C057963B2486EA9093B3CD28"))
    {
      return 172;
    }

    else if (!strcmp(__s1, "1F6D45D5DEB05AFFD7C7C1DAC38D882FA9A9D616990FBB135621C1F0D30CA596"))
    {
      return 173;
    }

    else if (!strcmp(__s1, "BEE28431C5E817DF3C9C265B3672660D03A6C89EE5236507323554958AE59578"))
    {
      return 174;
    }

    else if (!strcmp(__s1, "A5AD2AAF51022A15627C4C6C3F18D612BFF2CA7F01F65EC1C26965ED6DDC6563"))
    {
      return 175;
    }

    else if (!strcmp(__s1, "D51129E2277ED8B7AE37E82DA9F8FEB9C3FDB71EC4E4B5548B4D3763A89AF1C2"))
    {
      return 176;
    }

    else if (!strcmp(__s1, "24B2EDEBE37A35C073BBC2B83505D52B7FDB9C121406C6308CF528457883D4BE"))
    {
      return 177;
    }

    else if (!strcmp(__s1, "0C7AC4ECF65C2CA6215B602A5C050FB69BFF2BA322B47A6890E2F0EE8CA922C0"))
    {
      return 178;
    }

    else if (!strcmp(__s1, "6634D05466F515CAD98B1548EE7DCC52386712E059BE4C1A3FBB157892D9D61E"))
    {
      return 179;
    }

    else if (!strcmp(__s1, "41E40C57A9236569333335DEA9CB52F0058A4BF366335B45406F04F7E0A93CD5"))
    {
      return 180;
    }

    else if (!strcmp(__s1, "2F5E861CD13CBCECC15CB691FCC7DCE54FC0755F96F1289D26AFB056BD6788D5"))
    {
      return 181;
    }

    else if (!strcmp(__s1, "7EFBE7B468F2C8FF4C34E67EDC7E8F80DB3E295C6221F8408D4440A78430C64F"))
    {
      return 182;
    }

    else if (!strcmp(__s1, "D67C31C99E39309E5E09E11F7A5E7B3576972C57135463976A5539814860D051"))
    {
      return 183;
    }

    else if (!strcmp(__s1, "3216E3D0006FC749B832DD3C33FF4B7CAE3CE455B3FE030A3EB061DC0356D829"))
    {
      return 184;
    }

    else if (!strcmp(__s1, "FF9225FC7116F7583194D2D2F948E6CFD131F9020C7B7C9D61A8DE2F46571C5F"))
    {
      return 185;
    }

    else if (!strcmp(__s1, "E5FA747F28EBFE3E4BBD4BE279044F914B09502E3EB62035341300536242F90B"))
    {
      return 186;
    }

    else if (!strcmp(__s1, "C517BA395C2A64392D1C11AE86475E6F476E22867252458FCC5152B58A43603D"))
    {
      return 187;
    }

    else if (!strcmp(__s1, "2FAB2C822F900089CD78CBC4AB947F23F8CD8C71D0257BB20870F2437F345683"))
    {
      return 188;
    }

    else if (!strcmp(__s1, "860E5D173A5DA8DE4C5A88EDDF57BFB0D9E7D010DFD109852AF3D1C8480DE485"))
    {
      return 189;
    }

    else if (!strcmp(__s1, "A2AEBDCCCD11BCF937DC0DE23C78762A9FD1425DA34EE911F615F041D947D3CE"))
    {
      return 190;
    }

    else if (!strcmp(__s1, "C1F228965CE72DCBDF0563CA9125430BFC5215644CF7426375AAE844D9C393CF"))
    {
      return 191;
    }

    else if (!strcmp(__s1, "7973408EAAC4FAF261DDB68AD698E34EFC1018CD38876DB49DA34E1C044F2CFC"))
    {
      return 192;
    }

    else if (!strcmp(__s1, "F5B97BA71877E7014D8BB80B1B5750123154A26D4FD86B41AE0525EDEF44A41B"))
    {
      return 193;
    }

    else if (!strcmp(__s1, "1B57426DF9B957C95C4296A880A1D75B70200B72E8554E7D713D37098154E907"))
    {
      return 194;
    }

    else if (!strcmp(__s1, "3473F3E1E2A85DAEEB664F0C421CDF84D3B27258796FFBB2881208B73DEFC007"))
    {
      return 195;
    }

    else if (!strcmp(__s1, "CBB7FC5C90F6950C90B30709E38AC295085E9F9A5D82EB5DF56E89752A1E0252"))
    {
      return 196;
    }

    else if (!strcmp(__s1, "996E91405229B0F31165936664CCE9F7D3145963C1A14FA9DD57A320E349F123"))
    {
      return 197;
    }

    else if (!strcmp(__s1, "727820125C45F365E03E3C14E8202CFF1E0049F24543B5D589F3956E11F5C581"))
    {
      return 198;
    }

    else if (!strcmp(__s1, "95DD082534B76465BAA6B38551429C11CD11A77CB351740B05F3D18D2CD2B990"))
    {
      return 199;
    }

    else if (!strcmp(__s1, "294111BEC0EE4CFDDCE430D197B75A1CB09E21EB1C822E16CD1CBCC982D46A3F"))
    {
      return 200;
    }

    else if (!strcmp(__s1, "7B4CF9B631F81D78F2CEA2F4869D0137BE4CA667AE9B13DB22A617C2BA15C075"))
    {
      return 201;
    }

    else if (!strcmp(__s1, "EA870EDD0C8AD026DB44FB5C6AC53D8875D62255F794C489EAB9F8222F0616CB"))
    {
      return 202;
    }

    else if (!strcmp(__s1, "2D29DA77B4EF8E7B1D2F3F764587274747D1C2AB05C053B4CE38AE701116BF6A"))
    {
      return 203;
    }

    else if (!strcmp(__s1, "CA1DD5B830AB9668FC5EBD5904EB9B0113C766FCE57EF59AEC58982AE744413A"))
    {
      return 204;
    }

    else if (!strcmp(__s1, "B0D00D3E15F0D45E0DAD2FE819496F3837110BDADE01AC3A17862CDDACDEE5AB"))
    {
      return 205;
    }

    else if (!strcmp(__s1, "83156D57355E76E46E7319E18EA9D6A8D20E78958733028FD3F74C3FD9B0BCC5"))
    {
      return 206;
    }

    else
    {
      return 207;
    }
  }

  return result;
}

const char *sub_24D7ADBD8(uint64_t a1, unsigned int a2)
{
  v2 = a2 - 128;
  if (a2 < 0x80)
  {
    v3 = &off_279654190[a2];
    return *v3;
  }

  if (v2 < 0x40)
  {
    v4 = off_279654590;
LABEL_7:
    v3 = &v4[v2];
    return *v3;
  }

  v2 = a2 - 192;
  if (a2 - 192 < 0xF)
  {
    v4 = off_279654790;
    goto LABEL_7;
  }

  return "Invalid";
}

uint64_t sub_24D7ADC30(uint64_t a1, unsigned int a2)
{
  v2 = a2 - 128;
  if (a2 < 0x80)
  {
    v3 = &unk_24DA8AF08 + a2;
    return *v3;
  }

  if (v2 < 0x40)
  {
    v4 = &unk_24DA8AF88;
LABEL_7:
    v3 = &v4[v2];
    return *v3;
  }

  v2 = a2 - 192;
  if (a2 - 192 < 0xF)
  {
    v4 = &unk_24DA8AFC8;
    goto LABEL_7;
  }

  return 16;
}

uint64_t sub_24D7ADC84(uint64_t a1, unsigned int a2)
{
  switch((*(*a1 + 32))(a1))
  {
    case 0u:
      if (a2 >= 0x14)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return a2;
      }

    case 1u:
      v4 = a2 - 20;
      goto LABEL_21;
    case 2u:
      v4 = a2 - 30;
      goto LABEL_16;
    case 3u:
      v4 = a2 - 62;
      v6 = a2 - 62 >= 0xC;
      goto LABEL_28;
    case 4u:
      v4 = a2 - 74;
      v6 = a2 - 74 >= 0xB;
      goto LABEL_28;
    case 5u:
      v4 = a2 - 85;
      goto LABEL_23;
    case 6u:
      v4 = a2 - 89;
      v6 = a2 - 89 >= 0x12;
      goto LABEL_28;
    case 7u:
      v4 = a2 - 107;
      v6 = a2 - 107 >= 0x11;
      goto LABEL_28;
    case 8u:
      v4 = a2 - 124;
      v6 = a2 - 124 >= 5;
      goto LABEL_28;
    case 9u:
      v4 = a2 - 129;
LABEL_16:
      v6 = v4 >= 0x20;
      goto LABEL_28;
    case 0xAu:
      v4 = a2 - 161;
      v6 = a2 - 161 >= 7;
      goto LABEL_28;
    case 0xBu:
      if (a2 == 169)
      {
        v5 = 1;
      }

      else
      {
        v5 = -1;
      }

      if (a2 == 168)
      {
        return 0;
      }

      else
      {
        return v5;
      }

    case 0xCu:
      v4 = a2 - 170;
      v6 = a2 - 170 >= 8;
      goto LABEL_28;
    case 0xDu:
      v4 = a2 - 178;
      v6 = a2 - 178 >= 0xF;
      goto LABEL_28;
    case 0xEu:
      v4 = a2 - 193;
LABEL_23:
      v6 = v4 >= 4;
      goto LABEL_28;
    case 0xFu:
      v4 = a2 - 197;
LABEL_21:
      v6 = v4 >= 0xA;
LABEL_28:
      if (v6)
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

uint64_t sub_24D7ADDFC(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xF)
  {
    return 0;
  }

  else
  {
    return dword_24DA8AFD8[a2];
  }
}

void sub_24D7ADE1C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(*a1 + 32) - 3) <= 0xFFFFFFFD && ((*(**(a1 + 8) + ((a3 >> 3) & 0x1FFFFFF8)) >> a3))
  {
    v6 = sub_24D7ADC84(*(a1 + 16), a3);
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

uint64_t sub_24D7ADF54(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  if ((a2 & 0x10) == 0)
  {
    return 0;
  }

  v4 = 0;
  v9 = (a1 + 276);
  v10 = 14592;
  do
  {
    if (v9[52] == 1)
    {
      sub_24D7AE2B0(a1, a3, a4, *v9, 1);
      ++v4;
    }

    v9 += 96;
    v10 -= 96;
  }

  while (v10);
  v11 = 0;
  v12 = 15312;
  do
  {
    if (*(a1 + v12) == 1)
    {
      sub_24D7AE110(a1, a3, a4, v11, 1);
      ++v4;
    }

    ++v11;
    v12 += 40;
  }

  while (v11 != 16);
  if ((a2 & 2) == 0)
  {
    v13 = 0;
    v14 = a1 + 14856;
    do
    {
      v15 = v14 + v13;
      if (*(v14 + v13 + 24) == 1)
      {
        *(a1 + v13 + 14872) = 0;
        v16 = *(a3 + 225816);
        if (*(a1 + 48) <= *(v16 + 8 * v20) && *(a1 + 56) >= *(v16 + 8 * *(a1 + v13 + 14832)))
        {
          sub_24D7979B0(a3 + 8, (v15 - 24));
          sub_24D7979B0(a3 + 32, &v20);
          sub_24D765934((a3 + 104), (v14 + v13));
          sub_24D765A5C((a3 + 152), (v14 + v13 + 8));
          sub_24D765934((a3 + 128), (v14 + v13 + 4));
          sub_24D769624((a3 + 56), (v14 + v13 - 8));
          v19 = 1;
          sub_24D797A84(a3 + 176, &v19);
          if (*(v15 + 24) == 1)
          {
            *(v15 + 24) = 0;
          }

          ++v4;
        }
      }

      v13 += 56;
    }

    while (v13 != 448);
  }

  return v4;
}

uint64_t sub_24D7AE110(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, char a5)
{
  v21 = a5;
  if (a4 <= 0xF)
  {
    v5 = a4;
    v6 = result + 40 * a4 + 15280;
    if (*(result + 40 * a4 + 15312) == 1)
    {
      v8 = *v6;
      v9 = *(result + 40 * a4 + 15296);
      v22 = *v6;
      v24 = v9;
      v23 = a3;
      v10 = *(a2 + 225816);
      if (*(result + 48) > *(v10 + 8 * a3) || *(result + 56) < *(v10 + 8 * v22))
      {
        goto LABEL_21;
      }

      sub_24D7979B0(a2 + 200, &v22);
      sub_24D7979B0(a2 + 224, &v23);
      sub_24D769624((a2 + 248), &v24);
      sub_24D765934((a2 + 272), &v24 + 2);
      v13 = *(a2 + 304);
      v12 = *(a2 + 312);
      if (v13 >= v12)
      {
        v15 = *(a2 + 296);
        v16 = (v13 - v15);
        v17 = v13 - v15 + 1;
        if (v17 < 0)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v18 = v12 - v15;
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0x3FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v17)
        {
          operator new();
        }

        v20 = v13 - v15;
        *v16 = v5;
        v14 = v16 + 1;
        memcpy(0, v15, v20);
        *(a2 + 296) = 0;
        *(a2 + 304) = v16 + 1;
        *(a2 + 312) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v13 = v5;
        v14 = v13 + 1;
      }

      *(a2 + 304) = v14;
      result = sub_24D797A84(a2 + 320, &v21);
      if (*(v6 + 32))
      {
LABEL_21:
        *(v6 + 32) = 0;
      }
    }
  }

  return result;
}

void sub_24D7AE2B0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5)
{
  if (a4 <= 0x97)
  {
    v29 = v5;
    v30 = v6;
    v8 = a1 + 96 * a4;
    if (*(v8 + 328) == 1)
    {
      v10 = v8 + 240;
      *(v8 + 248) = a3;
      v11 = (v8 + 248);
      *(v8 + 320) = a5;
      v12 = (v8 + 320);
      v13 = a2 + 352;
      v14 = a2 + 352 + 1000 * *(v8 + 276);
      v15 = *(a2 + 225816);
      v16 = *(v15 + 8 * *(v8 + 240));
      if (*(a1 + 48) > *(v15 + 8 * a3) || *(a1 + 56) < v16)
      {
        if (*(v14 + 984) == 1)
        {
          sub_24D79D448(v14 + 360);
        }

LABEL_27:
        if (*(v10 + 88) == 1)
        {
          *(v10 + 88) = 0;
        }

        return;
      }

      sub_24D79FFEC(v14, v10);
      sub_24D79FFEC((v14 + 48), v11);
      sub_24D7A0078((v14 + 96), (v10 + 16));
      if (*(v10 + 83))
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v10 + 24);
      }

      *&v28[0] = v18;
      sub_24D7A0078((v14 + 144), v28);
      if (*(v10 + 83))
      {
        v19 = 0;
      }

      else
      {
        v19 = *(v10 + 32);
      }

      LODWORD(v28[0]) = v19;
      sub_24D79FDF0((v14 + 192), v28);
      sub_24D797A84(v14 + 240, v12);
      LOBYTE(v28[0]) = *(v10 + 83);
      sub_24D797A84(v14 + 264, v28);
      if (!*(v14 + 328))
      {
        if (*(v10 + 75) != 1)
        {
LABEL_21:
          sub_24D7A03CC(v14 + 360);
          *&v28[0] = (*(v10 + 36) | (*(v14 + 40) << 8)) - 256;
          if (*(v10 + 83) == 1)
          {
            v23 = (a2 + 200376);
            sub_24D7979B0(v23, v28);
            if ((*(v10 + 37) & 0x8000000000000000) == 0)
            {
              v24 = a1 + 48 * *(v10 + 37) + 20496;
              if (*(a1 + 48 * *(v10 + 37) + 20536) == 1)
              {
                v25 = ((v23[1] - *v23) >> 3) - 1;
                *(a1 + 48 * *(v10 + 37) + 20504) = v25;
                *(v24 + 16) = 1;
                if (*(v24 + 28) == 1)
                {
                  v26 = *(*v23 + 8 * v25);
                  *(*(*(v13 + 1000 * v26 + 200) + (((*(v13 + 1000 * v26 + 224) + (v26 >> 8)) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(v13 + 1000 * v26 + 224) + (v26 >> 8)) & 0x3FF)) = *(v24 + 24);
                }
              }
            }
          }

          else
          {
            sub_24D7979B0(a2 + 200352, v28);
          }

          goto LABEL_27;
        }

        v20 = *(v14 + 40) - 1;
        memset(v28, 0, 37);
        sub_24D7A0100((v14 + 288), v20, v28);
        sub_24D7A01C4(v14 + 336, v20, 0);
      }

      v21 = (v10 + 38);
      memset(v27, 0, 37);
      if (!*(v10 + 75))
      {
        v21 = v27;
      }

      v22 = v21[1];
      v28[0] = *v21;
      v28[1] = v22;
      *(&v28[1] + 13) = *(v21 + 29);
      sub_24D7A0310(v14 + 288, v28);
      LOBYTE(v28[0]) = *(v10 + 75);
      sub_24D797A84(v14 + 336, v28);
      goto LABEL_21;
    }
  }
}

void sub_24D7AE578(int a1, uint64_t a2, uint64_t a3)
{
  v811 = v4;
  v812 = v3;
  v813 = v5;
  v814 = v6;
  switch(a1)
  {
    case 0:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v9 = *(a3 + 8);
      v10 = *(*a3 + 24) & 0x3FFFFLL;
      v810 = v10;
      v11 = *v9;
      v12 = **(a3 + 16);
      if (v11 == 1)
      {
        *(*(v12 + 200528) - 8) += v10;
      }

      else
      {
        sub_24D769624((v12 + 200520), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v110 = *(a3 + 8);
      v111 = *(*a3 + 28) & 0x3FFFF;
      v810 = v111;
      v112 = *v110;
      v113 = **(a3 + 16);
      if (v112 == 1)
      {
        *(*(v113 + 200552) - 8) += v111;
      }

      else
      {
        sub_24D769624((v113 + 200544), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v171 = *(a3 + 8);
      v172 = *(*a3 + 24) >> 50;
      v810 = v172;
      v173 = *v171;
      v174 = **(a3 + 16);
      if (v173 == 1)
      {
        *(*(v174 + 200576) - 8) += v172;
      }

      else
      {
        sub_24D769624((v174 + 200568), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v229 = *(a3 + 8);
      v230 = *(*a3 + 32) & 0x1FFFLL;
      v810 = v230;
      v231 = *v229;
      v232 = **(a3 + 16);
      if (v231 == 1)
      {
        *(*(v232 + 200600) - 8) += v230;
      }

      else
      {
        sub_24D769624((v232 + 200592), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v283 = *(a3 + 8);
      v284 = (*(*a3 + 32) >> 16) & 0x3FFFLL;
      v810 = v284;
      v285 = *v283;
      v286 = **(a3 + 16);
      if (v285 == 1)
      {
        *(*(v286 + 200624) - 8) += v284;
      }

      else
      {
        sub_24D769624((v286 + 200616), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v333 = *(a3 + 8);
      v334 = *(*a3 + 36) & 0x3FFF;
      v810 = v334;
      v335 = *v333;
      v336 = **(a3 + 16);
      if (v335 == 1)
      {
        *(*(v336 + 200648) - 8) += v334;
      }

      else
      {
        sub_24D769624((v336 + 200640), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v381 = *(a3 + 8);
      v382 = *(*a3 + 38) & 0x3FFF;
      v810 = v382;
      v383 = *v381;
      v384 = **(a3 + 16);
      if (v383 == 1)
      {
        *(*(v384 + 200672) - 8) += v382;
      }

      else
      {
        sub_24D769624((v384 + 200664), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v425 = *(a3 + 8);
      v426 = *(*a3 + 40) & 0x3FFFLL;
      v810 = v426;
      v427 = *v425;
      v428 = **(a3 + 16);
      if (v427 == 1)
      {
        *(*(v428 + 200696) - 8) += v426;
      }

      else
      {
        sub_24D769624((v428 + 200688), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v465 = *(a3 + 8);
      v466 = (*(*a3 + 40) >> 16) & 0x3FFFLL;
      v810 = v466;
      v467 = *v465;
      v468 = **(a3 + 16);
      if (v467 == 1)
      {
        *(*(v468 + 200720) - 8) += v466;
      }

      else
      {
        sub_24D769624((v468 + 200712), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v503 = *(a3 + 8);
      v504 = *(*a3 + 44) & 0x3FFF;
      v810 = v504;
      v505 = *v503;
      v506 = **(a3 + 16);
      if (v505 == 1)
      {
        *(*(v506 + 200744) - 8) += v504;
      }

      else
      {
        sub_24D769624((v506 + 200736), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v535 = *(a3 + 8);
      v536 = *(*a3 + 46) & 0x1FF;
      v810 = v536;
      v537 = *v535;
      v538 = **(a3 + 16);
      if (v537 == 1)
      {
        *(*(v538 + 200768) - 8) += v536;
      }

      else
      {
        sub_24D769624((v538 + 200760), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v561 = *(a3 + 8);
      v562 = *(*a3 + 48) & 0x1FFLL;
      v810 = v562;
      v563 = *v561;
      v564 = **(a3 + 16);
      if (v563 == 1)
      {
        *(*(v564 + 200792) - 8) += v562;
      }

      else
      {
        sub_24D769624((v564 + 200784), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v585 = *(a3 + 8);
      v586 = *(*a3 + 52) & 0x3FFF;
      v810 = v586;
      v587 = *v585;
      v588 = **(a3 + 16);
      if (v587 == 1)
      {
        *(*(v588 + 200816) - 8) += v586;
      }

      else
      {
        sub_24D769624((v588 + 200808), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v609 = *(a3 + 8);
      v610 = *(*a3 + 54) & 0x3FFF;
      v810 = v610;
      v611 = *v609;
      v612 = **(a3 + 16);
      if (v611 == 1)
      {
        *(*(v612 + 200840) - 8) += v610;
      }

      else
      {
        sub_24D769624((v612 + 200832), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v633 = *(a3 + 8);
      v634 = *(*a3 + 56) & 0x3FFFLL;
      v810 = v634;
      v635 = *v633;
      v636 = **(a3 + 16);
      if (v635 == 1)
      {
        *(*(v636 + 200864) - 8) += v634;
      }

      else
      {
        sub_24D769624((v636 + 200856), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v655 = *(a3 + 8);
      v656 = (*(*a3 + 56) >> 16) & 0x3FFFLL;
      v810 = v656;
      v657 = *v655;
      v658 = **(a3 + 16);
      if (v657 == 1)
      {
        *(*(v658 + 200888) - 8) += v656;
      }

      else
      {
        sub_24D769624((v658 + 200880), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v673 = *(a3 + 8);
      v674 = *(*a3 + 60) & 0x3FFF;
      v810 = v674;
      v675 = *v673;
      v676 = **(a3 + 16);
      if (v675 == 1)
      {
        *(*(v676 + 200912) - 8) += v674;
      }

      else
      {
        sub_24D769624((v676 + 200904), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v689 = *(a3 + 8);
      v690 = *(*a3 + 62) & 0x3FFF;
      v810 = v690;
      v691 = *v689;
      v692 = **(a3 + 16);
      if (v691 == 1)
      {
        *(*(v692 + 200936) - 8) += v690;
      }

      else
      {
        sub_24D769624((v692 + 200928), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v703 = *(a3 + 8);
      v704 = *(*a3 + 64) & 0x1FFLL;
      v810 = v704;
      v705 = *v703;
      v706 = **(a3 + 16);
      if (v705 == 1)
      {
        *(*(v706 + 200960) - 8) += v704;
LABEL_562:
        v715 = *(a3 + 8);
        v78 = (*(*a3 + 64) >> 16) & 0x1FFLL;
        v810 = v78;
        v716 = *v715;
        v80 = **(a3 + 16);
        if (v716 == 1)
        {
          v81 = 4376;
          goto LABEL_564;
        }

        v142 = v80 + 25122;
        goto LABEL_572;
      }

      sub_24D769624((v706 + 200952), &v810);
      if ((*(a2 + 40) - 3) <= 0xFFFFFFFD)
      {
        goto LABEL_562;
      }

      return;
    case 1:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v49 = *(a3 + 8);
      v50 = *(*a3 + 24) & 0xFFFFFLL;
      v810 = v50;
      v51 = *v49;
      v52 = **(a3 + 16);
      if (v51 == 1)
      {
        *(*(v52 + 201008) - 8) += v50;
      }

      else
      {
        sub_24D769624((v52 + 201000), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v114 = *(a3 + 8);
      v115 = *(*a3 + 28) & 0xFFFFF;
      v810 = v115;
      v116 = *v114;
      v117 = **(a3 + 16);
      if (v116 == 1)
      {
        *(*(v117 + 201032) - 8) += v115;
      }

      else
      {
        sub_24D769624((v117 + 201024), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v175 = *(a3 + 8);
      v176 = *(*a3 + 32) & 0xFFFFFLL;
      v810 = v176;
      v177 = *v175;
      v178 = **(a3 + 16);
      if (v177 == 1)
      {
        *(*(v178 + 201056) - 8) += v176;
      }

      else
      {
        sub_24D769624((v178 + 201048), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v233 = *(a3 + 8);
      v234 = *(*a3 + 36) & 0xFFFFF;
      v810 = v234;
      v235 = *v233;
      v236 = **(a3 + 16);
      if (v235 == 1)
      {
        *(*(v236 + 201080) - 8) += v234;
      }

      else
      {
        sub_24D769624((v236 + 201072), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v287 = *(a3 + 8);
      v288 = *(*a3 + 40) & 0xFFFFFLL;
      v810 = v288;
      v289 = *v287;
      v290 = **(a3 + 16);
      if (v289 == 1)
      {
        *(*(v290 + 201104) - 8) += v288;
      }

      else
      {
        sub_24D769624((v290 + 201096), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v337 = *(a3 + 8);
      v338 = *(*a3 + 44) & 0xFFFFF;
      v810 = v338;
      v339 = *v337;
      v340 = **(a3 + 16);
      if (v339 == 1)
      {
        *(*(v340 + 201128) - 8) += v338;
      }

      else
      {
        sub_24D769624((v340 + 201120), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v385 = *(a3 + 8);
      v386 = *(*a3 + 48) & 0xFFFFFLL;
      v810 = v386;
      v387 = *v385;
      v388 = **(a3 + 16);
      if (v387 == 1)
      {
        *(*(v388 + 201152) - 8) += v386;
      }

      else
      {
        sub_24D769624((v388 + 201144), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v429 = *(a3 + 8);
      v430 = *(*a3 + 52) & 0xFFFFF;
      v810 = v430;
      v431 = *v429;
      v432 = **(a3 + 16);
      if (v431 == 1)
      {
        *(*(v432 + 201176) - 8) += v430;
      }

      else
      {
        sub_24D769624((v432 + 201168), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v469 = *(a3 + 8);
      v470 = *(*a3 + 56);
      v810 = v470;
      v471 = *v469;
      v472 = **(a3 + 16);
      if (v471 == 1)
      {
        *(*(v472 + 201200) - 8) += v470;
      }

      else
      {
        sub_24D769624((v472 + 201192), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v507 = *(a3 + 8);
      v78 = *(*a3 + 56) >> 16;
      v810 = v78;
      v508 = *v507;
      v80 = **(a3 + 16);
      if (v508 == 1)
      {
        v81 = 4616;
        goto LABEL_564;
      }

      v142 = v80 + 25152;
      goto LABEL_572;
    case 2:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v33 = *(a3 + 8);
      v34 = (*(*a3 + 24) >> 16) & 0x7FFFLL;
      v810 = v34;
      v35 = *v33;
      v36 = **(a3 + 16);
      if (v35 == 1)
      {
        *(*(v36 + 201248) - 8) += v34;
      }

      else
      {
        sub_24D769624((v36 + 201240), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v94 = *(a3 + 8);
      v95 = *(*a3 + 28) & 0x7FFF;
      v810 = v95;
      v96 = *v94;
      v97 = **(a3 + 16);
      if (v96 == 1)
      {
        *(*(v97 + 201272) - 8) += v95;
      }

      else
      {
        sub_24D769624((v97 + 201264), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v155 = *(a3 + 8);
      v156 = *(*a3 + 30) & 0x7FFF;
      v810 = v156;
      v157 = *v155;
      v158 = **(a3 + 16);
      if (v157 == 1)
      {
        *(*(v158 + 201296) - 8) += v156;
      }

      else
      {
        sub_24D769624((v158 + 201288), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v213 = *(a3 + 8);
      v214 = *(*a3 + 32) & 0x7FFFLL;
      v810 = v214;
      v215 = *v213;
      v216 = **(a3 + 16);
      if (v215 == 1)
      {
        *(*(v216 + 201320) - 8) += v214;
      }

      else
      {
        sub_24D769624((v216 + 201312), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v267 = *(a3 + 8);
      v268 = (*(*a3 + 32) >> 16) & 0x7FFFLL;
      v810 = v268;
      v269 = *v267;
      v270 = **(a3 + 16);
      if (v269 == 1)
      {
        *(*(v270 + 201344) - 8) += v268;
      }

      else
      {
        sub_24D769624((v270 + 201336), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v317 = *(a3 + 8);
      v318 = *(*a3 + 36) & 0x7FFF;
      v810 = v318;
      v319 = *v317;
      v320 = **(a3 + 16);
      if (v319 == 1)
      {
        *(*(v320 + 201368) - 8) += v318;
      }

      else
      {
        sub_24D769624((v320 + 201360), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v365 = *(a3 + 8);
      v366 = *(*a3 + 38) & 0x7FFF;
      v810 = v366;
      v367 = *v365;
      v368 = **(a3 + 16);
      if (v367 == 1)
      {
        *(*(v368 + 201392) - 8) += v366;
      }

      else
      {
        sub_24D769624((v368 + 201384), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v409 = *(a3 + 8);
      v410 = *(*a3 + 40) & 0x7FFFLL;
      v810 = v410;
      v411 = *v409;
      v412 = **(a3 + 16);
      if (v411 == 1)
      {
        *(*(v412 + 201416) - 8) += v410;
      }

      else
      {
        sub_24D769624((v412 + 201408), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v449 = *(a3 + 8);
      v450 = (*(*a3 + 40) >> 16) & 0x7FFFLL;
      v810 = v450;
      v451 = *v449;
      v452 = **(a3 + 16);
      if (v451 == 1)
      {
        *(*(v452 + 201440) - 8) += v450;
      }

      else
      {
        sub_24D769624((v452 + 201432), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v489 = *(a3 + 8);
      v490 = *(*a3 + 44) & 0x7FFF;
      v810 = v490;
      v491 = *v489;
      v492 = **(a3 + 16);
      if (v491 == 1)
      {
        *(*(v492 + 201464) - 8) += v490;
      }

      else
      {
        sub_24D769624((v492 + 201456), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v523 = *(a3 + 8);
      v524 = *(*a3 + 46) & 0x7FFF;
      v810 = v524;
      v525 = *v523;
      v526 = **(a3 + 16);
      if (v525 == 1)
      {
        *(*(v526 + 201488) - 8) += v524;
      }

      else
      {
        sub_24D769624((v526 + 201480), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v551 = *(a3 + 8);
      v552 = *(*a3 + 48) & 0x7FFFLL;
      v810 = v552;
      v553 = *v551;
      v554 = **(a3 + 16);
      if (v553 == 1)
      {
        *(*(v554 + 201512) - 8) += v552;
      }

      else
      {
        sub_24D769624((v554 + 201504), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v577 = *(a3 + 8);
      v578 = (*(*a3 + 48) >> 16) & 0x7FFFLL;
      v810 = v578;
      v579 = *v577;
      v580 = **(a3 + 16);
      if (v579 == 1)
      {
        *(*(v580 + 201536) - 8) += v578;
      }

      else
      {
        sub_24D769624((v580 + 201528), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v601 = *(a3 + 8);
      v602 = *(*a3 + 52) & 0x7FFF;
      v810 = v602;
      v603 = *v601;
      v604 = **(a3 + 16);
      if (v603 == 1)
      {
        *(*(v604 + 201560) - 8) += v602;
      }

      else
      {
        sub_24D769624((v604 + 201552), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v625 = *(a3 + 8);
      v626 = *(*a3 + 54) & 0x7FFF;
      v810 = v626;
      v627 = *v625;
      v628 = **(a3 + 16);
      if (v627 == 1)
      {
        *(*(v628 + 201584) - 8) += v626;
      }

      else
      {
        sub_24D769624((v628 + 201576), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v647 = *(a3 + 8);
      v648 = *(*a3 + 56) & 0x7FFFLL;
      v810 = v648;
      v649 = *v647;
      v650 = **(a3 + 16);
      if (v649 == 1)
      {
        *(*(v650 + 201608) - 8) += v648;
      }

      else
      {
        sub_24D769624((v650 + 201600), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v667 = *(a3 + 8);
      v668 = (*(*a3 + 56) >> 16) & 0x7FFFLL;
      v810 = v668;
      v669 = *v667;
      v670 = **(a3 + 16);
      if (v669 == 1)
      {
        *(*(v670 + 201632) - 8) += v668;
      }

      else
      {
        sub_24D769624((v670 + 201624), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v685 = *(a3 + 8);
      v686 = *(*a3 + 60) & 0x7FFF;
      v810 = v686;
      v687 = *v685;
      v688 = **(a3 + 16);
      if (v687 == 1)
      {
        *(*(v688 + 201656) - 8) += v686;
      }

      else
      {
        sub_24D769624((v688 + 201648), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v699 = *(a3 + 8);
      v700 = *(*a3 + 62) & 0x7FFF;
      v810 = v700;
      v701 = *v699;
      v702 = **(a3 + 16);
      if (v701 == 1)
      {
        *(*(v702 + 201680) - 8) += v700;
      }

      else
      {
        sub_24D769624((v702 + 201672), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v711 = *(a3 + 8);
      v712 = *(*a3 + 64) & 0x7FFFLL;
      v810 = v712;
      v713 = *v711;
      v714 = **(a3 + 16);
      if (v713 == 1)
      {
        *(*(v714 + 201704) - 8) += v712;
      }

      else
      {
        sub_24D769624((v714 + 201696), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v722 = *(a3 + 8);
      v723 = (*(*a3 + 64) >> 16) & 0x7FFFLL;
      v810 = v723;
      v724 = *v722;
      v725 = **(a3 + 16);
      if (v724 == 1)
      {
        *(*(v725 + 201728) - 8) += v723;
      }

      else
      {
        sub_24D769624((v725 + 201720), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v730 = *(a3 + 8);
      v731 = *(*a3 + 68) & 0x7FFF;
      v810 = v731;
      v732 = *v730;
      v733 = **(a3 + 16);
      if (v732 == 1)
      {
        *(*(v733 + 201752) - 8) += v731;
      }

      else
      {
        sub_24D769624((v733 + 201744), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v738 = *(a3 + 8);
      v739 = *(*a3 + 70) & 0x7FFF;
      v810 = v739;
      v740 = *v738;
      v741 = **(a3 + 16);
      if (v740 == 1)
      {
        *(*(v741 + 201776) - 8) += v739;
      }

      else
      {
        sub_24D769624((v741 + 201768), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v746 = *(a3 + 8);
      v747 = *(*a3 + 72) & 0x7FFFLL;
      v810 = v747;
      v748 = *v746;
      v749 = **(a3 + 16);
      if (v748 == 1)
      {
        *(*(v749 + 201800) - 8) += v747;
      }

      else
      {
        sub_24D769624((v749 + 201792), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v754 = *(a3 + 8);
      v755 = (*(*a3 + 72) >> 16) & 0x7FFFLL;
      v810 = v755;
      v756 = *v754;
      v757 = **(a3 + 16);
      if (v756 == 1)
      {
        *(*(v757 + 201824) - 8) += v755;
      }

      else
      {
        sub_24D769624((v757 + 201816), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v762 = *(a3 + 8);
      v763 = *(*a3 + 76) & 0x7FFF;
      v810 = v763;
      v764 = *v762;
      v765 = **(a3 + 16);
      if (v764 == 1)
      {
        *(*(v765 + 201848) - 8) += v763;
      }

      else
      {
        sub_24D769624((v765 + 201840), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v770 = *(a3 + 8);
      v771 = *(*a3 + 78) & 0x7FFF;
      v810 = v771;
      v772 = *v770;
      v773 = **(a3 + 16);
      if (v772 == 1)
      {
        *(*(v773 + 201872) - 8) += v771;
      }

      else
      {
        sub_24D769624((v773 + 201864), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v778 = *(a3 + 8);
      v779 = *(*a3 + 80) & 0x7FFFLL;
      v810 = v779;
      v780 = *v778;
      v781 = **(a3 + 16);
      if (v780 == 1)
      {
        *(*(v781 + 201896) - 8) += v779;
      }

      else
      {
        sub_24D769624((v781 + 201888), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v786 = *(a3 + 8);
      v787 = (*(*a3 + 80) >> 16) & 0x7FFFLL;
      v810 = v787;
      v788 = *v786;
      v789 = **(a3 + 16);
      if (v788 == 1)
      {
        *(*(v789 + 201920) - 8) += v787;
      }

      else
      {
        sub_24D769624((v789 + 201912), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v794 = *(a3 + 8);
      v795 = *(*a3 + 84) & 0x7FFF;
      v810 = v795;
      v796 = *v794;
      v797 = **(a3 + 16);
      if (v796 == 1)
      {
        *(*(v797 + 201944) - 8) += v795;
      }

      else
      {
        sub_24D769624((v797 + 201936), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v802 = *(a3 + 8);
      v803 = *(*a3 + 86) & 0x7FFF;
      v810 = v803;
      v804 = *v802;
      v805 = **(a3 + 16);
      if (v804 == 1)
      {
        *(*(v805 + 201968) - 8) += v803;
      }

      else
      {
        sub_24D769624((v805 + 201960), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v808 = *(a3 + 8);
      v78 = *(*a3 + 88) & 0x7FFF;
      v810 = v78;
      v809 = *v808;
      v80 = **(a3 + 16);
      if (v809 == 1)
      {
        v81 = 5384;
        goto LABEL_564;
      }

      v142 = v80 + 25248;
      goto LABEL_572;
    case 3:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v41 = *(a3 + 8);
      v42 = *(*a3 + 26);
      v810 = v42;
      v43 = *v41;
      v44 = **(a3 + 16);
      if (v43 == 1)
      {
        *(*(v44 + 202016) - 8) += v42;
      }

      else
      {
        sub_24D769624((v44 + 202008), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v102 = *(a3 + 8);
      v103 = *(*a3 + 28);
      v810 = v103;
      v104 = *v102;
      v105 = **(a3 + 16);
      if (v104 == 1)
      {
        *(*(v105 + 202040) - 8) += v103;
      }

      else
      {
        sub_24D769624((v105 + 202032), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v163 = *(a3 + 8);
      v164 = HIWORD(*(*a3 + 24));
      v810 = v164;
      v165 = *v163;
      v166 = **(a3 + 16);
      if (v165 == 1)
      {
        *(*(v166 + 202064) - 8) += v164;
      }

      else
      {
        sub_24D769624((v166 + 202056), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v221 = *(a3 + 8);
      v222 = *(*a3 + 32);
      v810 = v222;
      v223 = *v221;
      v224 = **(a3 + 16);
      if (v223 == 1)
      {
        *(*(v224 + 202088) - 8) += v222;
      }

      else
      {
        sub_24D769624((v224 + 202080), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v275 = *(a3 + 8);
      v276 = *(*a3 + 34);
      v810 = v276;
      v277 = *v275;
      v278 = **(a3 + 16);
      if (v277 == 1)
      {
        *(*(v278 + 202112) - 8) += v276;
      }

      else
      {
        sub_24D769624((v278 + 202104), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v325 = *(a3 + 8);
      v326 = *(*a3 + 36) & 0x7FFF;
      v810 = v326;
      v327 = *v325;
      v328 = **(a3 + 16);
      if (v327 == 1)
      {
        *(*(v328 + 202136) - 8) += v326;
      }

      else
      {
        sub_24D769624((v328 + 202128), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v373 = *(a3 + 8);
      v374 = HIWORD(*(*a3 + 32));
      v810 = v374;
      v375 = *v373;
      v376 = **(a3 + 16);
      if (v375 == 1)
      {
        *(*(v376 + 202160) - 8) += v374;
      }

      else
      {
        sub_24D769624((v376 + 202152), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v417 = *(a3 + 8);
      v418 = *(*a3 + 40);
      v810 = v418;
      v419 = *v417;
      v420 = **(a3 + 16);
      if (v419 == 1)
      {
        *(*(v420 + 202184) - 8) += v418;
      }

      else
      {
        sub_24D769624((v420 + 202176), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v457 = *(a3 + 8);
      v458 = *(*a3 + 42);
      v810 = v458;
      v459 = *v457;
      v460 = **(a3 + 16);
      if (v459 == 1)
      {
        *(*(v460 + 202208) - 8) += v458;
      }

      else
      {
        sub_24D769624((v460 + 202200), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v495 = *(a3 + 8);
      v496 = *(*a3 + 44);
      v810 = v496;
      v497 = *v495;
      v498 = **(a3 + 16);
      if (v497 == 1)
      {
        *(*(v498 + 202232) - 8) += v496;
      }

      else
      {
        sub_24D769624((v498 + 202224), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v527 = *(a3 + 8);
      v528 = HIWORD(*(*a3 + 40));
      v810 = v528;
      v529 = *v527;
      v530 = **(a3 + 16);
      if (v529 == 1)
      {
        *(*(v530 + 202256) - 8) += v528;
      }

      else
      {
        sub_24D769624((v530 + 202248), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v555 = *(a3 + 8);
      v78 = *(*a3 + 48) & 0x7FFF;
      v810 = v78;
      v556 = *v555;
      v80 = **(a3 + 16);
      if (v556 == 1)
      {
        v81 = 5672;
        goto LABEL_564;
      }

      v142 = v80 + 25284;
      goto LABEL_572;
    case 4:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v21 = *(a3 + 8);
      v22 = (*(*a3 + 24) >> 1) & 0x3FFFFLL;
      v810 = v22;
      v23 = *v21;
      v24 = **(a3 + 16);
      if (v23 == 1)
      {
        *(*(v24 + 202304) - 8) += v22;
      }

      else
      {
        sub_24D769624((v24 + 202296), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v82 = *(a3 + 8);
      v83 = *(*a3 + 28) & 0x3FFFF;
      v810 = v83;
      v84 = *v82;
      v85 = **(a3 + 16);
      if (v84 == 1)
      {
        *(*(v85 + 202328) - 8) += v83;
      }

      else
      {
        sub_24D769624((v85 + 202320), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v143 = *(a3 + 8);
      v144 = *(*a3 + 32) & 0x3FFFFLL;
      v810 = v144;
      v145 = *v143;
      v146 = **(a3 + 16);
      if (v145 == 1)
      {
        *(*(v146 + 202352) - 8) += v144;
      }

      else
      {
        sub_24D769624((v146 + 202344), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v201 = *(a3 + 8);
      v202 = *(*a3 + 36) & 0x3FFFF;
      v810 = v202;
      v203 = *v201;
      v204 = **(a3 + 16);
      if (v203 == 1)
      {
        *(*(v204 + 202376) - 8) += v202;
      }

      else
      {
        sub_24D769624((v204 + 202368), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v255 = *(a3 + 8);
      v256 = *(*a3 + 40) & 0x3FFFFLL;
      v810 = v256;
      v257 = *v255;
      v258 = **(a3 + 16);
      if (v257 == 1)
      {
        *(*(v258 + 202400) - 8) += v256;
      }

      else
      {
        sub_24D769624((v258 + 202392), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v305 = *(a3 + 8);
      v306 = *(*a3 + 44) & 0x3FFFF;
      v810 = v306;
      v307 = *v305;
      v308 = **(a3 + 16);
      if (v307 == 1)
      {
        *(*(v308 + 202424) - 8) += v306;
      }

      else
      {
        sub_24D769624((v308 + 202416), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v353 = *(a3 + 8);
      v354 = *(*a3 + 48) & 0xFFFFFLL;
      v810 = v354;
      v355 = *v353;
      v356 = **(a3 + 16);
      if (v355 == 1)
      {
        *(*(v356 + 202448) - 8) += v354;
      }

      else
      {
        sub_24D769624((v356 + 202440), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v399 = *(a3 + 8);
      v400 = *(*a3 + 52) & 0xFFFFF;
      v810 = v400;
      v401 = *v399;
      v402 = **(a3 + 16);
      if (v401 == 1)
      {
        *(*(v402 + 202472) - 8) += v400;
      }

      else
      {
        sub_24D769624((v402 + 202464), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v441 = *(a3 + 8);
      v442 = *(*a3 + 56) & 0xFFFFFLL;
      v810 = v442;
      v443 = *v441;
      v444 = **(a3 + 16);
      if (v443 == 1)
      {
        *(*(v444 + 202496) - 8) += v442;
      }

      else
      {
        sub_24D769624((v444 + 202488), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v481 = *(a3 + 8);
      v482 = *(*a3 + 60);
      v810 = v482;
      v483 = *v481;
      v484 = **(a3 + 16);
      if (v483 == 1)
      {
        *(*(v484 + 202520) - 8) += v482;
      }

      else
      {
        sub_24D769624((v484 + 202512), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v517 = *(a3 + 8);
      v78 = HIWORD(*(*a3 + 56));
      v810 = v78;
      v518 = *v517;
      v80 = **(a3 + 16);
      if (v518 == 1)
      {
        v81 = 5936;
        goto LABEL_564;
      }

      v142 = v80 + 25317;
      goto LABEL_572;
    case 5:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v53 = *(a3 + 8);
      v54 = (*(*a3 + 24) >> 1) & 0x7FFFFLL;
      v810 = v54;
      v55 = *v53;
      v56 = **(a3 + 16);
      if (v55 == 1)
      {
        *(*(v56 + 202568) - 8) += v54;
      }

      else
      {
        sub_24D769624((v56 + 202560), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v118 = *(a3 + 8);
      v119 = *(*a3 + 28) & 0x1FFFF;
      v810 = v119;
      v120 = *v118;
      v121 = **(a3 + 16);
      if (v120 == 1)
      {
        *(*(v121 + 202592) - 8) += v119;
      }

      else
      {
        sub_24D769624((v121 + 202584), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v179 = *(a3 + 8);
      v180 = *(*a3 + 32) & 0xFFFFFLL;
      v810 = v180;
      v181 = *v179;
      v182 = **(a3 + 16);
      if (v181 == 1)
      {
        *(*(v182 + 202616) - 8) += v180;
      }

      else
      {
        sub_24D769624((v182 + 202608), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v237 = *(a3 + 8);
      v78 = *(*a3 + 36) & 0xFFFFF;
      v810 = v78;
      v238 = *v237;
      v80 = **(a3 + 16);
      if (v238 == 1)
      {
        v81 = 6032;
        goto LABEL_564;
      }

      v142 = v80 + 25329;
      goto LABEL_572;
    case 6:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v61 = *(a3 + 8);
      v62 = (*(*a3 + 24) >> 1) & 0x7FFFFLL;
      v810 = v62;
      v63 = *v61;
      v64 = **(a3 + 16);
      if (v63 == 1)
      {
        *(*(v64 + 202664) - 8) += v62;
      }

      else
      {
        sub_24D769624((v64 + 202656), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v126 = *(a3 + 8);
      v127 = *(*a3 + 28) & 0x7FFFF;
      v810 = v127;
      v128 = *v126;
      v129 = **(a3 + 16);
      if (v128 == 1)
      {
        *(*(v129 + 202688) - 8) += v127;
      }

      else
      {
        sub_24D769624((v129 + 202680), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v187 = *(a3 + 8);
      v188 = *(*a3 + 32) & 0x7FFFFLL;
      v810 = v188;
      v189 = *v187;
      v190 = **(a3 + 16);
      if (v189 == 1)
      {
        *(*(v190 + 202712) - 8) += v188;
      }

      else
      {
        sub_24D769624((v190 + 202704), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v243 = *(a3 + 8);
      v244 = *(*a3 + 36) & 0x7FFFF;
      v810 = v244;
      v245 = *v243;
      v246 = **(a3 + 16);
      if (v245 == 1)
      {
        *(*(v246 + 202736) - 8) += v244;
      }

      else
      {
        sub_24D769624((v246 + 202728), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v295 = *(a3 + 8);
      v296 = *(*a3 + 40) & 0x7FFFFLL;
      v810 = v296;
      v297 = *v295;
      v298 = **(a3 + 16);
      if (v297 == 1)
      {
        *(*(v298 + 202760) - 8) += v296;
      }

      else
      {
        sub_24D769624((v298 + 202752), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v345 = *(a3 + 8);
      v346 = *(*a3 + 44) & 0x7FFFF;
      v810 = v346;
      v347 = *v345;
      v348 = **(a3 + 16);
      if (v347 == 1)
      {
        *(*(v348 + 202784) - 8) += v346;
      }

      else
      {
        sub_24D769624((v348 + 202776), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v393 = *(a3 + 8);
      v394 = *(*a3 + 48) & 0x7FFFFLL;
      v810 = v394;
      v395 = *v393;
      v396 = **(a3 + 16);
      if (v395 == 1)
      {
        *(*(v396 + 202808) - 8) += v394;
      }

      else
      {
        sub_24D769624((v396 + 202800), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v437 = *(a3 + 8);
      v438 = *(*a3 + 56) & 0x7FFFFLL;
      v810 = v438;
      v439 = *v437;
      v440 = **(a3 + 16);
      if (v439 == 1)
      {
        *(*(v440 + 202832) - 8) += v438;
      }

      else
      {
        sub_24D769624((v440 + 202824), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v477 = *(a3 + 8);
      v478 = *(*a3 + 60) & 0x7FFFF;
      v810 = v478;
      v479 = *v477;
      v480 = **(a3 + 16);
      if (v479 == 1)
      {
        *(*(v480 + 202856) - 8) += v478;
      }

      else
      {
        sub_24D769624((v480 + 202848), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v513 = *(a3 + 8);
      v514 = *(*a3 + 64) & 0x7FFFFLL;
      v810 = v514;
      v515 = *v513;
      v516 = **(a3 + 16);
      if (v515 == 1)
      {
        *(*(v516 + 202880) - 8) += v514;
      }

      else
      {
        sub_24D769624((v516 + 202872), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v543 = *(a3 + 8);
      v544 = *(*a3 + 68) & 0x7FFFF;
      v810 = v544;
      v545 = *v543;
      v546 = **(a3 + 16);
      if (v545 == 1)
      {
        *(*(v546 + 202904) - 8) += v544;
      }

      else
      {
        sub_24D769624((v546 + 202896), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v569 = *(a3 + 8);
      v570 = *(*a3 + 72) & 0x7FFFFLL;
      v810 = v570;
      v571 = *v569;
      v572 = **(a3 + 16);
      if (v571 == 1)
      {
        *(*(v572 + 202928) - 8) += v570;
      }

      else
      {
        sub_24D769624((v572 + 202920), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v593 = *(a3 + 8);
      v594 = *(*a3 + 76) & 0x7FFFF;
      v810 = v594;
      v595 = *v593;
      v596 = **(a3 + 16);
      if (v595 == 1)
      {
        *(*(v596 + 202952) - 8) += v594;
      }

      else
      {
        sub_24D769624((v596 + 202944), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v617 = *(a3 + 8);
      v618 = *(*a3 + 80) & 0x7FFFFLL;
      v810 = v618;
      v619 = *v617;
      v620 = **(a3 + 16);
      if (v619 == 1)
      {
        *(*(v620 + 202976) - 8) += v618;
      }

      else
      {
        sub_24D769624((v620 + 202968), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v639 = *(a3 + 8);
      v640 = *(*a3 + 84) & 0x7FFFF;
      v810 = v640;
      v641 = *v639;
      v642 = **(a3 + 16);
      if (v641 == 1)
      {
        *(*(v642 + 203000) - 8) += v640;
      }

      else
      {
        sub_24D769624((v642 + 202992), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v659 = *(a3 + 8);
      v660 = *(*a3 + 88) & 0x7FFFFLL;
      v810 = v660;
      v661 = *v659;
      v662 = **(a3 + 16);
      if (v661 == 1)
      {
        *(*(v662 + 203024) - 8) += v660;
      }

      else
      {
        sub_24D769624((v662 + 203016), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v677 = *(a3 + 8);
      v678 = *(*a3 + 96) & 0x7FFFFLL;
      v810 = v678;
      v679 = *v677;
      v680 = **(a3 + 16);
      if (v679 == 1)
      {
        *(*(v680 + 203048) - 8) += v678;
      }

      else
      {
        sub_24D769624((v680 + 203040), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v693 = *(a3 + 8);
      v78 = *(*a3 + 100) & 0x7FFFF;
      v810 = v78;
      v694 = *v693;
      v80 = **(a3 + 16);
      if (v694 == 1)
      {
        v81 = 6464;
        goto LABEL_564;
      }

      v142 = v80 + 25383;
      goto LABEL_572;
    case 7:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v45 = *(a3 + 8);
      v46 = *(*a3 + 24) >> 1;
      v810 = v46;
      v47 = *v45;
      v48 = **(a3 + 16);
      if (v47 == 1)
      {
        *(*(v48 + 203096) - 8) += v46;
      }

      else
      {
        sub_24D769624((v48 + 203088), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v106 = *(a3 + 8);
      v107 = (*(*a3 + 24) >> 16) & 0x7FFFLL;
      v810 = v107;
      v108 = *v106;
      v109 = **(a3 + 16);
      if (v108 == 1)
      {
        *(*(v109 + 203120) - 8) += v107;
      }

      else
      {
        sub_24D769624((v109 + 203112), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v167 = *(a3 + 8);
      v168 = *(*a3 + 28) & 0x7FFF;
      v810 = v168;
      v169 = *v167;
      v170 = **(a3 + 16);
      if (v169 == 1)
      {
        *(*(v170 + 203144) - 8) += v168;
      }

      else
      {
        sub_24D769624((v170 + 203136), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v225 = *(a3 + 8);
      v226 = *(*a3 + 30) & 0x7FFF;
      v810 = v226;
      v227 = *v225;
      v228 = **(a3 + 16);
      if (v227 == 1)
      {
        *(*(v228 + 203168) - 8) += v226;
      }

      else
      {
        sub_24D769624((v228 + 203160), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v279 = *(a3 + 8);
      v280 = *(*a3 + 32) & 0x7FFFLL;
      v810 = v280;
      v281 = *v279;
      v282 = **(a3 + 16);
      if (v281 == 1)
      {
        *(*(v282 + 203192) - 8) += v280;
      }

      else
      {
        sub_24D769624((v282 + 203184), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v329 = *(a3 + 8);
      v330 = (*(*a3 + 32) >> 16) & 0x7FFFLL;
      v810 = v330;
      v331 = *v329;
      v332 = **(a3 + 16);
      if (v331 == 1)
      {
        *(*(v332 + 203216) - 8) += v330;
      }

      else
      {
        sub_24D769624((v332 + 203208), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v377 = *(a3 + 8);
      v378 = *(*a3 + 36) & 0x7FFF;
      v810 = v378;
      v379 = *v377;
      v380 = **(a3 + 16);
      if (v379 == 1)
      {
        *(*(v380 + 203240) - 8) += v378;
      }

      else
      {
        sub_24D769624((v380 + 203232), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v421 = *(a3 + 8);
      v422 = *(*a3 + 40) & 0x7FFFLL;
      v810 = v422;
      v423 = *v421;
      v424 = **(a3 + 16);
      if (v423 == 1)
      {
        *(*(v424 + 203264) - 8) += v422;
      }

      else
      {
        sub_24D769624((v424 + 203256), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v461 = *(a3 + 8);
      v462 = (*(*a3 + 40) >> 16) & 0x7FFFLL;
      v810 = v462;
      v463 = *v461;
      v464 = **(a3 + 16);
      if (v463 == 1)
      {
        *(*(v464 + 203288) - 8) += v462;
      }

      else
      {
        sub_24D769624((v464 + 203280), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v499 = *(a3 + 8);
      v500 = *(*a3 + 44) & 0x7FFFF;
      v810 = v500;
      v501 = *v499;
      v502 = **(a3 + 16);
      if (v501 == 1)
      {
        *(*(v502 + 203312) - 8) += v500;
      }

      else
      {
        sub_24D769624((v502 + 203304), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v531 = *(a3 + 8);
      v532 = *(*a3 + 48) & 0x7FFFFLL;
      v810 = v532;
      v533 = *v531;
      v534 = **(a3 + 16);
      if (v533 == 1)
      {
        *(*(v534 + 203336) - 8) += v532;
      }

      else
      {
        sub_24D769624((v534 + 203328), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v557 = *(a3 + 8);
      v558 = *(*a3 + 52) & 0x7FFFF;
      v810 = v558;
      v559 = *v557;
      v560 = **(a3 + 16);
      if (v559 == 1)
      {
        *(*(v560 + 203360) - 8) += v558;
      }

      else
      {
        sub_24D769624((v560 + 203352), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v581 = *(a3 + 8);
      v582 = *(*a3 + 56) & 0x7FFFFLL;
      v810 = v582;
      v583 = *v581;
      v584 = **(a3 + 16);
      if (v583 == 1)
      {
        *(*(v584 + 203384) - 8) += v582;
      }

      else
      {
        sub_24D769624((v584 + 203376), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v605 = *(a3 + 8);
      v606 = *(*a3 + 60) & 0x7FFFF;
      v810 = v606;
      v607 = *v605;
      v608 = **(a3 + 16);
      if (v607 == 1)
      {
        *(*(v608 + 203408) - 8) += v606;
      }

      else
      {
        sub_24D769624((v608 + 203400), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v629 = *(a3 + 8);
      v630 = *(*a3 + 64) & 0x7FFFFLL;
      v810 = v630;
      v631 = *v629;
      v632 = **(a3 + 16);
      if (v631 == 1)
      {
        *(*(v632 + 203432) - 8) += v630;
      }

      else
      {
        sub_24D769624((v632 + 203424), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v651 = *(a3 + 8);
      v652 = *(*a3 + 68) & 0x7FFFF;
      v810 = v652;
      v653 = *v651;
      v654 = **(a3 + 16);
      if (v653 == 1)
      {
        *(*(v654 + 203456) - 8) += v652;
      }

      else
      {
        sub_24D769624((v654 + 203448), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v671 = *(a3 + 8);
      v78 = *(*a3 + 76) & 0x7FFFF;
      v810 = v78;
      v672 = *v671;
      v80 = **(a3 + 16);
      if (v672 == 1)
      {
        v81 = 6872;
        goto LABEL_564;
      }

      v142 = v80 + 25434;
      goto LABEL_572;
    case 8:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v69 = *(a3 + 8);
      v70 = *(*a3 + 24);
      v810 = v70;
      v71 = *v69;
      v72 = **(a3 + 16);
      if (v71 == 1)
      {
        *(*(v72 + 203504) - 8) += v70;
      }

      else
      {
        sub_24D769624((v72 + 203496), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v134 = *(a3 + 8);
      v135 = *(*a3 + 26);
      v810 = v135;
      v136 = *v134;
      v137 = **(a3 + 16);
      if (v136 == 1)
      {
        *(*(v137 + 203528) - 8) += v135;
      }

      else
      {
        sub_24D769624((v137 + 203520), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v195 = *(a3 + 8);
      v196 = *(*a3 + 28) & 0x1FFFF;
      v810 = v196;
      v197 = *v195;
      v198 = **(a3 + 16);
      if (v197 == 1)
      {
        *(*(v198 + 203552) - 8) += v196;
      }

      else
      {
        sub_24D769624((v198 + 203544), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v251 = *(a3 + 8);
      v252 = *(*a3 + 32) & 0x1FFFF;
      v810 = v252;
      v253 = *v251;
      v254 = **(a3 + 16);
      if (v253 == 1)
      {
        *(*(v254 + 203576) - 8) += v252;
      }

      else
      {
        sub_24D769624((v254 + 203568), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v303 = *(a3 + 8);
      v78 = *(*a3 + 32) >> 17;
      v810 = v78;
      v304 = *v303;
      v80 = **(a3 + 16);
      if (v304 == 1)
      {
        v81 = 6992;
        goto LABEL_564;
      }

      v142 = v80 + 25449;
      goto LABEL_572;
    case 9:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v29 = *(a3 + 8);
      v30 = (*(*a3 + 24) >> 1) & 0x1FFFLL;
      v810 = v30;
      v31 = *v29;
      v32 = **(a3 + 16);
      if (v31 == 1)
      {
        *(*(v32 + 203624) - 8) += v30;
      }

      else
      {
        sub_24D769624((v32 + 203616), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v90 = *(a3 + 8);
      v91 = (*(*a3 + 24) >> 16) & 0x1FFFLL;
      v810 = v91;
      v92 = *v90;
      v93 = **(a3 + 16);
      if (v92 == 1)
      {
        *(*(v93 + 203648) - 8) += v91;
      }

      else
      {
        sub_24D769624((v93 + 203640), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v151 = *(a3 + 8);
      v152 = *(*a3 + 28) & 0x1FFF;
      v810 = v152;
      v153 = *v151;
      v154 = **(a3 + 16);
      if (v153 == 1)
      {
        *(*(v154 + 203672) - 8) += v152;
      }

      else
      {
        sub_24D769624((v154 + 203664), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v209 = *(a3 + 8);
      v210 = *(*a3 + 30) & 0x1FFF;
      v810 = v210;
      v211 = *v209;
      v212 = **(a3 + 16);
      if (v211 == 1)
      {
        *(*(v212 + 203696) - 8) += v210;
      }

      else
      {
        sub_24D769624((v212 + 203688), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v263 = *(a3 + 8);
      v264 = *(*a3 + 32) & 0x1FFFLL;
      v810 = v264;
      v265 = *v263;
      v266 = **(a3 + 16);
      if (v265 == 1)
      {
        *(*(v266 + 203720) - 8) += v264;
      }

      else
      {
        sub_24D769624((v266 + 203712), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v313 = *(a3 + 8);
      v314 = (*(*a3 + 32) >> 16) & 0x1FFFLL;
      v810 = v314;
      v315 = *v313;
      v316 = **(a3 + 16);
      if (v315 == 1)
      {
        *(*(v316 + 203744) - 8) += v314;
      }

      else
      {
        sub_24D769624((v316 + 203736), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v361 = *(a3 + 8);
      v362 = *(*a3 + 36) & 0x1FFF;
      v810 = v362;
      v363 = *v361;
      v364 = **(a3 + 16);
      if (v363 == 1)
      {
        *(*(v364 + 203768) - 8) += v362;
      }

      else
      {
        sub_24D769624((v364 + 203760), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v405 = *(a3 + 8);
      v406 = *(*a3 + 38) & 0x1FFF;
      v810 = v406;
      v407 = *v405;
      v408 = **(a3 + 16);
      if (v407 == 1)
      {
        *(*(v408 + 203792) - 8) += v406;
      }

      else
      {
        sub_24D769624((v408 + 203784), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v445 = *(a3 + 8);
      v446 = *(*a3 + 40) & 0x1FFFLL;
      v810 = v446;
      v447 = *v445;
      v448 = **(a3 + 16);
      if (v447 == 1)
      {
        *(*(v448 + 203816) - 8) += v446;
      }

      else
      {
        sub_24D769624((v448 + 203808), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v485 = *(a3 + 8);
      v486 = (*(*a3 + 40) >> 16) & 0x1FFFLL;
      v810 = v486;
      v487 = *v485;
      v488 = **(a3 + 16);
      if (v487 == 1)
      {
        *(*(v488 + 203840) - 8) += v486;
      }

      else
      {
        sub_24D769624((v488 + 203832), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v519 = *(a3 + 8);
      v520 = *(*a3 + 44) & 0x1FFF;
      v810 = v520;
      v521 = *v519;
      v522 = **(a3 + 16);
      if (v521 == 1)
      {
        *(*(v522 + 203864) - 8) += v520;
      }

      else
      {
        sub_24D769624((v522 + 203856), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v547 = *(a3 + 8);
      v548 = *(*a3 + 46) & 0x1FFF;
      v810 = v548;
      v549 = *v547;
      v550 = **(a3 + 16);
      if (v549 == 1)
      {
        *(*(v550 + 203888) - 8) += v548;
      }

      else
      {
        sub_24D769624((v550 + 203880), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v573 = *(a3 + 8);
      v574 = *(*a3 + 48) & 0x1FFFLL;
      v810 = v574;
      v575 = *v573;
      v576 = **(a3 + 16);
      if (v575 == 1)
      {
        *(*(v576 + 203912) - 8) += v574;
      }

      else
      {
        sub_24D769624((v576 + 203904), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v597 = *(a3 + 8);
      v598 = (*(*a3 + 48) >> 16) & 0x1FFFLL;
      v810 = v598;
      v599 = *v597;
      v600 = **(a3 + 16);
      if (v599 == 1)
      {
        *(*(v600 + 203936) - 8) += v598;
      }

      else
      {
        sub_24D769624((v600 + 203928), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v621 = *(a3 + 8);
      v622 = *(*a3 + 52) & 0x1FFF;
      v810 = v622;
      v623 = *v621;
      v624 = **(a3 + 16);
      if (v623 == 1)
      {
        *(*(v624 + 203960) - 8) += v622;
      }

      else
      {
        sub_24D769624((v624 + 203952), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v643 = *(a3 + 8);
      v644 = *(*a3 + 54) & 0x1FFF;
      v810 = v644;
      v645 = *v643;
      v646 = **(a3 + 16);
      if (v645 == 1)
      {
        *(*(v646 + 203984) - 8) += v644;
      }

      else
      {
        sub_24D769624((v646 + 203976), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v663 = *(a3 + 8);
      v664 = *(*a3 + 56) & 0x1FFFLL;
      v810 = v664;
      v665 = *v663;
      v666 = **(a3 + 16);
      if (v665 == 1)
      {
        *(*(v666 + 204008) - 8) += v664;
      }

      else
      {
        sub_24D769624((v666 + 204000), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v681 = *(a3 + 8);
      v682 = (*(*a3 + 56) >> 16) & 0x1FFFLL;
      v810 = v682;
      v683 = *v681;
      v684 = **(a3 + 16);
      if (v683 == 1)
      {
        *(*(v684 + 204032) - 8) += v682;
      }

      else
      {
        sub_24D769624((v684 + 204024), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v695 = *(a3 + 8);
      v696 = *(*a3 + 60) & 0x1FFF;
      v810 = v696;
      v697 = *v695;
      v698 = **(a3 + 16);
      if (v697 == 1)
      {
        *(*(v698 + 204056) - 8) += v696;
      }

      else
      {
        sub_24D769624((v698 + 204048), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v707 = *(a3 + 8);
      v708 = *(*a3 + 62) & 0x1FFF;
      v810 = v708;
      v709 = *v707;
      v710 = **(a3 + 16);
      if (v709 == 1)
      {
        *(*(v710 + 204080) - 8) += v708;
      }

      else
      {
        sub_24D769624((v710 + 204072), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v718 = *(a3 + 8);
      v719 = *(*a3 + 64) & 0x1FFFLL;
      v810 = v719;
      v720 = *v718;
      v721 = **(a3 + 16);
      if (v720 == 1)
      {
        *(*(v721 + 204104) - 8) += v719;
      }

      else
      {
        sub_24D769624((v721 + 204096), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v726 = *(a3 + 8);
      v727 = (*(*a3 + 64) >> 16) & 0x1FFFLL;
      v810 = v727;
      v728 = *v726;
      v729 = **(a3 + 16);
      if (v728 == 1)
      {
        *(*(v729 + 204128) - 8) += v727;
      }

      else
      {
        sub_24D769624((v729 + 204120), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v734 = *(a3 + 8);
      v735 = *(*a3 + 68) & 0x1FFF;
      v810 = v735;
      v736 = *v734;
      v737 = **(a3 + 16);
      if (v736 == 1)
      {
        *(*(v737 + 204152) - 8) += v735;
      }

      else
      {
        sub_24D769624((v737 + 204144), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v742 = *(a3 + 8);
      v743 = *(*a3 + 70) & 0x1FFF;
      v810 = v743;
      v744 = *v742;
      v745 = **(a3 + 16);
      if (v744 == 1)
      {
        *(*(v745 + 204176) - 8) += v743;
      }

      else
      {
        sub_24D769624((v745 + 204168), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v750 = *(a3 + 8);
      v751 = *(*a3 + 72) & 0x1FFFLL;
      v810 = v751;
      v752 = *v750;
      v753 = **(a3 + 16);
      if (v752 == 1)
      {
        *(*(v753 + 204200) - 8) += v751;
      }

      else
      {
        sub_24D769624((v753 + 204192), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v758 = *(a3 + 8);
      v759 = (*(*a3 + 72) >> 16) & 0x1FFFLL;
      v810 = v759;
      v760 = *v758;
      v761 = **(a3 + 16);
      if (v760 == 1)
      {
        *(*(v761 + 204224) - 8) += v759;
      }

      else
      {
        sub_24D769624((v761 + 204216), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v766 = *(a3 + 8);
      v767 = *(*a3 + 76) & 0x1FFF;
      v810 = v767;
      v768 = *v766;
      v769 = **(a3 + 16);
      if (v768 == 1)
      {
        *(*(v769 + 204248) - 8) += v767;
      }

      else
      {
        sub_24D769624((v769 + 204240), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v774 = *(a3 + 8);
      v775 = *(*a3 + 78) & 0x1FFF;
      v810 = v775;
      v776 = *v774;
      v777 = **(a3 + 16);
      if (v776 == 1)
      {
        *(*(v777 + 204272) - 8) += v775;
      }

      else
      {
        sub_24D769624((v777 + 204264), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v782 = *(a3 + 8);
      v783 = *(*a3 + 80) & 0x1FFFLL;
      v810 = v783;
      v784 = *v782;
      v785 = **(a3 + 16);
      if (v784 == 1)
      {
        *(*(v785 + 204296) - 8) += v783;
      }

      else
      {
        sub_24D769624((v785 + 204288), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v790 = *(a3 + 8);
      v791 = (*(*a3 + 80) >> 16) & 0x1FFFLL;
      v810 = v791;
      v792 = *v790;
      v793 = **(a3 + 16);
      if (v792 == 1)
      {
        *(*(v793 + 204320) - 8) += v791;
      }

      else
      {
        sub_24D769624((v793 + 204312), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v798 = *(a3 + 8);
      v799 = *(*a3 + 84) & 0x1FFF;
      v810 = v799;
      v800 = *v798;
      v801 = **(a3 + 16);
      if (v800 == 1)
      {
        *(*(v801 + 204344) - 8) += v799;
      }

      else
      {
        sub_24D769624((v801 + 204336), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v806 = *(a3 + 8);
      v78 = *(*a3 + 86) & 0x1FFF;
      v810 = v78;
      v807 = *v806;
      v80 = **(a3 + 16);
      if (v807 == 1)
      {
        v81 = 7760;
        goto LABEL_564;
      }

      v142 = v80 + 25545;
      goto LABEL_572;
    case 10:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v65 = *(a3 + 8);
      v66 = *(*a3 + 24);
      v810 = v66;
      v67 = *v65;
      v68 = **(a3 + 16);
      if (v67 == 1)
      {
        *(*(v68 + 204392) - 8) += v66;
      }

      else
      {
        sub_24D769624((v68 + 204384), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v130 = *(a3 + 8);
      v131 = *(*a3 + 32) & 0x1FFFFFFFFLL;
      v810 = v131;
      v132 = *v130;
      v133 = **(a3 + 16);
      if (v132 == 1)
      {
        *(*(v133 + 204416) - 8) += v131;
      }

      else
      {
        sub_24D769624((v133 + 204408), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v191 = *(a3 + 8);
      v192 = (*(*a3 + 32) >> 33) & 0x7FFFLL;
      v810 = v192;
      v193 = *v191;
      v194 = **(a3 + 16);
      if (v193 == 1)
      {
        *(*(v194 + 204440) - 8) += v192;
      }

      else
      {
        sub_24D769624((v194 + 204432), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v247 = *(a3 + 8);
      v248 = *(*a3 + 38) & 0x7FFF;
      v810 = v248;
      v249 = *v247;
      v250 = **(a3 + 16);
      if (v249 == 1)
      {
        *(*(v250 + 204464) - 8) += v248;
      }

      else
      {
        sub_24D769624((v250 + 204456), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v299 = *(a3 + 8);
      v300 = *(*a3 + 40) & 0x7FFFLL;
      v810 = v300;
      v301 = *v299;
      v302 = **(a3 + 16);
      if (v301 == 1)
      {
        *(*(v302 + 204488) - 8) += v300;
      }

      else
      {
        sub_24D769624((v302 + 204480), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v349 = *(a3 + 8);
      v350 = (*(*a3 + 40) >> 16) & 0x7FFFLL;
      v810 = v350;
      v351 = *v349;
      v352 = **(a3 + 16);
      if (v351 == 1)
      {
        *(*(v352 + 204512) - 8) += v350;
      }

      else
      {
        sub_24D769624((v352 + 204504), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v397 = *(a3 + 8);
      v78 = *(*a3 + 44) & 0x7FFF;
      v810 = v78;
      v398 = *v397;
      v80 = **(a3 + 16);
      if (v398 == 1)
      {
        v81 = 7928;
        goto LABEL_564;
      }

      v142 = v80 + 25566;
      goto LABEL_572;
    case 11:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v17 = *(a3 + 8);
      v18 = *(*a3 + 24) & 0x7FFF;
      v810 = v18;
      v19 = *v17;
      v20 = **(a3 + 16);
      if (v19 == 1)
      {
        *(*(v20 + 204560) - 8) += v18;
      }

      else
      {
        sub_24D769624((v20 + 204552), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v77 = *(a3 + 8);
      v78 = *(*a3 + 26) & 0x7FFF;
      v810 = v78;
      v79 = *v77;
      v80 = **(a3 + 16);
      if (v79 == 1)
      {
        v81 = 7976;
        goto LABEL_564;
      }

      v142 = v80 + 25572;
      goto LABEL_572;
    case 12:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v25 = *(a3 + 8);
      v26 = *(*a3 + 24) & 0x7FFFLL;
      v810 = v26;
      v27 = *v25;
      v28 = **(a3 + 16);
      if (v27 == 1)
      {
        *(*(v28 + 204608) - 8) += v26;
      }

      else
      {
        sub_24D769624((v28 + 204600), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v86 = *(a3 + 8);
      v87 = (*(*a3 + 24) >> 16) & 0x7FFFLL;
      v810 = v87;
      v88 = *v86;
      v89 = **(a3 + 16);
      if (v88 == 1)
      {
        *(*(v89 + 204632) - 8) += v87;
      }

      else
      {
        sub_24D769624((v89 + 204624), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v147 = *(a3 + 8);
      v148 = *(*a3 + 28);
      v810 = v148;
      v149 = *v147;
      v150 = **(a3 + 16);
      if (v149 == 1)
      {
        *(*(v150 + 204656) - 8) += v148;
      }

      else
      {
        sub_24D769624((v150 + 204648), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v205 = *(a3 + 8);
      v206 = *(*a3 + 32) & 0x3FFFFLL;
      v810 = v206;
      v207 = *v205;
      v208 = **(a3 + 16);
      if (v207 == 1)
      {
        *(*(v208 + 204680) - 8) += v206;
      }

      else
      {
        sub_24D769624((v208 + 204672), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v259 = *(a3 + 8);
      v260 = *(*a3 + 36) & 0x3FFFF;
      v810 = v260;
      v261 = *v259;
      v262 = **(a3 + 16);
      if (v261 == 1)
      {
        *(*(v262 + 204704) - 8) += v260;
      }

      else
      {
        sub_24D769624((v262 + 204696), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v309 = *(a3 + 8);
      v310 = *(*a3 + 40) & 0x1FFFFLL;
      v810 = v310;
      v311 = *v309;
      v312 = **(a3 + 16);
      if (v311 == 1)
      {
        *(*(v312 + 204728) - 8) += v310;
      }

      else
      {
        sub_24D769624((v312 + 204720), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v357 = *(a3 + 8);
      v358 = *(*a3 + 44);
      v810 = v358;
      v359 = *v357;
      v360 = **(a3 + 16);
      if (v359 == 1)
      {
        *(*(v360 + 204752) - 8) += v358;
      }

      else
      {
        sub_24D769624((v360 + 204744), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v403 = *(a3 + 8);
      v78 = HIWORD(*(*a3 + 40));
      v810 = v78;
      v404 = *v403;
      v80 = **(a3 + 16);
      if (v404 == 1)
      {
        v81 = 8168;
        goto LABEL_564;
      }

      v142 = v80 + 25596;
      goto LABEL_572;
    case 13:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v57 = *(a3 + 8);
      v58 = *(*a3 + 24) & 0x7FFFLL;
      v810 = v58;
      v59 = *v57;
      v60 = **(a3 + 16);
      if (v59 == 1)
      {
        *(*(v60 + 204800) - 8) += v58;
      }

      else
      {
        sub_24D769624((v60 + 204792), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v122 = *(a3 + 8);
      v123 = (*(*a3 + 24) >> 16) & 0x7FFFLL;
      v810 = v123;
      v124 = *v122;
      v125 = **(a3 + 16);
      if (v124 == 1)
      {
        *(*(v125 + 204824) - 8) += v123;
      }

      else
      {
        sub_24D769624((v125 + 204816), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v183 = *(a3 + 8);
      v184 = *(*a3 + 28) & 0x7FFF;
      v810 = v184;
      v185 = *v183;
      v186 = **(a3 + 16);
      if (v185 == 1)
      {
        *(*(v186 + 204848) - 8) += v184;
      }

      else
      {
        sub_24D769624((v186 + 204840), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v239 = *(a3 + 8);
      v240 = *(*a3 + 30) & 0x7FFF;
      v810 = v240;
      v241 = *v239;
      v242 = **(a3 + 16);
      if (v241 == 1)
      {
        *(*(v242 + 204872) - 8) += v240;
      }

      else
      {
        sub_24D769624((v242 + 204864), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v291 = *(a3 + 8);
      v292 = *(*a3 + 32) & 0x1FFFFLL;
      v810 = v292;
      v293 = *v291;
      v294 = **(a3 + 16);
      if (v293 == 1)
      {
        *(*(v294 + 204896) - 8) += v292;
      }

      else
      {
        sub_24D769624((v294 + 204888), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v341 = *(a3 + 8);
      v342 = *(*a3 + 36) & 0x1FFFF;
      v810 = v342;
      v343 = *v341;
      v344 = **(a3 + 16);
      if (v343 == 1)
      {
        *(*(v344 + 204920) - 8) += v342;
      }

      else
      {
        sub_24D769624((v344 + 204912), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v389 = *(a3 + 8);
      v390 = *(*a3 + 40) & 0x1FFFFLL;
      v810 = v390;
      v391 = *v389;
      v392 = **(a3 + 16);
      if (v391 == 1)
      {
        *(*(v392 + 204944) - 8) += v390;
      }

      else
      {
        sub_24D769624((v392 + 204936), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v433 = *(a3 + 8);
      v434 = *(*a3 + 40) >> 17;
      v810 = v434;
      v435 = *v433;
      v436 = **(a3 + 16);
      if (v435 == 1)
      {
        *(*(v436 + 204968) - 8) += v434;
      }

      else
      {
        sub_24D769624((v436 + 204960), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v473 = *(a3 + 8);
      v474 = *(*a3 + 44) & 0x3FFF;
      v810 = v474;
      v475 = *v473;
      v476 = **(a3 + 16);
      if (v475 == 1)
      {
        *(*(v476 + 204992) - 8) += v474;
      }

      else
      {
        sub_24D769624((v476 + 204984), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v509 = *(a3 + 8);
      v510 = *(*a3 + 46) & 0x3FFF;
      v810 = v510;
      v511 = *v509;
      v512 = **(a3 + 16);
      if (v511 == 1)
      {
        *(*(v512 + 205016) - 8) += v510;
      }

      else
      {
        sub_24D769624((v512 + 205008), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v539 = *(a3 + 8);
      v540 = *(*a3 + 48) & 0x1FFFFLL;
      v810 = v540;
      v541 = *v539;
      v542 = **(a3 + 16);
      if (v541 == 1)
      {
        *(*(v542 + 205040) - 8) += v540;
      }

      else
      {
        sub_24D769624((v542 + 205032), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v565 = *(a3 + 8);
      v566 = *(*a3 + 52) & 0x1FFFF;
      v810 = v566;
      v567 = *v565;
      v568 = **(a3 + 16);
      if (v567 == 1)
      {
        *(*(v568 + 205064) - 8) += v566;
      }

      else
      {
        sub_24D769624((v568 + 205056), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v589 = *(a3 + 8);
      v590 = *(*a3 + 56) & 0x1FFFFLL;
      v810 = v590;
      v591 = *v589;
      v592 = **(a3 + 16);
      if (v591 == 1)
      {
        *(*(v592 + 205088) - 8) += v590;
      }

      else
      {
        sub_24D769624((v592 + 205080), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v613 = *(a3 + 8);
      v614 = *(*a3 + 60);
      v810 = v614;
      v615 = *v613;
      v616 = **(a3 + 16);
      if (v615 == 1)
      {
        *(*(v616 + 205112) - 8) += v614;
      }

      else
      {
        sub_24D769624((v616 + 205104), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v637 = *(a3 + 8);
      v78 = HIWORD(*(*a3 + 56));
      v810 = v78;
      v638 = *v637;
      v80 = **(a3 + 16);
      if (v638 == 1)
      {
        v81 = 8528;
        goto LABEL_564;
      }

      v142 = v80 + 25641;
      goto LABEL_572;
    case 14:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v13 = *(a3 + 8);
      v14 = *(*a3 + 24) & 0x3FFFFFLL;
      v810 = v14;
      v15 = *v13;
      v16 = **(a3 + 16);
      if (v15 == 1)
      {
        *(*(v16 + 205160) - 8) += v14;
      }

      else
      {
        sub_24D769624((v16 + 205152), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v73 = *(a3 + 8);
      v74 = *(*a3 + 28) & 0x3FFFFF;
      v810 = v74;
      v75 = *v73;
      v76 = **(a3 + 16);
      if (v75 == 1)
      {
        *(*(v76 + 205184) - 8) += v74;
      }

      else
      {
        sub_24D769624((v76 + 205176), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v138 = *(a3 + 8);
      v139 = *(*a3 + 32) & 0x7FFFFLL;
      v810 = v139;
      v140 = *v138;
      v141 = **(a3 + 16);
      if (v140 == 1)
      {
        *(*(v141 + 205208) - 8) += v139;
      }

      else
      {
        sub_24D769624((v141 + 205200), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v199 = *(a3 + 8);
      v78 = *(*a3 + 36) & 0x3FFFFF;
      v810 = v78;
      v200 = *v199;
      v80 = **(a3 + 16);
      if (v200 == 1)
      {
        v81 = 8624;
        goto LABEL_564;
      }

      v142 = v80 + 25653;
      goto LABEL_572;
    case 15:
      if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
      {
        return;
      }

      v37 = *(a3 + 8);
      v38 = *(*a3 + 24) & 0x3FFFLL;
      v810 = v38;
      v39 = *v37;
      v40 = **(a3 + 16);
      if (v39 == 1)
      {
        *(*(v40 + 205256) - 8) += v38;
      }

      else
      {
        sub_24D769624((v40 + 205248), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v98 = *(a3 + 8);
      v99 = (*(*a3 + 24) >> 16) & 0x3FFFLL;
      v810 = v99;
      v100 = *v98;
      v101 = **(a3 + 16);
      if (v100 == 1)
      {
        *(*(v101 + 205280) - 8) += v99;
      }

      else
      {
        sub_24D769624((v101 + 205272), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v159 = *(a3 + 8);
      v160 = *(*a3 + 28) & 0x3FFF;
      v810 = v160;
      v161 = *v159;
      v162 = **(a3 + 16);
      if (v161 == 1)
      {
        *(*(v162 + 205304) - 8) += v160;
      }

      else
      {
        sub_24D769624((v162 + 205296), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v217 = *(a3 + 8);
      v218 = *(*a3 + 30) & 0x3FFF;
      v810 = v218;
      v219 = *v217;
      v220 = **(a3 + 16);
      if (v219 == 1)
      {
        *(*(v220 + 205328) - 8) += v218;
      }

      else
      {
        sub_24D769624((v220 + 205320), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v271 = *(a3 + 8);
      v272 = *(*a3 + 32) & 0x1FFFLL;
      v810 = v272;
      v273 = *v271;
      v274 = **(a3 + 16);
      if (v273 == 1)
      {
        *(*(v274 + 205352) - 8) += v272;
      }

      else
      {
        sub_24D769624((v274 + 205344), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v321 = *(a3 + 8);
      v322 = (*(*a3 + 32) >> 16) & 0x1FFFLL;
      v810 = v322;
      v323 = *v321;
      v324 = **(a3 + 16);
      if (v323 == 1)
      {
        *(*(v324 + 205376) - 8) += v322;
      }

      else
      {
        sub_24D769624((v324 + 205368), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v369 = *(a3 + 8);
      v370 = *(*a3 + 36) & 0x1FFF;
      v810 = v370;
      v371 = *v369;
      v372 = **(a3 + 16);
      if (v371 == 1)
      {
        *(*(v372 + 205400) - 8) += v370;
      }

      else
      {
        sub_24D769624((v372 + 205392), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v413 = *(a3 + 8);
      v414 = (*(*a3 + 32) >> 45) & 0x3FFFFLL;
      v810 = v414;
      v415 = *v413;
      v416 = **(a3 + 16);
      if (v415 == 1)
      {
        *(*(v416 + 205424) - 8) += v414;
      }

      else
      {
        sub_24D769624((v416 + 205416), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v453 = *(a3 + 8);
      v454 = *(*a3 + 40) & 0x3FFFFLL;
      v810 = v454;
      v455 = *v453;
      v456 = **(a3 + 16);
      if (v455 == 1)
      {
        *(*(v456 + 205448) - 8) += v454;
      }

      else
      {
        sub_24D769624((v456 + 205440), &v810);
        if ((*(a2 + 40) - 3) > 0xFFFFFFFD)
        {
          return;
        }
      }

      v493 = *(a3 + 8);
      v78 = *(*a3 + 44) & 0x3FFFF;
      v810 = v78;
      v494 = *v493;
      v80 = **(a3 + 16);
      if (v494 == 1)
      {
        v81 = 8864;
LABEL_564:
        v717 = *(v80 + (v81 | 0x30000u));
        *(v717 - 8) += v78;
      }

      else
      {
        v142 = v80 + 25683;
LABEL_572:
        sub_24D769624(v142, &v810);
      }

      return;
    default:
      return;
  }
}

unint64_t sub_24D7B320C(uint64_t *a1, unint64_t a2, char a3, unsigned int a4)
{
  v4 = *a1;
  if (!a2)
  {
    v5 = HIDWORD(a2) & 0x1F;
    if (a4 <= 7)
    {
      v10 = (v4 + 16 * a4 + 20112);
      if (*(v10 + 12) == 1)
      {
        v7 = *v10;
        v11 = *(v10 + 1);
        return v5 | (v7 << 32);
      }

      v12 = sub_24D809C04();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_24D85DA78();
      }

      if (sub_24D809BF4())
      {
        sub_24D809BFC();
      }
    }

    v7 = 0;
    return v5 | (v7 << 32);
  }

  if (a2 == 1)
  {
    v5 = HIDWORD(a2) & 0x1F;
    v6 = HIWORD(a2) & 0xFFF;
    v7 = (v6 & ~(-1 << (a2 >> 60))) + 1;
    v8 = (((v6 >> (a2 >> 60)) & ~(-1 << (a3 & 0xF))) + 1) | (((v6 >> (a2 >> 60) >> (a3 & 0xF)) + 1) << 32);
    if (a4 <= 7)
    {
      v9 = v4 + 16 * a4 + 20112;
      *v9 = v7;
      *(v9 + 4) = v8;
      *(v9 + 12) = 1;
    }
  }

  else
  {
    v7 = 0;
    LODWORD(v5) = 0;
  }

  return v5 | (v7 << 32);
}

uint64_t sub_24D7B3318(uint64_t result, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  *(result + 96) = 0;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  *a4 = 1;
  v4 = *a3;
  v5 = *a3 & 7;
  v6 = (a2 + (*a3 >> 3));
  if (v5 == 7)
  {
    v7 = ((*v6 | (v6[1] << 8)) >> 7) & 3;
  }

  else
  {
    v7 = (*v6 >> v5) & 3;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v12 = v4 + 2;
      v13 = (v4 + 2) & 7;
      v14 = (a2 + (v12 >> 3));
      if (v13 == 7)
      {
        v15 = ((*v14 | (v14[1] << 8)) >> 7) & 3;
      }

      else
      {
        v15 = (*v14 >> v13) & 3;
      }

      if (v15 > 1)
      {
        if (v15 == 2)
        {
          *(result + 8) = 6;
          *result = 0x900000009;
          v30 = *a3 + 4;
          v31 = (a2 + (v30 >> 3));
          v32 = v30 & 7;
          if (v32)
          {
            v33 = (*v31 >> v32);
          }

          else
          {
            v33 = *v31;
          }

          v103 = *(result + 16) | v33;
          *(result + 16) = v103;
          v104 = *a3 + 12;
          v105 = (a2 + (v104 >> 3));
          v106 = v104 & 7;
          if (v106)
          {
            v107 = ((*v105 | (*(v105 + 1) << 8)) >> v106);
          }

          else
          {
            v107 = *v105;
          }

          *(result + 16) = v103 | (v107 << 32);
          v25 = 44;
        }

        else
        {
          *(result + 8) = 62;
          *result = 0xA0000000ALL;
          v63 = *a3 + 4;
          v64 = v63 & 7;
          v65 = (a2 + (v63 >> 3));
          if (v64 > 4)
          {
            v66 = *v65;
          }

          else
          {
            v66 = *v65;
          }

          switch((v66 >> v64) & 0xF)
          {
            case 1u:
              *(result + 16) = 1;
              v454 = *a3 & 7;
              v455 = (a2 + ((*a3 + 8) >> 3));
              if (v454 > 4)
              {
                v456 = *v455;
              }

              else
              {
                v456 = (v455[2] << 16) | (v455[1] << 8) | *v455;
              }

              v930 = *(result + 24) | (v456 >> v454) & 0xFFFFF;
              *(result + 24) = v930;
              v931 = *a3 + 28;
              v932 = v931 & 7;
              v933 = (a2 + (v931 >> 3));
              if (v932 > 4)
              {
                v934 = *v933;
              }

              else
              {
                v934 = (v933[2] << 16) | (v933[1] << 8) | *v933;
              }

              *(result + 24) = v930 | (((v934 >> v932) & 0xFFFFF) << 32);
              v940 = *a3 & 7;
              v941 = (a2 + ((*a3 + 48) >> 3));
              if (v940 > 4)
              {
                v942 = *v941;
              }

              else
              {
                v942 = (v941[2] << 16) | (v941[1] << 8) | *v941;
              }

              v947 = *(result + 32) | (v942 >> v940) & 0xFFFFF;
              *(result + 32) = v947;
              v948 = *a3 + 68;
              v949 = v948 & 7;
              v950 = (a2 + (v948 >> 3));
              if (v949 > 4)
              {
                v951 = *v950;
              }

              else
              {
                v951 = (v950[2] << 16) | (v950[1] << 8) | *v950;
              }

              *(result + 32) = v947 | (((v951 >> v949) & 0xFFFFF) << 32);
              v957 = *a3 & 7;
              v958 = (a2 + ((*a3 + 88) >> 3));
              if (v957 > 4)
              {
                v959 = *v958;
              }

              else
              {
                v959 = (v958[2] << 16) | (v958[1] << 8) | *v958;
              }

              v965 = *(result + 40) | (v959 >> v957) & 0xFFFFF;
              *(result + 40) = v965;
              v966 = *a3 + 108;
              v967 = v966 & 7;
              v968 = (a2 + (v966 >> 3));
              if (v967 > 4)
              {
                v969 = *v968;
              }

              else
              {
                v969 = (v968[2] << 16) | (v968[1] << 8) | *v968;
              }

              *(result + 40) = v965 | (((v969 >> v967) & 0xFFFFF) << 32);
              v975 = *a3 & 7;
              v976 = (a2 + ((*a3 + 128) >> 3));
              if (v975 > 4)
              {
                v977 = *v976;
              }

              else
              {
                v977 = (v976[2] << 16) | (v976[1] << 8) | *v976;
              }

              v982 = *(result + 48) | (v977 >> v975) & 0xFFFFF;
              *(result + 48) = v982;
              v983 = (*a3 - 108) & 7;
              v984 = (a2 + ((*a3 + 148) >> 3));
              if (v983 > 4)
              {
                v985 = *v984;
              }

              else
              {
                v985 = (v984[2] << 16) | (v984[1] << 8) | *v984;
              }

              *(result + 48) = v982 | (((v985 >> v983) & 0xFFFFF) << 32);
              v991 = (a2 + ((*a3 + 168) >> 3));
              v992 = *a3 & 7;
              if (v992)
              {
                v993 = (((v991[2] << 16) | (v991[1] << 8) | *v991) >> v992);
              }

              else
              {
                v993 = *v991;
              }

              v1229 = *(result + 56) | v993;
              *(result + 56) = v1229;
              v1230 = (a2 + ((*a3 + 184) >> 3));
              v1231 = *a3 & 7;
              if (v1231)
              {
                v1232 = (((v1230[2] << 16) | (v1230[1] << 8) | *v1230) >> v1231);
              }

              else
              {
                v1232 = *v1230;
              }

              *(result + 56) = v1229 | (v1232 << 16);
              v25 = 200;
              break;
            case 2u:
              *(result + 16) = 2;
              v286 = *a3 & 7;
              v287 = (a2 + ((*a3 + 8) >> 3));
              if (v286 == 7)
              {
                v288 = ((*v287 | (v287[1] << 8)) >> 7) & 3;
              }

              else
              {
                v288 = (*v287 >> v286) & 3;
              }

              v675 = *(result + 24) | v288;
              *(result + 24) = v675;
              v676 = *a3 + 10;
              v677 = v676 & 7;
              v678 = (a2 + (v676 >> 3));
              if (v677 > 1)
              {
                v679 = (v678[2] << 16) | (v678[1] << 8) | *v678;
              }

              else
              {
                v679 = *v678;
              }

              v680 = v675 | (((v679 >> v677) & 0x7FFF) << 16);
              *(result + 24) = v680;
              v681 = *a3 + 25;
              v682 = v681 & 7;
              v683 = (a2 + (v681 >> 3));
              if (v682 > 1)
              {
                v684 = (v683[2] << 16) | (v683[1] << 8) | *v683;
              }

              else
              {
                v684 = *v683;
              }

              v685 = v680 | (((v684 >> v682) & 0x7FFF) << 32);
              *(result + 24) = v685;
              v686 = *a3 & 7;
              v687 = (a2 + ((*a3 + 40) >> 3));
              if (v686 > 1)
              {
                v688 = (v687[2] << 16) | (v687[1] << 8) | *v687;
              }

              else
              {
                v688 = *v687;
              }

              *(result + 24) = v685 | (((v688 >> v686) & 0x7FFF) << 48);
              v689 = *a3 + 55;
              v690 = v689 & 7;
              v691 = (a2 + (v689 >> 3));
              if (v690 > 1)
              {
                v692 = (v691[2] << 16) | (v691[1] << 8) | *v691;
              }

              else
              {
                v692 = *v691;
              }

              v693 = *(result + 32) | (v692 >> v690) & 0x7FFF;
              *(result + 32) = v693;
              v694 = *a3 + 70;
              v695 = v694 & 7;
              v696 = (a2 + (v694 >> 3));
              if (v695 > 1)
              {
                v697 = (v696[2] << 16) | (v696[1] << 8) | *v696;
              }

              else
              {
                v697 = *v696;
              }

              v698 = v693 | (((v697 >> v695) & 0x7FFF) << 16);
              *(result + 32) = v698;
              v699 = *a3 + 85;
              v700 = v699 & 7;
              v701 = (a2 + (v699 >> 3));
              if (v700 > 1)
              {
                v702 = (v701[2] << 16) | (v701[1] << 8) | *v701;
              }

              else
              {
                v702 = *v701;
              }

              v703 = v698 | (((v702 >> v700) & 0x7FFF) << 32);
              *(result + 32) = v703;
              v704 = *a3 + 100;
              v705 = v704 & 7;
              v706 = (a2 + (v704 >> 3));
              if (v705 > 1)
              {
                v707 = (v706[2] << 16) | (v706[1] << 8) | *v706;
              }

              else
              {
                v707 = *v706;
              }

              *(result + 32) = v703 | (((v707 >> v705) & 0x7FFF) << 48);
              v708 = *a3 + 115;
              v709 = v708 & 7;
              v710 = (a2 + (v708 >> 3));
              if (v709 > 1)
              {
                v711 = (v710[2] << 16) | (v710[1] << 8) | *v710;
              }

              else
              {
                v711 = *v710;
              }

              v712 = *(result + 40) | (v711 >> v709) & 0x7FFF;
              *(result + 40) = v712;
              v713 = (*a3 - 126) & 7;
              v714 = (a2 + ((*a3 + 130) >> 3));
              if (v713 > 1)
              {
                v715 = (v714[2] << 16) | (v714[1] << 8) | *v714;
              }

              else
              {
                v715 = *v714;
              }

              v716 = v712 | (((v715 >> v713) & 0x7FFF) << 16);
              *(result + 40) = v716;
              v717 = (*a3 - 111) & 7;
              v718 = (a2 + ((*a3 + 145) >> 3));
              if (v717 > 1)
              {
                v719 = (v718[2] << 16) | (v718[1] << 8) | *v718;
              }

              else
              {
                v719 = *v718;
              }

              v720 = v716 | (((v719 >> v717) & 0x7FFF) << 32);
              *(result + 40) = v720;
              v721 = *a3 & 7;
              v722 = (a2 + ((*a3 + 160) >> 3));
              if (v721 > 1)
              {
                v723 = (v722[2] << 16) | (v722[1] << 8) | *v722;
              }

              else
              {
                v723 = *v722;
              }

              *(result + 40) = v720 | (((v723 >> v721) & 0x7FFF) << 48);
              v724 = (*a3 - 81) & 7;
              v725 = (a2 + ((*a3 + 175) >> 3));
              if (v724 > 1)
              {
                v726 = (v725[2] << 16) | (v725[1] << 8) | *v725;
              }

              else
              {
                v726 = *v725;
              }

              v727 = *(result + 48) | (v726 >> v724) & 0x7FFF;
              *(result + 48) = v727;
              v728 = (*a3 - 66) & 7;
              v729 = (a2 + ((*a3 + 190) >> 3));
              if (v728 > 1)
              {
                v730 = (v729[2] << 16) | (v729[1] << 8) | *v729;
              }

              else
              {
                v730 = *v729;
              }

              v731 = v727 | (((v730 >> v728) & 0x7FFF) << 16);
              *(result + 48) = v731;
              v732 = (*a3 - 51) & 7;
              v733 = (a2 + ((*a3 + 205) >> 3));
              if (v732 > 1)
              {
                v734 = (v733[2] << 16) | (v733[1] << 8) | *v733;
              }

              else
              {
                v734 = *v733;
              }

              v735 = v731 | (((v734 >> v732) & 0x7FFF) << 32);
              *(result + 48) = v735;
              v736 = (*a3 - 36) & 7;
              v737 = (a2 + ((*a3 + 220) >> 3));
              if (v736 > 1)
              {
                v738 = (v737[2] << 16) | (v737[1] << 8) | *v737;
              }

              else
              {
                v738 = *v737;
              }

              *(result + 48) = v735 | (((v738 >> v736) & 0x7FFF) << 48);
              v739 = (*a3 - 21) & 7;
              v740 = (a2 + ((*a3 + 235) >> 3));
              if (v739 > 1)
              {
                v741 = (v740[2] << 16) | (v740[1] << 8) | *v740;
              }

              else
              {
                v741 = *v740;
              }

              v742 = *(result + 56) | (v741 >> v739) & 0x7FFF;
              *(result + 56) = v742;
              v743 = (*a3 - 6) & 7;
              v744 = (a2 + ((*a3 + 250) >> 3));
              if (v743 > 1)
              {
                v745 = (v744[2] << 16) | (v744[1] << 8) | *v744;
              }

              else
              {
                v745 = *v744;
              }

              v746 = v742 | (((v745 >> v743) & 0x7FFF) << 16);
              *(result + 56) = v746;
              v747 = *a3 + 265;
              v748 = v747 & 7;
              v749 = (a2 + (v747 >> 3));
              if (v748 > 1)
              {
                v750 = (v749[2] << 16) | (v749[1] << 8) | *v749;
              }

              else
              {
                v750 = *v749;
              }

              v751 = v746 | (((v750 >> v748) & 0x7FFF) << 32);
              *(result + 56) = v751;
              v752 = *a3 & 7;
              v753 = (a2 + ((*a3 + 280) >> 3));
              if (v752 > 1)
              {
                v754 = (v753[2] << 16) | (v753[1] << 8) | *v753;
              }

              else
              {
                v754 = *v753;
              }

              *(result + 56) = v751 | (((v754 >> v752) & 0x7FFF) << 48);
              v755 = *a3 + 295;
              v756 = v755 & 7;
              v757 = (a2 + (v755 >> 3));
              if (v756 > 1)
              {
                v758 = (v757[2] << 16) | (v757[1] << 8) | *v757;
              }

              else
              {
                v758 = *v757;
              }

              v759 = *(result + 64) | (v758 >> v756) & 0x7FFF;
              *(result + 64) = v759;
              v760 = *a3 + 310;
              v761 = v760 & 7;
              v762 = (a2 + (v760 >> 3));
              if (v761 > 1)
              {
                v763 = (v762[2] << 16) | (v762[1] << 8) | *v762;
              }

              else
              {
                v763 = *v762;
              }

              v764 = v759 | (((v763 >> v761) & 0x7FFF) << 16);
              *(result + 64) = v764;
              v765 = *a3 + 325;
              v766 = v765 & 7;
              v767 = (a2 + (v765 >> 3));
              if (v766 > 1)
              {
                v768 = (v767[2] << 16) | (v767[1] << 8) | *v767;
              }

              else
              {
                v768 = *v767;
              }

              v769 = v764 | (((v768 >> v766) & 0x7FFF) << 32);
              *(result + 64) = v769;
              v770 = *a3 + 340;
              v771 = v770 & 7;
              v772 = (a2 + (v770 >> 3));
              if (v771 > 1)
              {
                v773 = (v772[2] << 16) | (v772[1] << 8) | *v772;
              }

              else
              {
                v773 = *v772;
              }

              *(result + 64) = v769 | (((v773 >> v771) & 0x7FFF) << 48);
              v774 = *a3 + 355;
              v775 = v774 & 7;
              v776 = (a2 + (v774 >> 3));
              if (v775 > 1)
              {
                v777 = (v776[2] << 16) | (v776[1] << 8) | *v776;
              }

              else
              {
                v777 = *v776;
              }

              v778 = *(result + 72) | (v777 >> v775) & 0x7FFF;
              *(result + 72) = v778;
              v779 = *a3 + 370;
              v780 = v779 & 7;
              v781 = (a2 + (v779 >> 3));
              if (v780 > 1)
              {
                v782 = (v781[2] << 16) | (v781[1] << 8) | *v781;
              }

              else
              {
                v782 = *v781;
              }

              v783 = v778 | (((v782 >> v780) & 0x7FFF) << 16);
              *(result + 72) = v783;
              v784 = (*a3 - 127) & 7;
              v785 = (a2 + ((*a3 + 385) >> 3));
              if (v784 > 1)
              {
                v786 = (v785[2] << 16) | (v785[1] << 8) | *v785;
              }

              else
              {
                v786 = *v785;
              }

              v787 = v783 | (((v786 >> v784) & 0x7FFF) << 32);
              *(result + 72) = v787;
              v788 = *a3 & 7;
              v789 = (a2 + ((*a3 + 400) >> 3));
              if (v788 > 1)
              {
                v790 = (v789[2] << 16) | (v789[1] << 8) | *v789;
              }

              else
              {
                v790 = *v789;
              }

              *(result + 72) = v787 | (((v790 >> v788) & 0x7FFF) << 48);
              v791 = (*a3 - 97) & 7;
              v792 = (a2 + ((*a3 + 415) >> 3));
              if (v791 > 1)
              {
                v793 = (v792[2] << 16) | (v792[1] << 8) | *v792;
              }

              else
              {
                v793 = *v792;
              }

              v794 = *(result + 80) | (v793 >> v791) & 0x7FFF;
              *(result + 80) = v794;
              v795 = (*a3 - 82) & 7;
              v796 = (a2 + ((*a3 + 430) >> 3));
              if (v795 > 1)
              {
                v797 = (v796[2] << 16) | (v796[1] << 8) | *v796;
              }

              else
              {
                v797 = *v796;
              }

              v798 = v794 | (((v797 >> v795) & 0x7FFF) << 16);
              *(result + 80) = v798;
              v799 = (*a3 - 67) & 7;
              v800 = (a2 + ((*a3 + 445) >> 3));
              if (v799 > 1)
              {
                v801 = (v800[2] << 16) | (v800[1] << 8) | *v800;
              }

              else
              {
                v801 = *v800;
              }

              v802 = v798 | (((v801 >> v799) & 0x7FFF) << 32);
              *(result + 80) = v802;
              v803 = (*a3 - 52) & 7;
              v804 = (a2 + ((*a3 + 460) >> 3));
              if (v803 > 1)
              {
                v805 = (v804[2] << 16) | (v804[1] << 8) | *v804;
              }

              else
              {
                v805 = *v804;
              }

              *(result + 80) = v802 | (((v805 >> v803) & 0x7FFF) << 48);
              v806 = (*a3 - 37) & 7;
              v807 = (a2 + ((*a3 + 475) >> 3));
              if (v806 > 1)
              {
                v808 = (v807[2] << 16) | (v807[1] << 8) | *v807;
              }

              else
              {
                v808 = *v807;
              }

              *(result + 88) |= (v808 >> v806) & 0x7FFF;
              v25 = 490;
              break;
            case 3u:
              *(result + 16) = 3;
              v444 = *(result + 24) | (*(a2 + ((*a3 + 8) >> 3)) >> (*a3 & 7)) & 1;
              *(result + 24) = v444;
              v445 = *a3 + 9;
              v446 = (a2 + (v445 >> 3));
              v447 = v445 & 7;
              if (v447)
              {
                v448 = (((v446[2] << 16) | (v446[1] << 8) | *v446) >> v447);
              }

              else
              {
                v448 = *v446;
              }

              v1179 = v444 | (v448 << 16);
              *(result + 24) = v1179;
              v1180 = *a3 + 25;
              v1181 = (a2 + (v1180 >> 3));
              v1182 = v1180 & 7;
              if (v1182)
              {
                v1183 = (((v1181[2] << 16) | (v1181[1] << 8) | *v1181) >> v1182);
              }

              else
              {
                v1183 = *v1181;
              }

              v1184 = v1179 | (v1183 << 32);
              *(result + 24) = v1184;
              v1185 = *a3 + 41;
              v1186 = (a2 + (v1185 >> 3));
              v1187 = v1185 & 7;
              if (v1187)
              {
                v1188 = (((v1186[2] << 16) | (v1186[1] << 8) | *v1186) >> v1187);
              }

              else
              {
                v1188 = *v1186;
              }

              *(result + 24) = v1184 | (v1188 << 48);
              v1189 = *a3 + 57;
              v1190 = (a2 + (v1189 >> 3));
              v1191 = v1189 & 7;
              if (v1191)
              {
                v1192 = (((v1190[2] << 16) | (v1190[1] << 8) | *v1190) >> v1191);
              }

              else
              {
                v1192 = *v1190;
              }

              v1193 = *(result + 32) | v1192;
              *(result + 32) = v1193;
              v1194 = *a3 + 73;
              v1195 = (a2 + (v1194 >> 3));
              v1196 = v1194 & 7;
              if (v1196)
              {
                v1197 = (((v1195[2] << 16) | (v1195[1] << 8) | *v1195) >> v1196);
              }

              else
              {
                v1197 = *v1195;
              }

              v1198 = v1193 | (v1197 << 16);
              *(result + 32) = v1198;
              v1199 = *a3 + 89;
              v1200 = v1199 & 7;
              v1201 = (a2 + (v1199 >> 3));
              if (v1200 > 1)
              {
                v1202 = (v1201[2] << 16) | (v1201[1] << 8) | *v1201;
              }

              else
              {
                v1202 = *v1201;
              }

              v1203 = v1198 | (((v1202 >> v1200) & 0x7FFF) << 32);
              *(result + 32) = v1203;
              v1204 = (a2 + ((*a3 + 104) >> 3));
              v1205 = *a3 & 7;
              if (v1205)
              {
                v1206 = (((v1204[2] << 16) | (v1204[1] << 8) | *v1204) >> v1205);
              }

              else
              {
                v1206 = *v1204;
              }

              *(result + 32) = v1203 | (v1206 << 48);
              v1207 = (a2 + ((*a3 + 120) >> 3));
              v1208 = *a3 & 7;
              if (v1208)
              {
                v1209 = (((v1207[2] << 16) | (v1207[1] << 8) | *v1207) >> v1208);
              }

              else
              {
                v1209 = *v1207;
              }

              v1210 = *(result + 40) | v1209;
              *(result + 40) = v1210;
              v1211 = (a2 + ((*a3 + 136) >> 3));
              v1212 = *a3 & 7;
              if (v1212)
              {
                v1213 = (((v1211[2] << 16) | (v1211[1] << 8) | *v1211) >> v1212);
              }

              else
              {
                v1213 = *v1211;
              }

              v1214 = v1210 | (v1213 << 16);
              *(result + 40) = v1214;
              v1215 = (a2 + ((*a3 + 152) >> 3));
              v1216 = *a3 & 7;
              if (v1216)
              {
                v1217 = (((v1215[2] << 16) | (v1215[1] << 8) | *v1215) >> v1216);
              }

              else
              {
                v1217 = *v1215;
              }

              v1218 = v1214 | (v1217 << 32);
              *(result + 40) = v1218;
              v1219 = (a2 + ((*a3 + 168) >> 3));
              v1220 = *a3 & 7;
              if (v1220)
              {
                v1221 = (((v1219[2] << 16) | (v1219[1] << 8) | *v1219) >> v1220);
              }

              else
              {
                v1221 = *v1219;
              }

              *(result + 40) = v1218 | (v1221 << 48);
              v1222 = *a3 & 7;
              v1223 = (a2 + ((*a3 + 184) >> 3));
              if (v1222 > 1)
              {
                v1224 = (v1223[2] << 16) | (v1223[1] << 8) | *v1223;
              }

              else
              {
                v1224 = *v1223;
              }

              v1225 = *(result + 48) | (v1224 >> v1222) & 0x7FFF;
              *(result + 48) = v1225;
              v1226 = (*a3 - 57) & 7;
              v1227 = (a2 + ((*a3 + 199) >> 3));
              if (v1226 > 1)
              {
                v1228 = (v1227[2] << 16) | (v1227[1] << 8) | *v1227;
              }

              else
              {
                v1228 = *v1227;
              }

              *(result + 48) = v1225 | (((v1228 >> v1226) & 0x7FFF) << 16);
              v25 = 214;
              break;
            case 4u:
              *(result + 16) = 4;
              v273 = *(result + 24) | (*(a2 + ((*a3 + 8) >> 3)) >> (*a3 & 7)) & 1;
              *(result + 24) = v273;
              v274 = *a3 + 9;
              v275 = v274 & 7;
              v276 = (a2 + (v274 >> 3));
              if (v275 == 7)
              {
                v277 = *v276 >> 7;
              }

              else
              {
                v277 = ((v276[2] << 16) | (v276[1] << 8) | *v276) >> v275;
              }

              v495 = v273 | (2 * (v277 & 0x3FFFFu));
              *(result + 24) = v495;
              v496 = *a3 + 27;
              v497 = v496 & 7;
              v498 = (a2 + (v496 >> 3));
              if (v497 == 7)
              {
                v499 = *v498 >> 7;
              }

              else
              {
                v499 = ((v498[2] << 16) | (v498[1] << 8) | *v498) >> v497;
              }

              *(result + 24) = v495 | ((v499 & 0x3FFFF) << 32);
              v500 = *a3 + 45;
              v501 = v500 & 7;
              v502 = (a2 + (v500 >> 3));
              if (v501 == 7)
              {
                v503 = *v502 >> 7;
              }

              else
              {
                v503 = ((v502[2] << 16) | (v502[1] << 8) | *v502) >> v501;
              }

              v504 = *(result + 32) | v503 & 0x3FFFF;
              *(result + 32) = v504;
              v505 = *a3 + 63;
              v506 = v505 & 7;
              v507 = (a2 + (v505 >> 3));
              if (v506 == 7)
              {
                v508 = *v507 >> 7;
              }

              else
              {
                v508 = ((v507[2] << 16) | (v507[1] << 8) | *v507) >> v506;
              }

              *(result + 32) = v504 | ((v508 & 0x3FFFF) << 32);
              v509 = *a3 + 81;
              v510 = v509 & 7;
              v511 = (a2 + (v509 >> 3));
              if (v510 == 7)
              {
                v512 = *v511 >> 7;
              }

              else
              {
                v512 = ((v511[2] << 16) | (v511[1] << 8) | *v511) >> v510;
              }

              v513 = *(result + 40) | v512 & 0x3FFFF;
              *(result + 40) = v513;
              v514 = *a3 + 99;
              v515 = v514 & 7;
              v516 = (a2 + (v514 >> 3));
              if (v515 == 7)
              {
                v517 = *v516 >> 7;
              }

              else
              {
                v517 = ((v516[2] << 16) | (v516[1] << 8) | *v516) >> v515;
              }

              *(result + 40) = v513 | ((v517 & 0x3FFFF) << 32);
              v518 = *a3 + 117;
              v519 = v518 & 7;
              v520 = (a2 + (v518 >> 3));
              if (v519 > 4)
              {
                v521 = *v520;
              }

              else
              {
                v521 = (v520[2] << 16) | (v520[1] << 8) | *v520;
              }

              v522 = *(result + 48) | (v521 >> v519) & 0xFFFFF;
              *(result + 48) = v522;
              v523 = (*a3 - 119) & 7;
              v524 = (a2 + ((*a3 + 137) >> 3));
              if (v523 > 4)
              {
                v525 = *v524;
              }

              else
              {
                v525 = (v524[2] << 16) | (v524[1] << 8) | *v524;
              }

              *(result + 48) = v522 | (((v525 >> v523) & 0xFFFFF) << 32);
              v526 = (*a3 - 99) & 7;
              v527 = (a2 + ((*a3 + 157) >> 3));
              if (v526 > 4)
              {
                v528 = *v527;
              }

              else
              {
                v528 = (v527[2] << 16) | (v527[1] << 8) | *v527;
              }

              v529 = *(result + 56) | (v528 >> v526) & 0xFFFFF;
              *(result + 56) = v529;
              v530 = (a2 + ((*a3 + 177) >> 3));
              if (((*a3 - 79) & 7) != 0)
              {
                v531 = (((v530[2] << 16) | (v530[1] << 8) | *v530) >> ((*a3 - 79) & 7));
              }

              else
              {
                v531 = *v530;
              }

              v1157 = v529 | (v531 << 32);
              *(result + 56) = v1157;
              v1158 = (a2 + ((*a3 + 193) >> 3));
              if (((*a3 - 63) & 7) != 0)
              {
                v1159 = (((v1158[2] << 16) | (v1158[1] << 8) | *v1158) >> ((*a3 - 63) & 7));
              }

              else
              {
                v1159 = *v1158;
              }

              *(result + 56) = v1157 | (v1159 << 48);
              v25 = 209;
              break;
            case 5u:
              *(result + 16) = 5;
              v457 = *(result + 24) | (*(a2 + ((*a3 + 8) >> 3)) >> (*a3 & 7)) & 1;
              *(result + 24) = v457;
              v458 = *a3 + 9;
              v459 = v458 & 7;
              v460 = (a2 + (v458 >> 3));
              if (v459 > 5)
              {
                v461 = *v460;
              }

              else
              {
                v461 = (v460[2] << 16) | (v460[1] << 8) | *v460;
              }

              v1032 = v457 | (2 * ((v461 >> v459) & 0x7FFFF));
              *(result + 24) = v1032;
              v1033 = *a3 + 28;
              *(result + 24) = v1032 | (((((*(a2 + (v1033 >> 3) + 2) << 16) | (*(a2 + (v1033 >> 3) + 1) << 8) | *(a2 + (v1033 >> 3))) >> (v1033 & 7)) & 0x1FFFF) << 32);
              v1034 = *a3 + 45;
              v1035 = v1034 & 7;
              v1036 = (a2 + (v1034 >> 3));
              if (v1035 > 4)
              {
                v1037 = *v1036;
              }

              else
              {
                v1037 = (v1036[2] << 16) | (v1036[1] << 8) | *v1036;
              }

              v1038 = *(result + 32) | (v1037 >> v1035) & 0xFFFFF;
              *(result + 32) = v1038;
              v1039 = *a3 + 65;
              v1040 = v1039 & 7;
              v1041 = (a2 + (v1039 >> 3));
              if (v1040 > 4)
              {
                v1042 = *v1041;
              }

              else
              {
                v1042 = (v1041[2] << 16) | (v1041[1] << 8) | *v1041;
              }

              *(result + 32) = v1038 | (((v1042 >> v1040) & 0xFFFFF) << 32);
              v25 = 85;
              break;
            case 6u:
              *(result + 16) = 6;
              v465 = *(result + 24) | (*(a2 + ((*a3 + 8) >> 3)) >> (*a3 & 7)) & 1;
              *(result + 24) = v465;
              v466 = *a3 + 9;
              v467 = v466 & 7;
              v468 = (a2 + (v466 >> 3));
              if (v467 > 5)
              {
                v469 = *v468;
              }

              else
              {
                v469 = (v468[2] << 16) | (v468[1] << 8) | *v468;
              }

              v1079 = v465 | (2 * ((v469 >> v467) & 0x7FFFF));
              *(result + 24) = v1079;
              v1080 = *a3 + 28;
              v1081 = v1080 & 7;
              v1082 = (a2 + (v1080 >> 3));
              if (v1081 > 5)
              {
                v1083 = *v1082;
              }

              else
              {
                v1083 = (v1082[2] << 16) | (v1082[1] << 8) | *v1082;
              }

              *(result + 24) = v1079 | (((v1083 >> v1081) & 0x7FFFF) << 32);
              v1084 = *a3 + 47;
              v1085 = v1084 & 7;
              v1086 = (a2 + (v1084 >> 3));
              if (v1085 > 5)
              {
                v1087 = *v1086;
              }

              else
              {
                v1087 = (v1086[2] << 16) | (v1086[1] << 8) | *v1086;
              }

              v1088 = *(result + 32) | (v1087 >> v1085) & 0x7FFFF;
              *(result + 32) = v1088;
              v1089 = *a3 + 66;
              v1090 = v1089 & 7;
              v1091 = (a2 + (v1089 >> 3));
              if (v1090 > 5)
              {
                v1092 = *v1091;
              }

              else
              {
                v1092 = (v1091[2] << 16) | (v1091[1] << 8) | *v1091;
              }

              *(result + 32) = v1088 | (((v1092 >> v1090) & 0x7FFFF) << 32);
              v1093 = *a3 + 85;
              v1094 = v1093 & 7;
              v1095 = (a2 + (v1093 >> 3));
              if (v1094 > 5)
              {
                v1096 = *v1095;
              }

              else
              {
                v1096 = (v1095[2] << 16) | (v1095[1] << 8) | *v1095;
              }

              v1097 = *(result + 40) | (v1096 >> v1094) & 0x7FFFF;
              *(result + 40) = v1097;
              v1098 = *a3 & 7;
              v1099 = (a2 + ((*a3 + 104) >> 3));
              if (v1098 > 5)
              {
                v1100 = *v1099;
              }

              else
              {
                v1100 = (v1099[2] << 16) | (v1099[1] << 8) | *v1099;
              }

              *(result + 40) = v1097 | (((v1100 >> v1098) & 0x7FFFF) << 32);
              v1101 = *a3 + 123;
              v1102 = v1101 & 7;
              v1103 = (a2 + (v1101 >> 3));
              if (v1102 > 5)
              {
                v1104 = *v1103;
              }

              else
              {
                v1104 = (v1103[2] << 16) | (v1103[1] << 8) | *v1103;
              }

              v1105 = *(result + 48) | (v1104 >> v1102) & 0x7FFFF;
              *(result + 48) = v1105;
              v1106 = (*a3 - 114) & 7;
              v1107 = (a2 + ((*a3 + 142) >> 3));
              if (v1106 > 5)
              {
                v1108 = *v1107;
              }

              else
              {
                v1108 = (v1107[2] << 16) | (v1107[1] << 8) | *v1107;
              }

              *(result + 48) = v1105 | (((v1108 >> v1106) & 0x7FFFF) << 32);
              v1109 = (*a3 - 95) & 7;
              v1110 = (a2 + ((*a3 + 161) >> 3));
              if (v1109 > 5)
              {
                v1111 = *v1110;
              }

              else
              {
                v1111 = (v1110[2] << 16) | (v1110[1] << 8) | *v1110;
              }

              v1112 = *(result + 56) | (v1111 >> v1109) & 0x7FFFF;
              *(result + 56) = v1112;
              v1113 = (*a3 - 76) & 7;
              v1114 = (a2 + ((*a3 + 180) >> 3));
              if (v1113 > 5)
              {
                v1115 = *v1114;
              }

              else
              {
                v1115 = (v1114[2] << 16) | (v1114[1] << 8) | *v1114;
              }

              *(result + 56) = v1112 | (((v1115 >> v1113) & 0x7FFFF) << 32);
              v1116 = (*a3 - 57) & 7;
              v1117 = (a2 + ((*a3 + 199) >> 3));
              if (v1116 > 5)
              {
                v1118 = *v1117;
              }

              else
              {
                v1118 = (v1117[2] << 16) | (v1117[1] << 8) | *v1117;
              }

              v1119 = *(result + 64) | (v1118 >> v1116) & 0x7FFFF;
              *(result + 64) = v1119;
              v1120 = (*a3 - 38) & 7;
              v1121 = (a2 + ((*a3 + 218) >> 3));
              if (v1120 > 5)
              {
                v1122 = *v1121;
              }

              else
              {
                v1122 = (v1121[2] << 16) | (v1121[1] << 8) | *v1121;
              }

              *(result + 64) = v1119 | (((v1122 >> v1120) & 0x7FFFF) << 32);
              v1123 = (*a3 - 19) & 7;
              v1124 = (a2 + ((*a3 + 237) >> 3));
              if (v1123 > 5)
              {
                v1125 = *v1124;
              }

              else
              {
                v1125 = (v1124[2] << 16) | (v1124[1] << 8) | *v1124;
              }

              v1126 = *(result + 72) | (v1125 >> v1123) & 0x7FFFF;
              *(result + 72) = v1126;
              v1127 = *a3 & 7;
              v1128 = (a2 + ((*a3 + 256) >> 3));
              if (v1127 > 5)
              {
                v1129 = *v1128;
              }

              else
              {
                v1129 = (v1128[2] << 16) | (v1128[1] << 8) | *v1128;
              }

              *(result + 72) = v1126 | (((v1129 >> v1127) & 0x7FFFF) << 32);
              v1130 = *a3 + 275;
              v1131 = v1130 & 7;
              v1132 = (a2 + (v1130 >> 3));
              if (v1131 > 5)
              {
                v1133 = *v1132;
              }

              else
              {
                v1133 = (v1132[2] << 16) | (v1132[1] << 8) | *v1132;
              }

              v1134 = *(result + 80) | (v1133 >> v1131) & 0x7FFFF;
              *(result + 80) = v1134;
              v1135 = *a3 + 294;
              v1136 = v1135 & 7;
              v1137 = (a2 + (v1135 >> 3));
              if (v1136 > 5)
              {
                v1138 = *v1137;
              }

              else
              {
                v1138 = (v1137[2] << 16) | (v1137[1] << 8) | *v1137;
              }

              *(result + 80) = v1134 | (((v1138 >> v1136) & 0x7FFFF) << 32);
              v1139 = *a3 + 313;
              v1140 = v1139 & 7;
              v1141 = (a2 + (v1139 >> 3));
              if (v1140 > 5)
              {
                v1142 = *v1141;
              }

              else
              {
                v1142 = (v1141[2] << 16) | (v1141[1] << 8) | *v1141;
              }

              v1143 = *(result + 88) | (v1142 >> v1140) & 0x7FFFF;
              *(result + 88) = v1143;
              v1144 = *a3 + 332;
              v1145 = v1144 & 7;
              v1146 = (a2 + (v1144 >> 3));
              if (v1145 > 5)
              {
                v1147 = *v1146;
              }

              else
              {
                v1147 = (v1146[2] << 16) | (v1146[1] << 8) | *v1146;
              }

              *(result + 88) = v1143 | (((v1147 >> v1145) & 0x7FFFF) << 32);
              v1148 = *a3 + 351;
              v1149 = v1148 & 7;
              v1150 = (a2 + (v1148 >> 3));
              if (v1149 > 5)
              {
                v1151 = *v1150;
              }

              else
              {
                v1151 = (v1150[2] << 16) | (v1150[1] << 8) | *v1150;
              }

              v1152 = *(result + 96) | (v1151 >> v1149) & 0x7FFFF;
              *(result + 96) = v1152;
              v1153 = *a3 + 370;
              v1154 = v1153 & 7;
              v1155 = (a2 + (v1153 >> 3));
              if (v1154 > 5)
              {
                v1156 = *v1155;
              }

              else
              {
                v1156 = (v1155[2] << 16) | (v1155[1] << 8) | *v1155;
              }

              *(result + 96) = v1152 | (((v1156 >> v1154) & 0x7FFFF) << 32);
              v25 = 389;
              break;
            case 7u:
              *(result + 16) = 7;
              v449 = *(result + 24) | (*(a2 + ((*a3 + 8) >> 3)) >> (*a3 & 7)) & 1;
              *(result + 24) = v449;
              v450 = *a3 + 9;
              v451 = v450 & 7;
              v452 = (a2 + (v450 >> 3));
              if (v451 > 1)
              {
                v453 = (v452[2] << 16) | (v452[1] << 8) | *v452;
              }

              else
              {
                v453 = *v452;
              }

              v850 = v449 | (2 * ((v453 >> v451) & 0x7FFF));
              *(result + 24) = v850;
              v851 = *a3 & 7;
              v852 = (a2 + ((*a3 + 24) >> 3));
              if (v851 > 1)
              {
                v853 = (v852[2] << 16) | (v852[1] << 8) | *v852;
              }

              else
              {
                v853 = *v852;
              }

              v854 = v850 | (((v853 >> v851) & 0x7FFF) << 16);
              *(result + 24) = v854;
              v855 = *a3 + 39;
              v856 = v855 & 7;
              v857 = (a2 + (v855 >> 3));
              if (v856 > 1)
              {
                v858 = (v857[2] << 16) | (v857[1] << 8) | *v857;
              }

              else
              {
                v858 = *v857;
              }

              v859 = v854 | (((v858 >> v856) & 0x7FFF) << 32);
              *(result + 24) = v859;
              v860 = *a3 + 54;
              v861 = v860 & 7;
              v862 = (a2 + (v860 >> 3));
              if (v861 > 1)
              {
                v863 = (v862[2] << 16) | (v862[1] << 8) | *v862;
              }

              else
              {
                v863 = *v862;
              }

              *(result + 24) = v859 | (((v863 >> v861) & 0x7FFF) << 48);
              v864 = *a3 + 69;
              v865 = v864 & 7;
              v866 = (a2 + (v864 >> 3));
              if (v865 > 1)
              {
                v867 = (v866[2] << 16) | (v866[1] << 8) | *v866;
              }

              else
              {
                v867 = *v866;
              }

              v868 = *(result + 32) | (v867 >> v865) & 0x7FFF;
              *(result + 32) = v868;
              v869 = *a3 + 84;
              v870 = v869 & 7;
              v871 = (a2 + (v869 >> 3));
              if (v870 > 1)
              {
                v872 = (v871[2] << 16) | (v871[1] << 8) | *v871;
              }

              else
              {
                v872 = *v871;
              }

              v873 = v868 | (((v872 >> v870) & 0x7FFF) << 16);
              *(result + 32) = v873;
              v874 = *a3 + 99;
              v875 = v874 & 7;
              v876 = (a2 + (v874 >> 3));
              if (v875 > 1)
              {
                v877 = (v876[2] << 16) | (v876[1] << 8) | *v876;
              }

              else
              {
                v877 = *v876;
              }

              v878 = v873 | (((v877 >> v875) & 0x7FFF) << 32);
              *(result + 32) = v878;
              v879 = *a3 + 114;
              v880 = v879 & 7;
              v881 = (a2 + (v879 >> 3));
              if (v880 > 1)
              {
                v882 = (v881[2] << 16) | (v881[1] << 8) | *v881;
              }

              else
              {
                v882 = *v881;
              }

              *(result + 32) = v878 | (((v882 >> v880) & 0x7FFF) << 48);
              v883 = (*a3 - 127) & 7;
              v884 = (a2 + ((*a3 + 129) >> 3));
              if (v883 > 1)
              {
                v885 = (v884[2] << 16) | (v884[1] << 8) | *v884;
              }

              else
              {
                v885 = *v884;
              }

              v886 = *(result + 40) | (v885 >> v883) & 0x7FFF;
              *(result + 40) = v886;
              v887 = *a3 & 7;
              v888 = (a2 + ((*a3 + 144) >> 3));
              if (v887 > 1)
              {
                v889 = (v888[2] << 16) | (v888[1] << 8) | *v888;
              }

              else
              {
                v889 = *v888;
              }

              v890 = v886 | (((v889 >> v887) & 0x7FFF) << 16);
              *(result + 40) = v890;
              v891 = (*a3 - 97) & 7;
              v892 = (a2 + ((*a3 + 159) >> 3));
              if (v891 > 5)
              {
                v893 = *v892;
              }

              else
              {
                v893 = (v892[2] << 16) | (v892[1] << 8) | *v892;
              }

              *(result + 40) = v890 | (((v893 >> v891) & 0x7FFFF) << 32);
              v894 = (*a3 - 78) & 7;
              v895 = (a2 + ((*a3 + 178) >> 3));
              if (v894 > 5)
              {
                v896 = *v895;
              }

              else
              {
                v896 = (v895[2] << 16) | (v895[1] << 8) | *v895;
              }

              v897 = *(result + 48) | (v896 >> v894) & 0x7FFFF;
              *(result + 48) = v897;
              v898 = (*a3 - 59) & 7;
              v899 = (a2 + ((*a3 + 197) >> 3));
              if (v898 > 5)
              {
                v900 = *v899;
              }

              else
              {
                v900 = (v899[2] << 16) | (v899[1] << 8) | *v899;
              }

              *(result + 48) = v897 | (((v900 >> v898) & 0x7FFFF) << 32);
              v901 = *a3 & 7;
              v902 = (a2 + ((*a3 + 216) >> 3));
              if (v901 > 5)
              {
                v903 = *v902;
              }

              else
              {
                v903 = (v902[2] << 16) | (v902[1] << 8) | *v902;
              }

              v904 = *(result + 56) | (v903 >> v901) & 0x7FFFF;
              *(result + 56) = v904;
              v905 = (*a3 - 21) & 7;
              v906 = (a2 + ((*a3 + 235) >> 3));
              if (v905 > 5)
              {
                v907 = *v906;
              }

              else
              {
                v907 = (v906[2] << 16) | (v906[1] << 8) | *v906;
              }

              *(result + 56) = v904 | (((v907 >> v905) & 0x7FFFF) << 32);
              v908 = (*a3 - 2) & 7;
              v909 = (a2 + ((*a3 + 254) >> 3));
              if (v908 > 5)
              {
                v910 = *v909;
              }

              else
              {
                v910 = (v909[2] << 16) | (v909[1] << 8) | *v909;
              }

              v911 = *(result + 64) | (v910 >> v908) & 0x7FFFF;
              *(result + 64) = v911;
              v912 = *a3 + 273;
              v913 = v912 & 7;
              v914 = (a2 + (v912 >> 3));
              if (v913 > 5)
              {
                v915 = *v914;
              }

              else
              {
                v915 = (v914[2] << 16) | (v914[1] << 8) | *v914;
              }

              *(result + 64) = v911 | (((v915 >> v913) & 0x7FFFF) << 32);
              v916 = *a3 + 292;
              v917 = v916 & 7;
              v918 = (a2 + (v916 >> 3));
              if (v917 > 5)
              {
                v919 = *v918;
              }

              else
              {
                v919 = (v918[2] << 16) | (v918[1] << 8) | *v918;
              }

              v920 = *(result + 72) | (v919 >> v917) & 0x7FFFF;
              *(result + 72) = v920;
              v921 = *a3 + 311;
              v922 = v921 & 7;
              v923 = (a2 + (v921 >> 3));
              if (v922 > 5)
              {
                v924 = *v923;
              }

              else
              {
                v924 = (v923[2] << 16) | (v923[1] << 8) | *v923;
              }

              *(result + 72) = v920 | (((v924 >> v922) & 0x7FFFF) << 32);
              v25 = 330;
              break;
            case 8u:
              *(result + 16) = 8;
              v473 = (a2 + ((*a3 + 8) >> 3));
              v474 = *a3 & 7;
              if (v474)
              {
                v475 = (((v473[2] << 16) | (v473[1] << 8) | *v473) >> v474);
              }

              else
              {
                v475 = *v473;
              }

              v1258 = *(result + 24) | v475;
              *(result + 24) = v1258;
              v1259 = (a2 + ((*a3 + 24) >> 3));
              v1260 = *a3 & 7;
              if (v1260)
              {
                v1261 = (((v1259[2] << 16) | (v1259[1] << 8) | *v1259) >> v1260);
              }

              else
              {
                v1261 = *v1259;
              }

              v1262 = v1258 | (v1261 << 16);
              *(result + 24) = v1262;
              *(result + 24) = v1262 | (((((*(a2 + ((*a3 + 40) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 40) >> 3) + 1) << 8) | *(a2 + ((*a3 + 40) >> 3))) >> (*a3 & 7)) & 0x1FFFF) << 32);
              v1263 = (((*(a2 + ((*a3 + 57) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 57) >> 3) + 1) << 8) | *(a2 + ((*a3 + 57) >> 3))) >> ((*a3 + 57) & 7)) & 0x1FFFF | *(result + 32);
              *(result + 32) = v1263;
              v1264 = *a3 + 74;
              v1265 = v1264 & 7;
              v1266 = (a2 + (v1264 >> 3));
              if (v1265 > 1)
              {
                v1267 = (v1266[2] << 16) | (v1266[1] << 8) | *v1266;
              }

              else
              {
                v1267 = *v1266;
              }

              *(result + 32) = v1263 | (v1267 >> v1265 << 17);
              v25 = 89;
              break;
            case 9u:
              *(result + 16) = 9;
              v281 = *(result + 24) | (*(a2 + ((*a3 + 8) >> 3)) >> (*a3 & 7)) & 1;
              *(result + 24) = v281;
              v282 = *a3 + 9;
              v283 = v282 & 7;
              v284 = (a2 + (v282 >> 3));
              if (v283 > 3)
              {
                v285 = (v284[2] << 16) | (v284[1] << 8) | *v284;
              }

              else
              {
                v285 = *v284;
              }

              v542 = v281 | (2 * ((v285 >> v283) & 0x1FFF));
              *(result + 24) = v542;
              v543 = *a3 + 22;
              v544 = v543 & 7;
              v545 = (a2 + (v543 >> 3));
              if (v544 > 3)
              {
                v546 = (v545[2] << 16) | (v545[1] << 8) | *v545;
              }

              else
              {
                v546 = *v545;
              }

              v547 = v542 | (((v546 >> v544) & 0x1FFF) << 16);
              *(result + 24) = v547;
              v548 = *a3 + 35;
              v549 = v548 & 7;
              v550 = (a2 + (v548 >> 3));
              if (v549 > 3)
              {
                v551 = (v550[2] << 16) | (v550[1] << 8) | *v550;
              }

              else
              {
                v551 = *v550;
              }

              v552 = v547 | (((v551 >> v549) & 0x1FFF) << 32);
              *(result + 24) = v552;
              v553 = *a3 & 7;
              v554 = (a2 + ((*a3 + 48) >> 3));
              if (v553 > 3)
              {
                v555 = (v554[2] << 16) | (v554[1] << 8) | *v554;
              }

              else
              {
                v555 = *v554;
              }

              *(result + 24) = v552 | (((v555 >> v553) & 0x1FFF) << 48);
              v556 = *a3 + 61;
              v557 = v556 & 7;
              v558 = (a2 + (v556 >> 3));
              if (v557 > 3)
              {
                v559 = (v558[2] << 16) | (v558[1] << 8) | *v558;
              }

              else
              {
                v559 = *v558;
              }

              v560 = *(result + 32) | (v559 >> v557) & 0x1FFF;
              *(result + 32) = v560;
              v561 = *a3 + 74;
              v562 = v561 & 7;
              v563 = (a2 + (v561 >> 3));
              if (v562 > 3)
              {
                v564 = (v563[2] << 16) | (v563[1] << 8) | *v563;
              }

              else
              {
                v564 = *v563;
              }

              v565 = v560 | (((v564 >> v562) & 0x1FFF) << 16);
              *(result + 32) = v565;
              v566 = *a3 + 87;
              v567 = v566 & 7;
              v568 = (a2 + (v566 >> 3));
              if (v567 > 3)
              {
                v569 = (v568[2] << 16) | (v568[1] << 8) | *v568;
              }

              else
              {
                v569 = *v568;
              }

              v570 = v565 | (((v569 >> v567) & 0x1FFF) << 32);
              *(result + 32) = v570;
              v571 = *a3 + 100;
              v572 = v571 & 7;
              v573 = (a2 + (v571 >> 3));
              if (v572 > 3)
              {
                v574 = (v573[2] << 16) | (v573[1] << 8) | *v573;
              }

              else
              {
                v574 = *v573;
              }

              *(result + 32) = v570 | (((v574 >> v572) & 0x1FFF) << 48);
              v575 = *a3 + 113;
              v576 = v575 & 7;
              v577 = (a2 + (v575 >> 3));
              if (v576 > 3)
              {
                v578 = (v577[2] << 16) | (v577[1] << 8) | *v577;
              }

              else
              {
                v578 = *v577;
              }

              v579 = *(result + 40) | (v578 >> v576) & 0x1FFF;
              *(result + 40) = v579;
              v580 = *a3 + 126;
              v581 = v580 & 7;
              v582 = (a2 + (v580 >> 3));
              if (v581 > 3)
              {
                v583 = (v582[2] << 16) | (v582[1] << 8) | *v582;
              }

              else
              {
                v583 = *v582;
              }

              v584 = v579 | (((v583 >> v581) & 0x1FFF) << 16);
              *(result + 40) = v584;
              v585 = (*a3 - 117) & 7;
              v586 = (a2 + ((*a3 + 139) >> 3));
              if (v585 > 3)
              {
                v587 = (v586[2] << 16) | (v586[1] << 8) | *v586;
              }

              else
              {
                v587 = *v586;
              }

              v588 = v584 | (((v587 >> v585) & 0x1FFF) << 32);
              *(result + 40) = v588;
              v589 = *a3 & 7;
              v590 = (a2 + ((*a3 + 152) >> 3));
              if (v589 > 3)
              {
                v591 = (v590[2] << 16) | (v590[1] << 8) | *v590;
              }

              else
              {
                v591 = *v590;
              }

              *(result + 40) = v588 | (((v591 >> v589) & 0x1FFF) << 48);
              v592 = (*a3 - 91) & 7;
              v593 = (a2 + ((*a3 + 165) >> 3));
              if (v592 > 3)
              {
                v594 = (v593[2] << 16) | (v593[1] << 8) | *v593;
              }

              else
              {
                v594 = *v593;
              }

              v595 = *(result + 48) | (v594 >> v592) & 0x1FFF;
              *(result + 48) = v595;
              v596 = (*a3 - 78) & 7;
              v597 = (a2 + ((*a3 + 178) >> 3));
              if (v596 > 3)
              {
                v598 = (v597[2] << 16) | (v597[1] << 8) | *v597;
              }

              else
              {
                v598 = *v597;
              }

              v599 = v595 | (((v598 >> v596) & 0x1FFF) << 16);
              *(result + 48) = v599;
              v600 = (*a3 - 65) & 7;
              v601 = (a2 + ((*a3 + 191) >> 3));
              if (v600 > 3)
              {
                v602 = (v601[2] << 16) | (v601[1] << 8) | *v601;
              }

              else
              {
                v602 = *v601;
              }

              v603 = v599 | (((v602 >> v600) & 0x1FFF) << 32);
              *(result + 48) = v603;
              v604 = (*a3 - 52) & 7;
              v605 = (a2 + ((*a3 + 204) >> 3));
              if (v604 > 3)
              {
                v606 = (v605[2] << 16) | (v605[1] << 8) | *v605;
              }

              else
              {
                v606 = *v605;
              }

              *(result + 48) = v603 | (((v606 >> v604) & 0x1FFF) << 48);
              v607 = (*a3 - 39) & 7;
              v608 = (a2 + ((*a3 + 217) >> 3));
              if (v607 > 3)
              {
                v609 = (v608[2] << 16) | (v608[1] << 8) | *v608;
              }

              else
              {
                v609 = *v608;
              }

              v610 = *(result + 56) | (v609 >> v607) & 0x1FFF;
              *(result + 56) = v610;
              v611 = (*a3 - 26) & 7;
              v612 = (a2 + ((*a3 + 230) >> 3));
              if (v611 > 3)
              {
                v613 = (v612[2] << 16) | (v612[1] << 8) | *v612;
              }

              else
              {
                v613 = *v612;
              }

              v614 = v610 | (((v613 >> v611) & 0x1FFF) << 16);
              *(result + 56) = v614;
              v615 = (*a3 - 13) & 7;
              v616 = (a2 + ((*a3 + 243) >> 3));
              if (v615 > 3)
              {
                v617 = (v616[2] << 16) | (v616[1] << 8) | *v616;
              }

              else
              {
                v617 = *v616;
              }

              v618 = v614 | (((v617 >> v615) & 0x1FFF) << 32);
              *(result + 56) = v618;
              v619 = *a3 & 7;
              v620 = (a2 + ((*a3 + 256) >> 3));
              if (v619 > 3)
              {
                v621 = (v620[2] << 16) | (v620[1] << 8) | *v620;
              }

              else
              {
                v621 = *v620;
              }

              *(result + 56) = v618 | (((v621 >> v619) & 0x1FFF) << 48);
              v622 = *a3 + 269;
              v623 = v622 & 7;
              v624 = (a2 + (v622 >> 3));
              if (v623 > 3)
              {
                v625 = (v624[2] << 16) | (v624[1] << 8) | *v624;
              }

              else
              {
                v625 = *v624;
              }

              v626 = *(result + 64) | (v625 >> v623) & 0x1FFF;
              *(result + 64) = v626;
              v627 = *a3 + 282;
              v628 = v627 & 7;
              v629 = (a2 + (v627 >> 3));
              if (v628 > 3)
              {
                v630 = (v629[2] << 16) | (v629[1] << 8) | *v629;
              }

              else
              {
                v630 = *v629;
              }

              v631 = v626 | (((v630 >> v628) & 0x1FFF) << 16);
              *(result + 64) = v631;
              v632 = *a3 + 295;
              v633 = v632 & 7;
              v634 = (a2 + (v632 >> 3));
              if (v633 > 3)
              {
                v635 = (v634[2] << 16) | (v634[1] << 8) | *v634;
              }

              else
              {
                v635 = *v634;
              }

              v636 = v631 | (((v635 >> v633) & 0x1FFF) << 32);
              *(result + 64) = v636;
              v637 = *a3 + 308;
              v638 = v637 & 7;
              v639 = (a2 + (v637 >> 3));
              if (v638 > 3)
              {
                v640 = (v639[2] << 16) | (v639[1] << 8) | *v639;
              }

              else
              {
                v640 = *v639;
              }

              *(result + 64) = v636 | (((v640 >> v638) & 0x1FFF) << 48);
              v641 = *a3 + 321;
              v642 = v641 & 7;
              v643 = (a2 + (v641 >> 3));
              if (v642 > 3)
              {
                v644 = (v643[2] << 16) | (v643[1] << 8) | *v643;
              }

              else
              {
                v644 = *v643;
              }

              v645 = *(result + 72) | (v644 >> v642) & 0x1FFF;
              *(result + 72) = v645;
              v646 = *a3 + 334;
              v647 = v646 & 7;
              v648 = (a2 + (v646 >> 3));
              if (v647 > 3)
              {
                v649 = (v648[2] << 16) | (v648[1] << 8) | *v648;
              }

              else
              {
                v649 = *v648;
              }

              v650 = v645 | (((v649 >> v647) & 0x1FFF) << 16);
              *(result + 72) = v650;
              v651 = *a3 + 347;
              v652 = v651 & 7;
              v653 = (a2 + (v651 >> 3));
              if (v652 > 3)
              {
                v654 = (v653[2] << 16) | (v653[1] << 8) | *v653;
              }

              else
              {
                v654 = *v653;
              }

              v655 = v650 | (((v654 >> v652) & 0x1FFF) << 32);
              *(result + 72) = v655;
              v656 = *a3 & 7;
              v657 = (a2 + ((*a3 + 360) >> 3));
              if (v656 > 3)
              {
                v658 = (v657[2] << 16) | (v657[1] << 8) | *v657;
              }

              else
              {
                v658 = *v657;
              }

              *(result + 72) = v655 | (((v658 >> v656) & 0x1FFF) << 48);
              v659 = *a3 + 373;
              v660 = v659 & 7;
              v661 = (a2 + (v659 >> 3));
              if (v660 > 3)
              {
                v662 = (v661[2] << 16) | (v661[1] << 8) | *v661;
              }

              else
              {
                v662 = *v661;
              }

              v663 = *(result + 80) | (v662 >> v660) & 0x1FFF;
              *(result + 80) = v663;
              v664 = (*a3 - 126) & 7;
              v665 = (a2 + ((*a3 + 386) >> 3));
              if (v664 > 3)
              {
                v666 = (v665[2] << 16) | (v665[1] << 8) | *v665;
              }

              else
              {
                v666 = *v665;
              }

              v667 = v663 | (((v666 >> v664) & 0x1FFF) << 16);
              *(result + 80) = v667;
              v668 = (*a3 - 113) & 7;
              v669 = (a2 + ((*a3 + 399) >> 3));
              if (v668 > 3)
              {
                v670 = (v669[2] << 16) | (v669[1] << 8) | *v669;
              }

              else
              {
                v670 = *v669;
              }

              v671 = v667 | (((v670 >> v668) & 0x1FFF) << 32);
              *(result + 80) = v671;
              v672 = (*a3 - 100) & 7;
              v673 = (a2 + ((*a3 + 412) >> 3));
              if (v672 > 3)
              {
                v674 = (v673[2] << 16) | (v673[1] << 8) | *v673;
              }

              else
              {
                v674 = *v673;
              }

              *(result + 80) = v671 | (((v674 >> v672) & 0x1FFF) << 48);
              v25 = 425;
              break;
            case 0xAu:
              *(result + 16) = 10;
              v470 = (a2 + ((*a3 + 8) >> 3));
              v471 = *a3 & 7;
              if (v471)
              {
                v472 = (*v470 | (*(v470 + 1) << 8)) >> v471;
              }

              else
              {
                LODWORD(v472) = *v470;
              }

              *(result + 24) |= v472;
              v1236 = ((*(a2 + ((*a3 + 40) >> 3)) | (*(a2 + ((*a3 + 40) >> 3) + 1) << 8)) >> (*a3 & 7)) & 0x1FFFFFFFFLL | *(result + 32);
              *(result + 32) = v1236;
              v1237 = *a3 + 73;
              v1238 = v1237 & 7;
              v1239 = (a2 + (v1237 >> 3));
              if (v1238 > 1)
              {
                v1240 = (v1239[2] << 16) | (v1239[1] << 8) | *v1239;
              }

              else
              {
                v1240 = *v1239;
              }

              v1241 = v1236 | (((v1240 >> v1238) & 0x7FFF) << 33);
              *(result + 32) = v1241;
              v1242 = *a3 & 7;
              v1243 = (a2 + ((*a3 + 88) >> 3));
              if (v1242 > 1)
              {
                v1244 = (v1243[2] << 16) | (v1243[1] << 8) | *v1243;
              }

              else
              {
                v1244 = *v1243;
              }

              *(result + 32) = v1241 | (((v1244 >> v1242) & 0x7FFF) << 48);
              v1245 = *a3 + 103;
              v1246 = v1245 & 7;
              v1247 = (a2 + (v1245 >> 3));
              if (v1246 > 1)
              {
                v1248 = (v1247[2] << 16) | (v1247[1] << 8) | *v1247;
              }

              else
              {
                v1248 = *v1247;
              }

              v1249 = *(result + 40) | (v1248 >> v1246) & 0x7FFF;
              *(result + 40) = v1249;
              v1250 = *a3 + 118;
              v1251 = v1250 & 7;
              v1252 = (a2 + (v1250 >> 3));
              if (v1251 > 1)
              {
                v1253 = (v1252[2] << 16) | (v1252[1] << 8) | *v1252;
              }

              else
              {
                v1253 = *v1252;
              }

              v1254 = v1249 | (((v1253 >> v1251) & 0x7FFF) << 16);
              *(result + 40) = v1254;
              v1255 = (*a3 - 123) & 7;
              v1256 = (a2 + ((*a3 + 133) >> 3));
              if (v1255 > 1)
              {
                v1257 = (v1256[2] << 16) | (v1256[1] << 8) | *v1256;
              }

              else
              {
                v1257 = *v1256;
              }

              *(result + 40) = v1254 | (((v1257 >> v1255) & 0x7FFF) << 32);
              v25 = 148;
              break;
            case 0xBu:
              *(result + 16) = 11;
              v270 = *a3 & 7;
              v271 = (a2 + ((*a3 + 8) >> 3));
              if (v270 > 1)
              {
                v272 = (v271[2] << 16) | (v271[1] << 8) | *v271;
              }

              else
              {
                v272 = *v271;
              }

              v490 = *(result + 24) | (v272 >> v270) & 0x7FFF;
              *(result + 24) = v490;
              v491 = *a3 + 23;
              v492 = v491 & 7;
              v493 = (a2 + (v491 >> 3));
              if (v492 > 1)
              {
                v494 = (v493[2] << 16) | (v493[1] << 8) | *v493;
              }

              else
              {
                v494 = *v493;
              }

              *(result + 24) = v490 | (((v494 >> v492) & 0x7FFF) << 16);
              v25 = 38;
              break;
            case 0xCu:
              *(result + 16) = 12;
              v278 = *a3 & 7;
              v279 = (a2 + ((*a3 + 8) >> 3));
              if (v278 > 1)
              {
                v280 = (v279[2] << 16) | (v279[1] << 8) | *v279;
              }

              else
              {
                v280 = *v279;
              }

              v532 = *(result + 24) | (v280 >> v278) & 0x7FFF;
              *(result + 24) = v532;
              v533 = *a3 + 23;
              v534 = v533 & 7;
              v535 = (a2 + (v533 >> 3));
              if (v534 > 1)
              {
                v536 = (v535[2] << 16) | (v535[1] << 8) | *v535;
              }

              else
              {
                v536 = *v535;
              }

              v537 = v532 | (((v536 >> v534) & 0x7FFF) << 16);
              *(result + 24) = v537;
              v538 = *a3 + 38;
              v539 = (a2 + (v538 >> 3));
              v540 = v538 & 7;
              if (v540)
              {
                v541 = (((v539[2] << 16) | (v539[1] << 8) | *v539) >> v540);
              }

              else
              {
                v541 = *v539;
              }

              *(result + 24) = v537 | (v541 << 32);
              v1160 = *a3 + 54;
              v1161 = v1160 & 7;
              v1162 = (a2 + (v1160 >> 3));
              if (v1161 == 7)
              {
                v1163 = *v1162 >> 7;
              }

              else
              {
                v1163 = ((v1162[2] << 16) | (v1162[1] << 8) | *v1162) >> v1161;
              }

              v1164 = *(result + 32) | v1163 & 0x3FFFF;
              *(result + 32) = v1164;
              v1165 = *a3 & 7;
              v1166 = (a2 + ((*a3 + 72) >> 3));
              if (v1165 == 7)
              {
                v1167 = *v1166 >> 7;
              }

              else
              {
                v1167 = ((v1166[2] << 16) | (v1166[1] << 8) | *v1166) >> v1165;
              }

              *(result + 32) = v1164 | ((v1167 & 0x3FFFF) << 32);
              v1168 = *a3 + 90;
              v1169 = *(result + 40) | (((*(a2 + (v1168 >> 3) + 2) << 16) | (*(a2 + (v1168 >> 3) + 1) << 8) | *(a2 + (v1168 >> 3))) >> (v1168 & 7)) & 0x1FFFF;
              *(result + 40) = v1169;
              v1170 = *a3 + 107;
              v1171 = (a2 + (v1170 >> 3));
              v1172 = v1170 & 7;
              if (v1172)
              {
                v1173 = (((v1171[2] << 16) | (v1171[1] << 8) | *v1171) >> v1172);
              }

              else
              {
                v1173 = *v1171;
              }

              v1174 = v1169 | (v1173 << 32);
              *(result + 40) = v1174;
              v1175 = *a3 + 123;
              v1176 = (a2 + (v1175 >> 3));
              v1177 = v1175 & 7;
              if (v1177)
              {
                v1178 = (((v1176[2] << 16) | (v1176[1] << 8) | *v1176) >> v1177);
              }

              else
              {
                v1178 = *v1176;
              }

              *(result + 40) = v1174 | (v1178 << 48);
              v25 = 139;
              break;
            case 0xDu:
              *(result + 16) = 13;
              v462 = *a3 & 7;
              v463 = (a2 + ((*a3 + 8) >> 3));
              if (v462 > 1)
              {
                v464 = (v463[2] << 16) | (v463[1] << 8) | *v463;
              }

              else
              {
                v464 = *v463;
              }

              v1043 = *(result + 24) | (v464 >> v462) & 0x7FFF;
              *(result + 24) = v1043;
              v1044 = *a3 + 23;
              v1045 = v1044 & 7;
              v1046 = (a2 + (v1044 >> 3));
              if (v1045 > 1)
              {
                v1047 = (v1046[2] << 16) | (v1046[1] << 8) | *v1046;
              }

              else
              {
                v1047 = *v1046;
              }

              v1048 = v1043 | (((v1047 >> v1045) & 0x7FFF) << 16);
              *(result + 24) = v1048;
              v1049 = *a3 + 38;
              v1050 = v1049 & 7;
              v1051 = (a2 + (v1049 >> 3));
              if (v1050 > 1)
              {
                v1052 = (v1051[2] << 16) | (v1051[1] << 8) | *v1051;
              }

              else
              {
                v1052 = *v1051;
              }

              v1053 = v1048 | (((v1052 >> v1050) & 0x7FFF) << 32);
              *(result + 24) = v1053;
              v1054 = *a3 + 53;
              v1055 = v1054 & 7;
              v1056 = (a2 + (v1054 >> 3));
              if (v1055 > 1)
              {
                v1057 = (v1056[2] << 16) | (v1056[1] << 8) | *v1056;
              }

              else
              {
                v1057 = *v1056;
              }

              *(result + 24) = v1053 | (((v1057 >> v1055) & 0x7FFF) << 48);
              v1058 = *(result + 40);
              v1059 = *(result + 32) | (((*(a2 + ((*a3 + 68) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 68) >> 3) + 1) << 8) | *(a2 + ((*a3 + 68) >> 3))) >> ((*a3 + 68) & 7)) & 0x1FFFF;
              *(result + 32) = v1059;
              v1060 = *a3 + 85;
              *(result + 32) = v1059 | (((((*(a2 + (v1060 >> 3) + 2) << 16) | (*(a2 + (v1060 >> 3) + 1) << 8) | *(a2 + (v1060 >> 3))) >> (v1060 & 7)) & 0x1FFFF) << 32);
              v1061 = v1058 | (((*(a2 + ((*a3 + 102) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 102) >> 3) + 1) << 8) | *(a2 + ((*a3 + 102) >> 3))) >> ((*a3 + 102) & 7)) & 0x1FFFF;
              *(result + 40) = v1061;
              v1062 = *a3 + 119;
              v1063 = v1062 & 7;
              v1064 = (a2 + (v1062 >> 3));
              if (v1063 > 1)
              {
                v1065 = (v1064[2] << 16) | (v1064[1] << 8) | *v1064;
              }

              else
              {
                v1065 = *v1064;
              }

              v1066 = v1061 | (((v1065 >> v1063) & 0x7FFF) << 17);
              *(result + 40) = v1066;
              v1067 = (*a3 - 122) & 7;
              v1068 = (a2 + ((*a3 + 134) >> 3));
              if (v1067 > 2)
              {
                v1069 = (v1068[2] << 16) | (v1068[1] << 8) | *v1068;
              }

              else
              {
                v1069 = *v1068;
              }

              v1070 = v1066 | (((v1069 >> v1067) & 0x3FFF) << 32);
              *(result + 40) = v1070;
              v1071 = (*a3 - 108) & 7;
              v1072 = (a2 + ((*a3 + 148) >> 3));
              if (v1071 > 2)
              {
                v1073 = (v1072[2] << 16) | (v1072[1] << 8) | *v1072;
              }

              else
              {
                v1073 = *v1072;
              }

              *(result + 40) = v1070 | (((v1073 >> v1071) & 0x3FFF) << 48);
              v1074 = *(result + 56);
              v1075 = *(result + 48) | (((*(a2 + ((*a3 + 162) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 162) >> 3) + 1) << 8) | *(a2 + ((*a3 + 162) >> 3))) >> ((*a3 - 94) & 7)) & 0x1FFFF;
              *(result + 48) = v1075;
              *(result + 48) = v1075 | (((((*(a2 + ((*a3 + 179) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 179) >> 3) + 1) << 8) | *(a2 + ((*a3 + 179) >> 3))) >> ((*a3 - 77) & 7)) & 0x1FFFF) << 32);
              v1076 = v1074 | (((*(a2 + ((*a3 + 196) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 196) >> 3) + 1) << 8) | *(a2 + ((*a3 + 196) >> 3))) >> ((*a3 - 60) & 7)) & 0x1FFFF;
              *(result + 56) = v1076;
              v1077 = (a2 + ((*a3 + 213) >> 3));
              if (((*a3 - 43) & 7) != 0)
              {
                v1078 = (((v1077[2] << 16) | (v1077[1] << 8) | *v1077) >> ((*a3 - 43) & 7));
              }

              else
              {
                v1078 = *v1077;
              }

              v1233 = v1076 | (v1078 << 32);
              *(result + 56) = v1233;
              v1234 = (a2 + ((*a3 + 229) >> 3));
              if (((*a3 - 27) & 7) != 0)
              {
                v1235 = (((v1234[2] << 16) | (v1234[1] << 8) | *v1234) >> ((*a3 - 27) & 7));
              }

              else
              {
                v1235 = *v1234;
              }

              *(result + 56) = v1233 | (v1235 << 48);
              v25 = 245;
              break;
            case 0xEu:
              *(result + 16) = 14;
              v267 = *a3 & 7;
              v268 = (a2 + ((*a3 + 8) >> 3));
              if (v267 > 2)
              {
                v269 = *v268;
              }

              else
              {
                v269 = (v268[2] << 16) | (v268[1] << 8) | *v268;
              }

              v476 = *(result + 24) | (v269 >> v267) & 0x3FFFFF;
              *(result + 24) = v476;
              v477 = *a3 + 30;
              v478 = v477 & 7;
              v479 = (a2 + (v477 >> 3));
              if (v478 > 2)
              {
                v480 = *v479;
              }

              else
              {
                v480 = (v479[2] << 16) | (v479[1] << 8) | *v479;
              }

              *(result + 24) = v476 | (((v480 >> v478) & 0x3FFFFF) << 32);
              v481 = *a3 + 52;
              v482 = v481 & 7;
              v483 = (a2 + (v481 >> 3));
              if (v482 > 5)
              {
                v484 = *v483;
              }

              else
              {
                v484 = (v483[2] << 16) | (v483[1] << 8) | *v483;
              }

              v485 = *(result + 32) | (v484 >> v482) & 0x7FFFF;
              *(result + 32) = v485;
              v486 = *a3 + 71;
              v487 = v486 & 7;
              v488 = (a2 + (v486 >> 3));
              if (v487 > 2)
              {
                v489 = *v488;
              }

              else
              {
                v489 = (v488[2] << 16) | (v488[1] << 8) | *v488;
              }

              *(result + 32) = v485 | (((v489 >> v487) & 0x3FFFFF) << 32);
              v25 = 93;
              break;
            case 0xFu:
              *(result + 16) = 15;
              v289 = *a3 & 7;
              v290 = (a2 + ((*a3 + 8) >> 3));
              if (v289 > 2)
              {
                v291 = (v290[2] << 16) | (v290[1] << 8) | *v290;
              }

              else
              {
                v291 = *v290;
              }

              v809 = *(result + 24) | (v291 >> v289) & 0x3FFF;
              *(result + 24) = v809;
              v810 = *a3 + 22;
              v811 = v810 & 7;
              v812 = (a2 + (v810 >> 3));
              if (v811 > 2)
              {
                v813 = (v812[2] << 16) | (v812[1] << 8) | *v812;
              }

              else
              {
                v813 = *v812;
              }

              v814 = v809 | (((v813 >> v811) & 0x3FFF) << 16);
              *(result + 24) = v814;
              v815 = *a3 + 36;
              v816 = v815 & 7;
              v817 = (a2 + (v815 >> 3));
              if (v816 > 2)
              {
                v818 = (v817[2] << 16) | (v817[1] << 8) | *v817;
              }

              else
              {
                v818 = *v817;
              }

              v819 = v814 | (((v818 >> v816) & 0x3FFF) << 32);
              *(result + 24) = v819;
              v820 = *a3 + 50;
              v821 = v820 & 7;
              v822 = (a2 + (v820 >> 3));
              if (v821 > 2)
              {
                v823 = (v822[2] << 16) | (v822[1] << 8) | *v822;
              }

              else
              {
                v823 = *v822;
              }

              *(result + 24) = v819 | (((v823 >> v821) & 0x3FFF) << 48);
              v824 = *a3 & 7;
              v825 = (a2 + ((*a3 + 64) >> 3));
              if (v824 > 3)
              {
                v826 = (v825[2] << 16) | (v825[1] << 8) | *v825;
              }

              else
              {
                v826 = *v825;
              }

              v827 = *(result + 32) | (v826 >> v824) & 0x1FFF;
              *(result + 32) = v827;
              v828 = *a3 + 77;
              v829 = v828 & 7;
              v830 = (a2 + (v828 >> 3));
              if (v829 > 3)
              {
                v831 = (v830[2] << 16) | (v830[1] << 8) | *v830;
              }

              else
              {
                v831 = *v830;
              }

              v832 = v827 | (((v831 >> v829) & 0x1FFF) << 16);
              *(result + 32) = v832;
              v833 = *a3 + 90;
              v834 = v833 & 7;
              v835 = (a2 + (v833 >> 3));
              if (v834 > 3)
              {
                v836 = (v835[2] << 16) | (v835[1] << 8) | *v835;
              }

              else
              {
                v836 = *v835;
              }

              v837 = v832 | (((v836 >> v834) & 0x1FFF) << 32);
              *(result + 32) = v837;
              v838 = *a3 + 103;
              v839 = v838 & 7;
              v840 = (a2 + (v838 >> 3));
              if (v839 == 7)
              {
                v841 = *v840 >> 7;
              }

              else
              {
                v841 = ((v840[2] << 16) | (v840[1] << 8) | *v840) >> v839;
              }

              *(result + 32) = v837 | ((v841 & 0x3FFFF) << 45);
              v842 = *a3 + 121;
              v843 = v842 & 7;
              v844 = (a2 + (v842 >> 3));
              if (v843 == 7)
              {
                v845 = *v844 >> 7;
              }

              else
              {
                v845 = ((v844[2] << 16) | (v844[1] << 8) | *v844) >> v843;
              }

              v846 = *(result + 40) | v845 & 0x3FFFF;
              *(result + 40) = v846;
              v847 = (*a3 - 117) & 7;
              v848 = (a2 + ((*a3 + 139) >> 3));
              if (v847 == 7)
              {
                v849 = *v848 >> 7;
              }

              else
              {
                v849 = ((v848[2] << 16) | (v848[1] << 8) | *v848) >> v847;
              }

              *(result + 40) = v846 | ((v849 & 0x3FFFF) << 32);
              v25 = 157;
              break;
            default:
              *(result + 16) = 0;
              v92 = *a3 & 7;
              v93 = (a2 + ((*a3 + 8) >> 3));
              if (v92 == 7)
              {
                v94 = *v93 >> 7;
              }

              else
              {
                v94 = ((v93[2] << 16) | (v93[1] << 8) | *v93) >> v92;
              }

              v925 = *(result + 24) | v94 & 0x3FFFF;
              *(result + 24) = v925;
              v926 = *a3 + 26;
              v927 = v926 & 7;
              v928 = (a2 + (v926 >> 3));
              if (v927 == 7)
              {
                v929 = *v928 >> 7;
              }

              else
              {
                v929 = ((v928[2] << 16) | (v928[1] << 8) | *v928) >> v927;
              }

              v935 = v925 | ((v929 & 0x3FFFF) << 32);
              *(result + 24) = v935;
              v936 = *a3 + 44;
              v937 = v936 & 7;
              v938 = (a2 + (v936 >> 3));
              if (v937 > 2)
              {
                v939 = (v938[2] << 16) | (v938[1] << 8) | *v938;
              }

              else
              {
                v939 = *v938;
              }

              *(result + 24) = v935 | (((v939 >> v937) & 0x3FFF) << 50);
              v943 = *a3 + 58;
              v944 = v943 & 7;
              v945 = (a2 + (v943 >> 3));
              if (v944 > 3)
              {
                v946 = (v945[2] << 16) | (v945[1] << 8) | *v945;
              }

              else
              {
                v946 = *v945;
              }

              v952 = *(result + 32) | (v946 >> v944) & 0x1FFF;
              *(result + 32) = v952;
              v953 = *a3 + 71;
              v954 = v953 & 7;
              v955 = (a2 + (v953 >> 3));
              if (v954 > 2)
              {
                v956 = (v955[2] << 16) | (v955[1] << 8) | *v955;
              }

              else
              {
                v956 = *v955;
              }

              v960 = v952 | (((v956 >> v954) & 0x3FFF) << 16);
              *(result + 32) = v960;
              v961 = *a3 + 85;
              v962 = v961 & 7;
              v963 = (a2 + (v961 >> 3));
              if (v962 > 2)
              {
                v964 = (v963[2] << 16) | (v963[1] << 8) | *v963;
              }

              else
              {
                v964 = *v963;
              }

              v970 = v960 | (((v964 >> v962) & 0x3FFF) << 32);
              *(result + 32) = v970;
              v971 = *a3 + 99;
              v972 = v971 & 7;
              v973 = (a2 + (v971 >> 3));
              if (v972 > 2)
              {
                v974 = (v973[2] << 16) | (v973[1] << 8) | *v973;
              }

              else
              {
                v974 = *v973;
              }

              *(result + 32) = v970 | (((v974 >> v972) & 0x3FFF) << 48);
              v978 = *a3 + 113;
              v979 = v978 & 7;
              v980 = (a2 + (v978 >> 3));
              if (v979 > 2)
              {
                v981 = (v980[2] << 16) | (v980[1] << 8) | *v980;
              }

              else
              {
                v981 = *v980;
              }

              v986 = *(result + 40) | (v981 >> v979) & 0x3FFF;
              *(result + 40) = v986;
              v987 = *a3 + 127;
              v988 = v987 & 7;
              v989 = (a2 + (v987 >> 3));
              if (v988 > 2)
              {
                v990 = (v989[2] << 16) | (v989[1] << 8) | *v989;
              }

              else
              {
                v990 = *v989;
              }

              v994 = v986 | (((v990 >> v988) & 0x3FFF) << 16);
              *(result + 40) = v994;
              v995 = (*a3 - 115) & 7;
              v996 = (a2 + ((*a3 + 141) >> 3));
              if (v995 > 2)
              {
                v997 = (v996[2] << 16) | (v996[1] << 8) | *v996;
              }

              else
              {
                v997 = *v996;
              }

              v998 = v994 | (((v997 >> v995) & 0x3FFF) << 32);
              *(result + 40) = v998;
              *(result + 40) = v998 | (((*(a2 + ((*a3 + 155) >> 3)) >> ((*a3 - 101) & 7)) & 0x1FF) << 48);
              v999 = *(result + 48) | (*(a2 + ((*a3 + 164) >> 3)) >> ((*a3 - 92) & 7)) & 0x1FF;
              *(result + 48) = v999;
              v1000 = (*a3 - 83) & 7;
              v1001 = (a2 + ((*a3 + 173) >> 3));
              if (v1000 > 5)
              {
                v1002 = (v1001[2] << 16) | (v1001[1] << 8) | *v1001;
              }

              else
              {
                v1002 = *v1001;
              }

              v1003 = v999 | (((v1002 >> v1000) & 0x7FF) << 16);
              *(result + 48) = v1003;
              v1004 = *a3 & 7;
              v1005 = (a2 + ((*a3 + 184) >> 3));
              if (v1004 > 2)
              {
                v1006 = (v1005[2] << 16) | (v1005[1] << 8) | *v1005;
              }

              else
              {
                v1006 = *v1005;
              }

              v1007 = v1003 | (((v1006 >> v1004) & 0x3FFF) << 32);
              *(result + 48) = v1007;
              v1008 = (*a3 - 58) & 7;
              v1009 = (a2 + ((*a3 + 198) >> 3));
              if (v1008 > 2)
              {
                v1010 = (v1009[2] << 16) | (v1009[1] << 8) | *v1009;
              }

              else
              {
                v1010 = *v1009;
              }

              *(result + 48) = v1007 | (((v1010 >> v1008) & 0x3FFF) << 48);
              v1011 = (*a3 - 44) & 7;
              v1012 = (a2 + ((*a3 + 212) >> 3));
              if (v1011 > 2)
              {
                v1013 = (v1012[2] << 16) | (v1012[1] << 8) | *v1012;
              }

              else
              {
                v1013 = *v1012;
              }

              v1014 = *(result + 56) | (v1013 >> v1011) & 0x3FFF;
              *(result + 56) = v1014;
              v1015 = (*a3 - 30) & 7;
              v1016 = (a2 + ((*a3 + 226) >> 3));
              if (v1015 > 2)
              {
                v1017 = (v1016[2] << 16) | (v1016[1] << 8) | *v1016;
              }

              else
              {
                v1017 = *v1016;
              }

              v1018 = v1014 | (((v1017 >> v1015) & 0x3FFF) << 16);
              *(result + 56) = v1018;
              v1019 = *a3 & 7;
              v1020 = (a2 + ((*a3 + 240) >> 3));
              if (v1019 > 2)
              {
                v1021 = (v1020[2] << 16) | (v1020[1] << 8) | *v1020;
              }

              else
              {
                v1021 = *v1020;
              }

              v1022 = v1018 | (((v1021 >> v1019) & 0x3FFF) << 32);
              *(result + 56) = v1022;
              v1023 = (*a3 - 2) & 7;
              v1024 = (a2 + ((*a3 + 254) >> 3));
              if (v1023 > 2)
              {
                v1025 = (v1024[2] << 16) | (v1024[1] << 8) | *v1024;
              }

              else
              {
                v1025 = *v1024;
              }

              *(result + 56) = v1022 | (((v1025 >> v1023) & 0x3FFF) << 48);
              v1026 = *(result + 64) | (*(a2 + ((*a3 + 268) >> 3)) >> ((*a3 + 12) & 7)) & 0x1FF;
              *(result + 64) = v1026;
              v1027 = v1026 | (((*(a2 + ((*a3 + 277) >> 3)) >> ((*a3 + 21) & 7)) & 0x1FF) << 16);
              *(result + 64) = v1027;
              v1028 = *a3 + 286;
              v1029 = v1028 & 7;
              v1030 = (a2 + (v1028 >> 3));
              if (v1029 > 5)
              {
                v1031 = (v1030[2] << 16) | (v1030[1] << 8) | *v1030;
              }

              else
              {
                v1031 = *v1030;
              }

              *(result + 64) = v1027 | (((v1031 >> v1029) & 0x7FF) << 32);
              v25 = 297;
              break;
          }
        }

        goto LABEL_447;
      }

      if (v15)
      {
        *(result + 8) = 17;
        *result = 0x800000008;
        v52 = *a3 + 4;
        v53 = (a2 + (v52 >> 3));
        v54 = v52 & 7;
        if (v54)
        {
          LODWORD(v53) = *v53 >> v54;
        }

        else
        {
          LOBYTE(v53) = *v53;
        }

        *(result + 16) |= v53;
        v108 = *a3 + 12;
        v109 = v108 & 7;
        v110 = (a2 + (v108 >> 3));
        if (v109 == 7)
        {
          v111 = ((*v110 | (v110[1] << 8)) >> 7) & 3;
        }

        else
        {
          v111 = (*v110 >> v109) & 3;
        }

        if (v111 > 1)
        {
          if (v111 == 2)
          {
            *(result + 20) = 3;
            v116 = *(result + 24);
            if ((*(a2 + ((*a3 + 14) >> 3)) >> ((*a3 + 14) & 7)))
            {
              *(result + 24) = v116 | 1;
              v117 = *a3 + 15;
              v118 = v117 & 7;
              v119 = (a2 + (v117 >> 3));
              if (v118 > 4)
              {
                v120 = *v119;
              }

              else
              {
                v120 = *v119;
              }

              *(result + 25) |= (v120 >> v118) & 0xF;
              v292 = *a3 + 19;
              v293 = v292 & 7;
              v294 = (a2 + (v292 >> 3));
              if (v293 > 4)
              {
                v295 = *v294;
              }

              else
              {
                v295 = *v294;
              }

              *(result + 33) |= (v295 >> v293) & 0xF;
              v25 = 23;
            }

            else
            {
              *(result + 24) = v116 & 0xFE;
              v216 = *a3 + 15;
              v217 = v216 & 7;
              v218 = (a2 + (v216 >> 3));
              if (v217 > 4)
              {
                v219 = *v218;
              }

              else
              {
                v219 = *v218;
              }

              *(result + 25) |= (v219 >> v217) & 0xF;
              v296 = *a3 + 19;
              v297 = v296 & 7;
              v298 = (a2 + (v296 >> 3));
              if (v297 > 4)
              {
                v299 = *v298;
              }

              else
              {
                v299 = *v298;
              }

              *(result + 33) |= (v299 >> v297) & 0xF;
              v317 = *a3 + 23;
              v318 = v317 & 7;
              v319 = (a2 + (v317 >> 3));
              if (v318 > 4)
              {
                v320 = *v319;
              }

              else
              {
                v320 = *v319;
              }

              *(result + 26) |= (v320 >> v318) & 0xF;
              v334 = *a3 + 27;
              v335 = v334 & 7;
              v336 = (a2 + (v334 >> 3));
              if (v335 > 4)
              {
                v337 = *v336;
              }

              else
              {
                v337 = *v336;
              }

              *(result + 34) |= (v337 >> v335) & 0xF;
              v348 = *a3 + 31;
              v349 = v348 & 7;
              v350 = (a2 + (v348 >> 3));
              if (v349 > 4)
              {
                v351 = *v350;
              }

              else
              {
                v351 = *v350;
              }

              *(result + 27) |= (v351 >> v349) & 0xF;
              v356 = *a3 + 35;
              v357 = v356 & 7;
              v358 = (a2 + (v356 >> 3));
              if (v357 > 4)
              {
                v359 = *v358;
              }

              else
              {
                v359 = *v358;
              }

              *(result + 35) |= (v359 >> v357) & 0xF;
              v364 = *a3 + 39;
              v365 = v364 & 7;
              v366 = (a2 + (v364 >> 3));
              if (v365 > 4)
              {
                v367 = *v366;
              }

              else
              {
                v367 = *v366;
              }

              *(result + 28) |= (v367 >> v365) & 0xF;
              v372 = *a3 + 43;
              v373 = v372 & 7;
              v374 = (a2 + (v372 >> 3));
              if (v373 > 4)
              {
                v375 = *v374;
              }

              else
              {
                v375 = *v374;
              }

              *(result + 36) |= (v375 >> v373) & 0xF;
              v380 = *a3 + 47;
              v381 = v380 & 7;
              v382 = (a2 + (v380 >> 3));
              if (v381 > 4)
              {
                v383 = *v382;
              }

              else
              {
                v383 = *v382;
              }

              *(result + 29) |= (v383 >> v381) & 0xF;
              v388 = *a3 + 51;
              v389 = v388 & 7;
              v390 = (a2 + (v388 >> 3));
              if (v389 > 4)
              {
                v391 = *v390;
              }

              else
              {
                v391 = *v390;
              }

              *(result + 37) |= (v391 >> v389) & 0xF;
              v396 = *a3 + 55;
              v397 = v396 & 7;
              v398 = (a2 + (v396 >> 3));
              if (v397 > 4)
              {
                v399 = *v398;
              }

              else
              {
                v399 = *v398;
              }

              *(result + 30) |= (v399 >> v397) & 0xF;
              v404 = *a3 + 59;
              v405 = v404 & 7;
              v406 = (a2 + (v404 >> 3));
              if (v405 > 4)
              {
                v407 = *v406;
              }

              else
              {
                v407 = *v406;
              }

              *(result + 38) |= (v407 >> v405) & 0xF;
              v412 = *a3 + 63;
              v413 = v412 & 7;
              v414 = (a2 + (v412 >> 3));
              if (v413 > 4)
              {
                v415 = *v414;
              }

              else
              {
                v415 = *v414;
              }

              *(result + 31) |= (v415 >> v413) & 0xF;
              v420 = *a3 + 67;
              v421 = v420 & 7;
              v422 = (a2 + (v420 >> 3));
              if (v421 > 4)
              {
                v423 = *v422;
              }

              else
              {
                v423 = *v422;
              }

              *(result + 39) |= (v423 >> v421) & 0xF;
              v428 = *a3 + 71;
              v429 = v428 & 7;
              v430 = (a2 + (v428 >> 3));
              if (v429 > 4)
              {
                v431 = *v430;
              }

              else
              {
                v431 = *v430;
              }

              *(result + 32) |= (v431 >> v429) & 0xF;
              v436 = *a3 + 75;
              v437 = v436 & 7;
              v438 = (a2 + (v436 >> 3));
              if (v437 > 4)
              {
                v439 = *v438;
              }

              else
              {
                v439 = *v438;
              }

              *(result + 40) |= (v439 >> v437) & 0xF;
              v25 = 79;
            }
          }

          else
          {
            *(result + 20) = 2;
            v146 = *a3 + 14;
            v147 = v146 & 7;
            v148 = (a2 + (v146 >> 3));
            if (v147 == 7)
            {
              v149 = (((v148[2] << 16) | (v148[1] << 8) | *v148) >> 7) & 0x3FF;
            }

            else
            {
              v149 = (*v148 >> v147) & 0x3FF;
            }

            v220 = *(result + 24) | v149;
            *(result + 24) = v220;
            v221 = *a3 & 7;
            v222 = (a2 + ((*a3 + 24) >> 3));
            if (v221 == 7)
            {
              v223 = (((v222[2] << 16) | (v222[1] << 8) | *v222) >> 7) & 0x3FF;
            }

            else
            {
              v223 = (*v222 >> v221) & 0x3FF;
            }

            *(result + 24) = v220 | (v223 << 16);
            v229 = *a3 + 34;
            v230 = v229 & 7;
            v231 = (a2 + (v229 >> 3));
            if (v230 > 5)
            {
              v232 = (v231[2] << 16) | (v231[1] << 8) | *v231;
            }

            else
            {
              v232 = *v231;
            }

            *(result + 28) |= (v232 >> v230) & 0x7FF;
            v237 = *(result + 30);
            if ((*(a2 + ((*a3 + 45) >> 3)) >> ((*a3 + 45) & 7)))
            {
              *(result + 30) = v237 | 1;
              v238 = *a3 + 46;
              v239 = v238 & 7;
              v240 = (a2 + (v238 >> 3));
              if (v239 > 4)
              {
                v241 = *v240;
              }

              else
              {
                v241 = *v240;
              }

              *(result + 31) |= (v241 >> v239) & 0xF;
              v304 = *a3 + 50;
              v305 = v304 & 7;
              v306 = (a2 + (v304 >> 3));
              if (v305 > 4)
              {
                v307 = *v306;
              }

              else
              {
                v307 = *v306;
              }

              *(result + 39) |= (v307 >> v305) & 0xF;
              v25 = 54;
            }

            else
            {
              *(result + 30) = v237 & 0xFE;
              v246 = *a3 + 46;
              v247 = v246 & 7;
              v248 = (a2 + (v246 >> 3));
              if (v247 > 4)
              {
                v249 = *v248;
              }

              else
              {
                v249 = *v248;
              }

              *(result + 31) |= (v249 >> v247) & 0xF;
              v308 = *a3 + 50;
              v309 = v308 & 7;
              v310 = (a2 + (v308 >> 3));
              if (v309 > 4)
              {
                v311 = *v310;
              }

              else
              {
                v311 = *v310;
              }

              *(result + 39) |= (v311 >> v309) & 0xF;
              v326 = *a3 + 54;
              v327 = v326 & 7;
              v328 = (a2 + (v326 >> 3));
              if (v327 > 4)
              {
                v329 = *v328;
              }

              else
              {
                v329 = *v328;
              }

              *(result + 32) |= (v329 >> v327) & 0xF;
              v341 = *a3 + 58;
              v342 = v341 & 7;
              v343 = (a2 + (v341 >> 3));
              if (v342 > 4)
              {
                v344 = *v343;
              }

              else
              {
                v344 = *v343;
              }

              *(result + 40) |= (v344 >> v342) & 0xF;
              v352 = *a3 + 62;
              v353 = v352 & 7;
              v354 = (a2 + (v352 >> 3));
              if (v353 > 4)
              {
                v355 = *v354;
              }

              else
              {
                v355 = *v354;
              }

              *(result + 33) |= (v355 >> v353) & 0xF;
              v360 = *a3 + 66;
              v361 = v360 & 7;
              v362 = (a2 + (v360 >> 3));
              if (v361 > 4)
              {
                v363 = *v362;
              }

              else
              {
                v363 = *v362;
              }

              *(result + 41) |= (v363 >> v361) & 0xF;
              v368 = *a3 + 70;
              v369 = v368 & 7;
              v370 = (a2 + (v368 >> 3));
              if (v369 > 4)
              {
                v371 = *v370;
              }

              else
              {
                v371 = *v370;
              }

              *(result + 34) |= (v371 >> v369) & 0xF;
              v376 = *a3 + 74;
              v377 = v376 & 7;
              v378 = (a2 + (v376 >> 3));
              if (v377 > 4)
              {
                v379 = *v378;
              }

              else
              {
                v379 = *v378;
              }

              *(result + 42) |= (v379 >> v377) & 0xF;
              v384 = *a3 + 78;
              v385 = v384 & 7;
              v386 = (a2 + (v384 >> 3));
              if (v385 > 4)
              {
                v387 = *v386;
              }

              else
              {
                v387 = *v386;
              }

              *(result + 35) |= (v387 >> v385) & 0xF;
              v392 = *a3 + 82;
              v393 = v392 & 7;
              v394 = (a2 + (v392 >> 3));
              if (v393 > 4)
              {
                v395 = *v394;
              }

              else
              {
                v395 = *v394;
              }

              *(result + 43) |= (v395 >> v393) & 0xF;
              v400 = *a3 + 86;
              v401 = v400 & 7;
              v402 = (a2 + (v400 >> 3));
              if (v401 > 4)
              {
                v403 = *v402;
              }

              else
              {
                v403 = *v402;
              }

              *(result + 36) |= (v403 >> v401) & 0xF;
              v408 = *a3 + 90;
              v409 = v408 & 7;
              v410 = (a2 + (v408 >> 3));
              if (v409 > 4)
              {
                v411 = *v410;
              }

              else
              {
                v411 = *v410;
              }

              *(result + 44) |= (v411 >> v409) & 0xF;
              v416 = *a3 + 94;
              v417 = v416 & 7;
              v418 = (a2 + (v416 >> 3));
              if (v417 > 4)
              {
                v419 = *v418;
              }

              else
              {
                v419 = *v418;
              }

              *(result + 37) |= (v419 >> v417) & 0xF;
              v424 = *a3 + 98;
              v425 = v424 & 7;
              v426 = (a2 + (v424 >> 3));
              if (v425 > 4)
              {
                v427 = *v426;
              }

              else
              {
                v427 = *v426;
              }

              *(result + 45) |= (v427 >> v425) & 0xF;
              v432 = *a3 + 102;
              v433 = v432 & 7;
              v434 = (a2 + (v432 >> 3));
              if (v433 > 4)
              {
                v435 = *v434;
              }

              else
              {
                v435 = *v434;
              }

              *(result + 38) |= (v435 >> v433) & 0xF;
              v440 = *a3 + 106;
              v441 = v440 & 7;
              v442 = (a2 + (v440 >> 3));
              if (v441 > 4)
              {
                v443 = *v442;
              }

              else
              {
                v443 = *v442;
              }

              *(result + 46) |= (v443 >> v441) & 0xF;
              v25 = 110;
            }
          }
        }

        else if (v111)
        {
          *(result + 20) = 0;
          v142 = *a3 + 14;
          v143 = (a2 + (v142 >> 3));
          v144 = v142 & 7;
          if (v144)
          {
            v145 = ((*v143 | (*(v143 + 1) << 8)) >> v144);
          }

          else
          {
            v145 = *v143;
          }

          v250 = *(result + 24) | v145;
          *(result + 24) = v250;
          v251 = *a3 + 46;
          v252 = (a2 + (v251 >> 3));
          v253 = v251 & 7;
          if (v253)
          {
            v254 = ((*v252 | (*(v252 + 1) << 8)) >> v253);
          }

          else
          {
            v254 = *v252;
          }

          *(result + 24) = v250 | (v254 << 32);
          v255 = *a3 + 78;
          v256 = (a2 + (v255 >> 3));
          v257 = v255 & 7;
          if (v257)
          {
            v258 = (*v256 | (*(v256 + 1) << 8)) >> v257;
          }

          else
          {
            LODWORD(v258) = *v256;
          }

          *(result + 32) |= v258;
          if ((*(a2 + ((*a3 + 110) >> 3)) >> ((*a3 + 110) & 7)))
          {
            *(result + 36) = 1;
            v259 = *a3 + 111;
            v260 = v259 & 7;
            v261 = (a2 + (v259 >> 3));
            if (v260 > 3)
            {
              v262 = *v261;
            }

            else
            {
              v262 = *v261;
            }

            v312 = *(result + 40) | (v262 >> v260) & 0x1F;
            *(result + 40) = v312;
            v313 = *a3 + 116;
            v314 = v313 & 7;
            v315 = (a2 + (v313 >> 3));
            if (v314 > 4)
            {
              v316 = (v315[2] << 16) | (v315[1] << 8) | *v315;
            }

            else
            {
              v316 = *v315;
            }

            v330 = v312 | (((v316 >> v314) & 0xFFF) << 16);
            *(result + 40) = v330;
            v331 = *a3 & 7;
            v332 = (a2 + ((*a3 + 128) >> 3));
            if (v331 > 4)
            {
              v333 = *v332;
            }

            else
            {
              v333 = *v332;
            }

            *(result + 40) = v330 | (v333 >> v331 << 28);
            v345 = (*a3 - 124) & 7;
            v346 = (a2 + ((*a3 + 132) >> 3));
            if (v345 > 4)
            {
              v347 = *v346;
            }

            else
            {
              v347 = *v346;
            }

            *(result + 44) |= (v347 >> v345) & 0xF;
            v25 = 136;
          }

          else
          {
            *(result + 36) = 0;
            v263 = *a3 + 111;
            v264 = v263 & 7;
            v265 = (a2 + (v263 >> 3));
            if (v264 > 3)
            {
              v266 = *v265;
            }

            else
            {
              v266 = *v265;
            }

            *(result + 40) |= (v266 >> v264) & 0x1F;
            v25 = 116;
          }
        }

        else
        {
          *(result + 20) = 1;
          v112 = *a3 + 14;
          v113 = v112 & 7;
          v114 = (a2 + (v112 >> 3));
          if (v113 > 4)
          {
            v115 = *v114;
          }

          else
          {
            v115 = *v114;
          }

          v211 = *(result + 24) | (v115 >> v113) & 0xF;
          *(result + 24) = v211;
          v212 = *a3 + 18;
          v213 = v212 & 7;
          v214 = (a2 + (v212 >> 3));
          if (v213 > 4)
          {
            v215 = *v214;
          }

          else
          {
            v215 = *v214;
          }

          v224 = (16 * ((v215 >> v213) & 0xF)) | v211;
          *(result + 24) = v224;
          v225 = *a3 + 22;
          v226 = v225 & 7;
          v227 = (a2 + (v225 >> 3));
          if (v226 > 4)
          {
            v228 = *v227;
          }

          else
          {
            v228 = *v227;
          }

          *(result + 24) = (((v228 >> v226) & 0xF) << 8) | v224;
          if ((*(a2 + ((*a3 + 26) >> 3)) >> ((*a3 + 26) & 7)))
          {
            *(result + 28) = 1;
            v233 = *a3 + 27;
            v234 = v233 & 7;
            v235 = (a2 + (v233 >> 3));
            if (v234 > 3)
            {
              v236 = *v235;
            }

            else
            {
              v236 = *v235;
            }

            v300 = *(result + 32) | (v236 >> v234) & 0x1F;
            *(result + 32) = v300;
            v301 = *a3 & 7;
            v302 = (a2 + ((*a3 + 32) >> 3));
            if (v301 > 4)
            {
              v303 = (v302[2] << 16) | (v302[1] << 8) | *v302;
            }

            else
            {
              v303 = *v302;
            }

            v321 = v300 | (((v303 >> v301) & 0xFFF) << 16);
            *(result + 32) = v321;
            v322 = *a3 + 44;
            v323 = v322 & 7;
            v324 = (a2 + (v322 >> 3));
            if (v323 > 4)
            {
              v325 = *v324;
            }

            else
            {
              v325 = *v324;
            }

            *(result + 32) = v321 | (v325 >> v323 << 28);
            v338 = *a3 & 7;
            v339 = (a2 + ((*a3 + 48) >> 3));
            if (v338 > 4)
            {
              v340 = *v339;
            }

            else
            {
              v340 = *v339;
            }

            *(result + 36) |= (v340 >> v338) & 0xF;
            v25 = 52;
          }

          else
          {
            *(result + 28) = 0;
            v242 = *a3 + 27;
            v243 = v242 & 7;
            v244 = (a2 + (v242 >> 3));
            if (v243 > 3)
            {
              v245 = *v244;
            }

            else
            {
              v245 = *v244;
            }

            *(result + 32) |= (v245 >> v243) & 0x1F;
            v25 = 32;
          }
        }

        goto LABEL_447;
      }

      *(result + 8) = 8;
      *result = 0x700000007;
      v22 = *a3 + 4;
      v23 = (a2 + (v22 >> 3));
      v24 = v22 & 7;
      if (v24)
      {
        LODWORD(v23) = *v23 >> v24;
      }

      else
      {
        LOBYTE(v23) = *v23;
      }

      *(result + 16) |= v23;
      if ((*(a2 + ((*a3 + 12) >> 3)) >> ((*a3 + 12) & 7)))
      {
        *(result + 20) = 1;
        v95 = *a3 + 13;
        v96 = v95 & 7;
        v97 = (a2 + (v95 >> 3));
        if (v96 > 3)
        {
          v98 = *v97;
        }

        else
        {
          v98 = *v97;
        }

        v137 = *(result + 24) | (v98 >> v96) & 0x1F;
        *(result + 24) = v137;
        v138 = *a3 + 18;
        v139 = v138 & 7;
        v140 = (a2 + (v138 >> 3));
        if (v139 == 7)
        {
          v141 = (*(v140 + 3) << 24) | (v140[2] << 16);
        }

        else
        {
          v141 = *(v140 + 2) << 16;
        }

        *(result + 24) = ((((v141 | (v140[1] << 8) | *v140) >> v139) & 0x3FFFFFFFFFFLL) << 6) | v137;
        v25 = 60;
        goto LABEL_447;
      }

      *(result + 20) = 0;
      v99 = *a3 + 13;
      v100 = v99 & 7;
      v101 = (a2 + (v99 >> 3));
      if (v100 > 3)
      {
        v102 = *v101;
      }

      else
      {
        v102 = *v101;
      }

      *(result + 24) |= (v102 >> v100) & 0x1F;
      goto LABEL_67;
    }

    v19 = (v4 + 2) & 7;
    v20 = (a2 + ((v4 + 2) >> 3));
    if (v19 == 7)
    {
      v21 = ((*v20 | (v20[1] << 8)) >> 7) & 3;
    }

    else
    {
      v21 = (*v20 >> v19) & 3;
    }

    if (v21 <= 1)
    {
      if (v21)
      {
        v59 = v4 + 4;
        v60 = (v4 + 4) & 7;
        v61 = (a2 + (v59 >> 3));
        if (v60 == 7)
        {
          v62 = ((*v61 | (v61[1] << 8)) >> 7) & 3;
        }

        else
        {
          v62 = (*v61 >> v60) & 3;
        }

        if (v62 == 1)
        {
          *(result + 8) = 1;
          v91 = 0xE0000000ELL;
        }

        else
        {
          if (v62)
          {
            goto LABEL_92;
          }

          *(result + 8) = 1;
          v91 = 0xD0000000DLL;
        }

        *result = v91;
        v129 = *a3 + 6;
        v130 = v129 & 7;
        v131 = (a2 + (v129 >> 3));
        if (v130 == 7)
        {
          v132 = *v131 >> 7;
        }

        else
        {
          v132 = *v131 >> v130;
        }

        *(result + 16) |= v132 & 3;
        v25 = 8;
        goto LABEL_447;
      }

      v26 = v4 + 4;
      v27 = (v4 + 4) & 7;
      v28 = (a2 + (v26 >> 3));
      if (v27 == 7)
      {
        v29 = ((*v28 | (v28[1] << 8)) >> 7) & 3;
      }

      else
      {
        v29 = (*v28 >> v27) & 3;
      }

      if (v29 == 1)
      {
        *(result + 8) = 3;
        *result = 0xC0000000CLL;
        v121 = *a3 + 6;
        v122 = v121 & 7;
        v123 = (a2 + (v121 >> 3));
        if (v122 > 5)
        {
          v124 = *v123;
        }

        else
        {
          v124 = *v123;
        }

        *(result + 16) = (v124 >> v122) & 7;
        v163 = *(result + 20) & 0xFFFE | (*(a2 + ((*a3 + 9) >> 3)) >> ((*a3 + 9) & 7)) & 1;
        *(result + 20) = v163;
        v164 = v163 & 0xFFFD;
        if ((*(a2 + ((*a3 + 10) >> 3)) >> ((*a3 + 10) & 7)))
        {
          v165 = 2;
        }

        else
        {
          v165 = 0;
        }

        v166 = v164 | v165;
        *(result + 20) = v166;
        v167 = v166 & 0xFFFB;
        if ((*(a2 + ((*a3 + 11) >> 3)) >> ((*a3 + 11) & 7)))
        {
          v168 = 4;
        }

        else
        {
          v168 = 0;
        }

        v169 = v167 | v168;
        *(result + 20) = v169;
        v170 = v169 & 0xFFF7;
        if ((*(a2 + ((*a3 + 12) >> 3)) >> ((*a3 + 12) & 7)))
        {
          v171 = 8;
        }

        else
        {
          v171 = 0;
        }

        v172 = v170 | v171;
        *(result + 20) = v172;
        v173 = v172 & 0xFFEF;
        if ((*(a2 + ((*a3 + 13) >> 3)) >> ((*a3 + 13) & 7)))
        {
          v174 = 16;
        }

        else
        {
          v174 = 0;
        }

        v175 = v173 | v174;
        *(result + 20) = v175;
        v176 = v175 & 0xFFDF;
        if ((*(a2 + ((*a3 + 14) >> 3)) >> ((*a3 + 14) & 7)))
        {
          v177 = 32;
        }

        else
        {
          v177 = 0;
        }

        v178 = v176 | v177;
        *(result + 20) = v178;
        v179 = v178 & 0xFFBF;
        if ((*(a2 + ((*a3 + 15) >> 3)) >> ((*a3 + 15) & 7)))
        {
          v180 = 64;
        }

        else
        {
          v180 = 0;
        }

        v181 = v179 | v180;
        *(result + 20) = v181;
        v182 = v181 & 0xFF7F;
        if ((*(a2 + ((*a3 + 17) >> 3)) >> ((*a3 + 17) & 7)))
        {
          v183 = 128;
        }

        else
        {
          v183 = 0;
        }

        v184 = v182 | v183;
        *(result + 20) = v184;
        v185 = v184 & 0xFEFF;
        if ((*(a2 + ((*a3 + 18) >> 3)) >> ((*a3 + 18) & 7)))
        {
          v186 = 256;
        }

        else
        {
          v186 = 0;
        }

        v187 = v185 | v186;
        *(result + 20) = v187;
        v188 = v187 & 0xFDFF;
        if ((*(a2 + ((*a3 + 19) >> 3)) >> ((*a3 + 19) & 7)))
        {
          v189 = 512;
        }

        else
        {
          v189 = 0;
        }

        v190 = v188 | v189;
        *(result + 20) = v190;
        v191 = v190 & 0xFBFF;
        if ((*(a2 + ((*a3 + 20) >> 3)) >> ((*a3 + 20) & 7)))
        {
          v192 = 1024;
        }

        else
        {
          v192 = 0;
        }

        v193 = v191 | v192;
        *(result + 20) = v193;
        if ((*(a2 + ((*a3 + 21) >> 3)) >> ((*a3 + 21) & 7)))
        {
          v194 = v193 | 0x800;
        }

        else
        {
          v194 = v193 & 0xF7FF;
        }

        *(result + 20) = v194;
        v25 = 22;
        goto LABEL_447;
      }

      if (v29)
      {
LABEL_92:
        *a4 = 0;
        return result;
      }

      *(result + 8) = 10;
      *result = 0xB0000000BLL;
      v75 = *a3;
      v76 = *a3 + 9;
      v77 = (a2 + (v76 >> 3));
      v78 = v76 & 7;
      if (v78)
      {
        v79 = (*v77 >> v78) & 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        v79 = (*(v77 + 3) << 24) | (v77[2] << 16) | (v77[1] << 8) | *v77;
      }

      v202 = v75 + 65;
      v203 = (a2 + ((v75 + 65) >> 3));
      v204 = v202 & 7;
      if (v204)
      {
        v205 = (*v203 >> v204);
      }

      else
      {
        v205 = *v203;
      }

      *(result + 24) |= v79 | (v205 << 56);
      v206 = *a3 + 6;
      v207 = v206 & 7;
      v208 = (a2 + (v206 >> 3));
      if (v207 > 5)
      {
        v209 = *v208;
      }

      else
      {
        v209 = *v208;
      }

      v210 = (v209 >> v207) & 7;
      if (v210 > 3)
      {
        if (v210 > 5)
        {
          if (v210 != 6)
          {
            LODWORD(v210) = 7;
          }
        }

        else if (v210 != 4)
        {
          LODWORD(v210) = 5;
        }
      }

      else if (v210 > 1)
      {
        if (v210 != 2)
        {
          LODWORD(v210) = 3;
        }
      }

      else
      {
        if (!v210)
        {
          *(result + 16) = 0;
LABEL_446:
          v25 = 73;
          goto LABEL_447;
        }

        LODWORD(v210) = 1;
      }

      *(result + 16) = v210;
      goto LABEL_446;
    }

    if (v21 != 2)
    {
      v70 = v4 + 4;
      v71 = (v4 + 4) & 7;
      v72 = (a2 + (v70 >> 3));
      if (v71 == 7)
      {
        if ((((*v72 | (v72[1] << 8)) >> 7) & 3) != 0)
        {
          goto LABEL_92;
        }
      }

      else if (((*v72 >> v71) & 3) != 0)
      {
        goto LABEL_92;
      }

      *(result + 8) = 1;
      *result = 0x1000000010;
      v25 = 6;
      goto LABEL_447;
    }

    v38 = v4 + 4;
    v39 = (v4 + 4) & 7;
    v40 = (a2 + (v38 >> 3));
    if (v39 == 7)
    {
      if ((((*v40 | (v40[1] << 8)) >> 7) & 3) != 0)
      {
        goto LABEL_92;
      }
    }

    else if (((*v40 >> v39) & 3) != 0)
    {
      goto LABEL_92;
    }

    *(result + 8) = 3;
    *result = 0xF0000000FLL;
    v83 = *a3 + 6;
    v84 = v83 & 7;
    v85 = (a2 + (v83 >> 3));
    if (v84 > 1)
    {
      v86 = *v85;
    }

    else
    {
      v86 = *v85;
    }

    *(result + 24) |= (v86 >> v84) & 0x7F;
    v155 = *a3 + 13;
    v156 = v155 & 7;
    v157 = (a2 + (v155 >> 3));
    if (v156 > 5)
    {
      v158 = *v157;
    }

    else
    {
      v158 = *v157;
    }

    *(result + 20) = (v158 >> v156) & 7;
    v159 = *a3 & 7;
    v160 = (a2 + ((*a3 + 16) >> 3));
    if (v159 > 5)
    {
      v161 = *v160;
    }

    else
    {
      v161 = *v160;
    }

    v162 = (v161 >> v159) & 7;
    if (v162 > 3)
    {
      if (v162 > 5)
      {
        if (v162 != 6)
        {
          LODWORD(v162) = 7;
        }
      }

      else if (v162 != 4)
      {
        LODWORD(v162) = 5;
      }
    }

    else if (v162 > 1)
    {
      if (v162 != 2)
      {
        LODWORD(v162) = 3;
      }
    }

    else
    {
      if (!v162)
      {
        *(result + 16) = 0;
LABEL_443:
        v25 = 19;
        goto LABEL_447;
      }

      LODWORD(v162) = 1;
    }

    *(result + 16) = v162;
    goto LABEL_443;
  }

  if (!v7)
  {
    *(result + 8) = 3;
    *result = 0;
    v8 = *a3 + 2;
    v9 = (a2 + (v8 >> 3));
    v10 = v8 & 7;
    if (v10)
    {
      v11 = (*v9 >> v10);
    }

    else
    {
      v11 = *v9;
    }

    v41 = *(result + 16) | v11;
    *(result + 16) = v41;
    v42 = *a3;
    if ((*(a2 + ((*a3 + 10) >> 3)) >> ((*a3 + 10) & 7)))
    {
      v43 = v42 + 11;
      v44 = (v42 + 11) & 7;
      v45 = (a2 + (v43 >> 3));
      if (v44 > 2)
      {
        v46 = *v45;
      }

      else
      {
        v46 = *v45;
      }

      v73 = (((v46 >> v44) & 0x3F) << 8) | v41;
      *(result + 16) = v73;
      if ((*(a2 + ((*a3 + 17) >> 3)) >> ((*a3 + 17) & 7)))
      {
        v74 = v73 | 0x4000;
      }

      else
      {
        v74 = v73 & 0xBFFF;
      }

      *(result + 16) = v74;
LABEL_67:
      v25 = 18;
      goto LABEL_447;
    }

    v47 = v41 & 0xBFFF;
    *(result + 16) = v47;
    v48 = *a3 + 11;
    v49 = v48 & 7;
    v50 = (a2 + (v48 >> 3));
    if (v49 > 4)
    {
      v51 = *v50;
    }

    else
    {
      v51 = *v50;
    }

    *(result + 16) = (((v51 >> v49) & 0xF) << 8) | v47;
    goto LABEL_64;
  }

  v16 = (v4 + 2) & 7;
  v17 = (a2 + ((v4 + 2) >> 3));
  if (v16 == 7)
  {
    v18 = ((*v17 | (v17[1] << 8)) >> 7) & 3;
  }

  else
  {
    v18 = (*v17 >> v16) & 3;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(result + 8) = 2;
      *result = 0x600000006;
      v67 = *a3 + 4;
      v68 = (a2 + (v67 >> 3));
      v69 = v67 & 7;
      if (v69)
      {
        LODWORD(v68) = *v68 >> v69;
      }

      else
      {
        LOBYTE(v68) = *v68;
      }

      *(result + 16) |= v68;
      v25 = 12;
      goto LABEL_447;
    }

    *(result + 8) = 2;
    *result = 0x500000005;
    if ((*(a2 + ((*a3 + 4) >> 3)) >> ((*a3 + 4) & 7)))
    {
      *(result + 16) = 1;
      v34 = *a3 + 5;
      v35 = v34 & 7;
      v36 = (a2 + (v34 >> 3));
      if (v35 > 5)
      {
        v37 = *v36;
      }

      else
      {
        v37 = *v36;
      }

      v133 = *(result + 20) | (v37 >> v35) & 7;
      *(result + 20) = v133;
      v134 = *a3 & 7;
      v135 = (a2 + ((*a3 + 8) >> 3));
      if (v134 > 1)
      {
        v136 = *v135;
      }

      else
      {
        v136 = *v135;
      }

      *(result + 20) = (((v136 >> v134) & 0x7F) << 8) | v133;
LABEL_64:
      v25 = 15;
      goto LABEL_447;
    }

    *(result + 16) = 0;
    v80 = *a3 + 5;
    v81 = (a2 + (v80 >> 3));
    v82 = v80 & 7;
    if (v82)
    {
      LODWORD(v81) = *v81 >> v82;
    }

    else
    {
      LOBYTE(v81) = *v81;
    }

    *(result + 20) |= v81;
    v150 = *a3 + 13;
    v151 = v150 & 7;
    v152 = (a2 + (v150 >> 3));
    if (v151 > 5)
    {
      v153 = *v152;
    }

    else
    {
      v153 = *v152;
    }

    v154 = (v153 >> v151) & 7;
    if (v154 > 3)
    {
      if (v154 > 5)
      {
        if (v154 != 6)
        {
          LODWORD(v154) = 7;
        }
      }

      else if (v154 != 4)
      {
        LODWORD(v154) = 5;
      }
    }

    else if (v154 > 1)
    {
      if (v154 != 2)
      {
        LODWORD(v154) = 3;
      }
    }

    else
    {
      if (!v154)
      {
        *(result + 24) = 0;
LABEL_297:
        v25 = 16;
        goto LABEL_447;
      }

      LODWORD(v154) = 1;
    }

    *(result + 24) = v154;
    goto LABEL_297;
  }

  if (v18)
  {
    v55 = v4 + 4;
    v56 = (v4 + 4) & 7;
    v57 = (a2 + (v55 >> 3));
    if (v56 == 7)
    {
      v58 = ((*v57 | (v57[1] << 8)) >> 7) & 3;
    }

    else
    {
      v58 = (*v57 >> v56) & 3;
    }

    if (v58 == 1)
    {
      *(result + 8) = 11;
      *result = 0x300000003;
      v125 = *a3 + 26;
      v126 = v125 & 7;
      v127 = (a2 + (v125 >> 3));
      if (v126 > 2)
      {
        v128 = *v127;
      }

      else
      {
        v128 = (*(v127 + 3) << 24) | (v127[2] << 16) | (v127[1] << 8) | *v127;
      }

      *(result + 24) |= (v128 >> v126) & 0x3FFFFFFFFFFFFFLL;
      v195 = *a3 & 7;
      v196 = (a2 + ((*a3 + 80) >> 3));
      if (v195 > 5)
      {
        v197 = *v196;
      }

      else
      {
        v197 = *v196;
      }

      *(result + 32) |= (v197 >> v195) & 7;
      v198 = *a3 + 6;
      v199 = v198 & 7;
      v200 = (a2 + (v198 >> 3));
      if (v199 > 4)
      {
        v201 = *v200;
      }

      else
      {
        v201 = (v200[2] << 16) | (v200[1] << 8) | *v200;
      }

      *(result + 16) |= (v201 >> v199) & 0xFFFFF;
      v25 = 83;
      goto LABEL_447;
    }

    if (!v58)
    {
      *(result + 8) = 4;
      *result = 0x200000002;
      v87 = *a3 + 6;
      v88 = v87 & 7;
      v89 = (a2 + (v87 >> 3));
      if (v88 > 4)
      {
        v90 = *v89;
      }

      else
      {
        v90 = (v89[2] << 16) | (v89[1] << 8) | *v89;
      }

      *(result + 16) |= (v90 >> v88) & 0xFFFFF;
      v25 = 26;
      goto LABEL_447;
    }

    goto LABEL_92;
  }

  *(result + 8) = 1;
  *result = 0x100000001;
  v25 = 4;
LABEL_447:
  *a3 += v25;
  return result;
}