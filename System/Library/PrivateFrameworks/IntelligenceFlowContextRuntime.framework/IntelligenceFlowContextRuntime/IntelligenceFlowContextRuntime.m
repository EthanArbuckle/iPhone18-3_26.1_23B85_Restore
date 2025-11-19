int main(int argc, const char **argv, const char **envp)
{
  sub_100000D04();
  sub_100000C9C();
  sub_100000CF4();
  return 0;
}

unint64_t sub_100000C9C()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    sub_100000D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}